---
title: "Reference: protocol.sync.v1"
---
## Message Types 

### <span class="codicon codicon-symbol-structure symbol-structure"></span>AuthData
Authentication data that will be sent in a `harmonytypes.v1.Token`.

#### Fields


##### <span class="codicon codicon-symbol-field symbol-field"></span>server_id (optional  `string`)
The server ID of the server initiating the transaction. For Pull,
this tells the server being connected to which homeservers' events it should send.
For Push, this tells the server being connected to which homeservers' events it is
receiving.
##### <span class="codicon codicon-symbol-field symbol-field"></span>time (optional  `uint64`)
The UTC UNIX time in seconds of when the request is started. Servers should reject
tokens with a time too far from the current time, at their discretion. A recommended
variance is 1 minute.

### <span class="codicon codicon-symbol-structure symbol-structure"></span>Event
Object representing a postbox event.

#### Fields


##### <span class="codicon codicon-symbol-field symbol-field"></span>user_removed_from_guild (optional  [protocol.sync.v1.Event.UserRemovedFromGuild](#eventuserremovedfromguild))
User removed from a guild.
##### <span class="codicon codicon-symbol-field symbol-field"></span>user_added_to_guild (optional  [protocol.sync.v1.Event.UserAddedToGuild](#eventuseraddedtoguild))
User added to a guild.
##### <span class="codicon codicon-symbol-field symbol-field"></span>user_invited (optional  [protocol.sync.v1.Event.UserInvited](#eventuserinvited))
User invited to a guild.
##### <span class="codicon codicon-symbol-field symbol-field"></span>user_rejected_invite (optional  [protocol.sync.v1.Event.UserRejectedInvite](#eventuserrejectedinvite))
User rejected a guild invitation.

### <span class="codicon codicon-symbol-structure symbol-structure"></span>Event.UserRemovedFromGuild


#### Fields


##### <span class="codicon codicon-symbol-field symbol-field"></span>user_id (optional  `uint64`)

##### <span class="codicon codicon-symbol-field symbol-field"></span>guild_id (optional  `uint64`)


### <span class="codicon codicon-symbol-structure symbol-structure"></span>Event.UserAddedToGuild


#### Fields


##### <span class="codicon codicon-symbol-field symbol-field"></span>user_id (optional  `uint64`)

##### <span class="codicon codicon-symbol-field symbol-field"></span>guild_id (optional  `uint64`)


### <span class="codicon codicon-symbol-structure symbol-structure"></span>Event.UserInvited


#### Fields


##### <span class="codicon codicon-symbol-field symbol-field"></span>user_id (optional  `uint64`)

##### <span class="codicon codicon-symbol-field symbol-field"></span>inviter_id (optional  `uint64`)

##### <span class="codicon codicon-symbol-field symbol-field"></span>invite_id (optional  `string`)


### <span class="codicon codicon-symbol-structure symbol-structure"></span>Event.UserRejectedInvite


#### Fields


##### <span class="codicon codicon-symbol-field symbol-field"></span>guild_id (optional  `uint64`)

##### <span class="codicon codicon-symbol-field symbol-field"></span>user_id (optional  `uint64`)

##### <span class="codicon codicon-symbol-field symbol-field"></span>invite_id (optional  `string`)


### <span class="codicon codicon-symbol-structure symbol-structure"></span>PullRequest
Used in `Pull` endpoint.

This item has no fields.

### <span class="codicon codicon-symbol-structure symbol-structure"></span>PullResponse
Used in `Pull` endpoint.

#### Fields


##### <span class="codicon codicon-symbol-field symbol-field"></span>event_queue (repeated  [protocol.sync.v1.Event](#event))
The events that were not processed yet.

### <span class="codicon codicon-symbol-structure symbol-structure"></span>PushRequest
Used in `Push` endpoint.

#### Fields


##### <span class="codicon codicon-symbol-field symbol-field"></span>event (optional  [protocol.sync.v1.Event](#event))
The event to push to the server.

### <span class="codicon codicon-symbol-structure symbol-structure"></span>PushResponse
Used in `Push` endpoint.

This item has no fields.

### <span class="codicon codicon-symbol-structure symbol-structure"></span>NotifyNewIdRequest
Used in `NotifyNewId` endpoint.

#### Fields


##### <span class="codicon codicon-symbol-field symbol-field"></span>new_server_id (optional  `string`)
The new server ID of the server.

### <span class="codicon codicon-symbol-structure symbol-structure"></span>NotifyNewIdResponse
Used in `NotifyNewId` endpoint.

This item has no fields.

## Services 

### <span class="codicon codicon-symbol-class symbol-class"></span>PostboxService

# Postbox

The postbox service forms the core of Harmony's server <-> server communications.

It concerns the transfer of Events between servers, as well as ensuring reliable
delivery of them.

The semantics of events are documented in the event types. The postbox service
is solely reliable for reliable pushing and pulling.

## Server Identification

Servers are identified using their domain, and the port which they serve. This is
called the "server ID", and must be formatted as `domain:port`. The port is NOT
optional. Converting this ID to a URL for communicating can simply be done via
prefixing the ID with a protocol, eg. `https://`.

## Authorisation

Requests are authorised using a serialized `harmonytypes.v1.Token` in the Authorization HTTP header.
The `data` field of the token will be a serialized `AuthData` message.
The private key used to sign is the homeserver's private key.

## Events

In this section, we will use sender and recipient to refer to the servers
sending the events and the server receiving the events respectively.

At PostboxService startup, a sender should first Pull all receivers it had
federated from before. If a receiver makes a Push to the sender while a Pull
is going on, the Push should be processed after the Pull is completed.

The sender will attempt to Push to the receiver. If the Push RPC fails more
than X times (a recommended retry count is 5), the event will be dispatched
to the sender's queue for the receiver. Unless the receiver pulls these events,
all new events should be dispatched to the queue. No new Push RPC should be made
before the queue is emptied. This ensures that events are always received in the
right order.

It is recommended that receivers try pulling periodically, for example, every
1 minute after the last Push RPC by the sender. This ensures that events are recieved.
#### Methods

##### <span class="codicon codicon-symbol-method symbol-method"></span>Pull
[protocol.sync.v1.PullRequest](#pullrequest) -> [protocol.sync.v1.PullResponse](#pullresponse)

Endpoint to pull events.
##### <span class="codicon codicon-symbol-method symbol-method"></span>Push
[protocol.sync.v1.PushRequest](#pushrequest) -> [protocol.sync.v1.PushResponse](#pushresponse)

Endpoint to push events.
##### <span class="codicon codicon-symbol-method symbol-method"></span>NotifyNewId
[protocol.sync.v1.NotifyNewIdRequest](#notifynewidrequest) -> [protocol.sync.v1.NotifyNewIdResponse](#notifynewidresponse)

Endpoint to notify a server of a server ID change. It is called by the server
that had it's server ID changed for all servers it has federated with.
