---
title: "Reference: protocol.sync.v1"
---
## Message Types 

### AuthData
Authentication data that will be sent in a `harmonytypes.v1.Token`.

#### Fields


##### server_id (optional  `string`)
The server ID of the server initiating the transaction. For Pull,
this tells the server being connected to which homeservers' events it should send.
For Push, this tells the server being connected to which homeservers' events it is
receiving.
##### time (optional  `uint64`)
The UTC UNIX time in seconds of when the request is started. Servers should reject
tokens with a time too far from the current time, at their discretion. A recommended
variance is 1 minute.

### Event
Object representing a postbox event.

#### Fields


##### user_removed_from_guild (optional  [protocol.sync.v1.Event.UserRemovedFromGuild](#eventuserremovedfromguild))
User removed from a guild.
##### user_added_to_guild (optional  [protocol.sync.v1.Event.UserAddedToGuild](#eventuseraddedtoguild))
User added to a guild.
##### user_invited (optional  [protocol.sync.v1.Event.UserInvited](#eventuserinvited))
User invited to a guild.
##### user_rejected_invite (optional  [protocol.sync.v1.Event.UserRejectedInvite](#eventuserrejectedinvite))
User rejected a guild invitation.

### Event.UserRemovedFromGuild


#### Fields


##### user_id (optional  `uint64`)

##### guild_id (optional  `uint64`)


### Event.UserAddedToGuild


#### Fields


##### user_id (optional  `uint64`)

##### guild_id (optional  `uint64`)


### Event.UserInvited


#### Fields


##### user_id (optional  `uint64`)

##### inviter_id (optional  `uint64`)

##### invite_id (optional  `string`)


### Event.UserRejectedInvite


#### Fields


##### guild_id (optional  `uint64`)

##### user_id (optional  `uint64`)

##### invite_id (optional  `string`)


### PullRequest
Used in `Pull` endpoint.

This item has no fields.

### PullResponse
Used in `Pull` endpoint.

#### Fields


##### event_queue (repeated  [protocol.sync.v1.Event](#event))
The events that were not processed yet.

### PushRequest
Used in `Push` endpoint.

#### Fields


##### event (optional  [protocol.sync.v1.Event](#event))
The event to push to the server.

### PushResponse
Used in `Push` endpoint.

This item has no fields.

### NotifyNewIdRequest
Used in `NotifyNewId` endpoint.

#### Fields


##### new_server_id (optional  `string`)
The new server ID of the server.

### NotifyNewIdResponse
Used in `NotifyNewId` endpoint.

This item has no fields.

## Services 

### PostboxService

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

##### Pull
[protocol.sync.v1.PullRequest](#pullrequest) -> [protocol.sync.v1.PullResponse](#pullresponse)

Endpoint to pull events.
##### Push
[protocol.sync.v1.PushRequest](#pushrequest) -> [protocol.sync.v1.PushResponse](#pushresponse)

Endpoint to push events.
##### NotifyNewId
[protocol.sync.v1.NotifyNewIdRequest](#notifynewidrequest) -> [protocol.sync.v1.NotifyNewIdResponse](#notifynewidresponse)

Endpoint to notify a server of a server ID change. It is called by the server
that had it's server ID changed for all servers it has federated with.
