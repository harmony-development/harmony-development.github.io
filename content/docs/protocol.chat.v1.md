---
title: "Reference: protocol.chat.v1"
---
# Services 

## <span class="codicon codicon-symbol-class symbol-class"></span>ChatService

The core of Harmony's chat operations.
<span class="h3" aria-level="3">Fields</span>
#### <span class="codicon codicon-symbol-method symbol-method"></span>CreateGuild
[protocol.chat.v1.CreateGuildRequest](#createguildrequest) -> [protocol.chat.v1.CreateGuildResponse](#createguildresponse)

Endpoint to create a guild.

<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>CreateGuildRequest
Request type used in `CreateGuild` endpoint.

<span class="h5" aria-level="5">Fields</span>
###### <span class="codicon codicon-symbol-field symbol-field"></span>name
Type: optional `string`

The name of the guild.
###### <span class="codicon codicon-symbol-field symbol-field"></span>picture
Type: optional `string`

The picture HMC of the guild.
###### <span class="codicon codicon-symbol-field symbol-field"></span>metadata
Type: optional [protocol.harmonytypes.v1.Metadata]({{< ref "protocol.harmonytypes.v1.md" >}}#metadata)

Metadata of the guild.


<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>CreateGuildResponse
Used in the `CreateGuild` endpoint.

<span class="h5" aria-level="5">Fields</span>
###### <span class="codicon codicon-symbol-field symbol-field"></span>guild_id
Type: optional `uint64`

Guild ID of the guild that was created.

------
#### <span class="codicon codicon-symbol-method symbol-method"></span>CreateRoom
[protocol.chat.v1.CreateRoomRequest](#createroomrequest) -> [protocol.chat.v1.CreateRoomResponse](#createroomresponse)

Endpoint to create a "room" guild.

<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>CreateRoomRequest
Request type used in `CreateRoom` endpoint.

<span class="h5" aria-level="5">Fields</span>
###### <span class="codicon codicon-symbol-field symbol-field"></span>name
Type: optional `string`

The name of the guild.
###### <span class="codicon codicon-symbol-field symbol-field"></span>picture
Type: optional `string`

The picture HMC of the guild.
###### <span class="codicon codicon-symbol-field symbol-field"></span>metadata
Type: optional [protocol.harmonytypes.v1.Metadata]({{< ref "protocol.harmonytypes.v1.md" >}}#metadata)

Metadata of the guild.


<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>CreateRoomResponse
Used in the `CreateRoom` endpoint.

<span class="h5" aria-level="5">Fields</span>
###### <span class="codicon codicon-symbol-field symbol-field"></span>guild_id
Type: optional `uint64`

Guild ID of the guild that was created.

------
#### <span class="codicon codicon-symbol-method symbol-method"></span>CreateDirectMessage
[protocol.chat.v1.CreateDirectMessageRequest](#createdirectmessagerequest) -> [protocol.chat.v1.CreateDirectMessageResponse](#createdirectmessageresponse)

Endpoint to create a "direct message" guild.

- The inviter and the invitee that join the created guild will both be owners.
- The guild should be created on the server that inviter is on.
- The server should send a guild invite to the invitee (specified in the request),
using the `UserInvited` postbox event if the invitee is on another server,
otherwise see the below item.
- The server should process this as follows: adding the invite to their pending
invite list and sending an `InviteReceived` event over their event stream if
the invitee is on this server.
- The invitee may or may not use the invite. Only the invitee may use the invite.

<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>CreateDirectMessageRequest
Used in the `CreateDirectMessage` endpoint.

<span class="h5" aria-level="5">Fields</span>
###### <span class="codicon codicon-symbol-field symbol-field"></span>user_name
Type: optional `string`

The user name of the user to DM with.
###### <span class="codicon codicon-symbol-field symbol-field"></span>server_id
Type: optional `string`

The server ID of the server the user is on.

Should be left unspecified if it's a user on the homeserver.


<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>CreateDirectMessageResponse
Used in the `CreateDirectMessage` endpoint.

<span class="h5" aria-level="5">Fields</span>
###### <span class="codicon codicon-symbol-field symbol-field"></span>guild_id
Type: optional `uint64`

Guild ID of the just created "direct message" guild.

------
#### <span class="codicon codicon-symbol-method symbol-method"></span>UpgradeRoomToGuild
[protocol.chat.v1.UpgradeRoomToGuildRequest](#upgraderoomtoguildrequest) -> [protocol.chat.v1.UpgradeRoomToGuildResponse](#upgraderoomtoguildresponse)

Endpoint to upgrade a "room" guild to a "normal" guild.

<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>UpgradeRoomToGuildRequest
Used in the `UpgradeRoomToGuild` endpoint.

<span class="h5" aria-level="5">Fields</span>
###### <span class="codicon codicon-symbol-field symbol-field"></span>guild_id
Type: optional `uint64`

Guild ID of the "room" guild to upgrade to a "normal" guild.


<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>UpgradeRoomToGuildResponse
Used in the `UpgradeRoomToGuild` endpoint.

This item has no fields.

------
#### <span class="codicon codicon-symbol-method symbol-method"></span>CreateInvite
[protocol.chat.v1.CreateInviteRequest](#createinviterequest) -> [protocol.chat.v1.CreateInviteResponse](#createinviteresponse)

Endpoint to create an invite.

<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>CreateInviteRequest
Used in the `CreateInvite` endpoint.

<span class="h5" aria-level="5">Fields</span>
###### <span class="codicon codicon-symbol-field symbol-field"></span>guild_id
Type: optional `uint64`

Guild ID of the guild to create an invite in.
###### <span class="codicon codicon-symbol-field symbol-field"></span>name
Type: optional `string`

The name of the invite.
###### <span class="codicon codicon-symbol-field symbol-field"></span>possible_uses
Type: optional `uint32`

The possible uses of the invite.

A possible use of `0` means that the invite can be used infinitely many times.


<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>CreateInviteResponse
Used in the `CreateInvite` endpoint.

<span class="h5" aria-level="5">Fields</span>
###### <span class="codicon codicon-symbol-field symbol-field"></span>invite_id
Type: optional `string`

The invite ID of the invite that was created.

------
#### <span class="codicon codicon-symbol-method symbol-method"></span>CreateChannel
[protocol.chat.v1.CreateChannelRequest](#createchannelrequest) -> [protocol.chat.v1.CreateChannelResponse](#createchannelresponse)

Endpoint to create a channel.

<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>CreateChannelRequest
Channel Kinds:

Channel kinds specified in an official Harmony protocol will start with a
"h." prefix. Third-party extensions should not use the "h." prefix. If no
kind is specified, the channel is a text channel.

Kinds indicate additional functionality a channel may have: for example,
h.voice can indicate that a channel has voice functionalities alongside
the usual text fare.

Used in the `CreateChannel` endpoint.

<span class="h5" aria-level="5">Fields</span>
###### <span class="codicon codicon-symbol-field symbol-field"></span>guild_id
Type: optional `uint64`

Guild ID of the guild to create a channel in.
###### <span class="codicon codicon-symbol-field symbol-field"></span>channel_name
Type: optional `string`

The name of this channel.
###### <span class="codicon codicon-symbol-field symbol-field"></span>kind
Type: UNHANDLED | TYPE

The kind of this channel.
###### <span class="codicon codicon-symbol-field symbol-field"></span>metadata
Type: optional [protocol.harmonytypes.v1.Metadata]({{< ref "protocol.harmonytypes.v1.md" >}}#metadata)

The metadata of this channel.
###### <span class="codicon codicon-symbol-field symbol-field"></span>position
Type: optional [protocol.harmonytypes.v1.ItemPosition]({{< ref "protocol.harmonytypes.v1.md" >}}#itemposition)

The position of your new channel in the channel list.

If not specified, it will be put at the bottom of the channel list.


<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>CreateChannelResponse
Used in the `CreateChannel` endpoint.

<span class="h5" aria-level="5">Fields</span>
###### <span class="codicon codicon-symbol-field symbol-field"></span>channel_id
Type: optional `uint64`

ID of the channel that was created.

------
#### <span class="codicon codicon-symbol-method symbol-method"></span>GetGuildList
[protocol.chat.v1.GetGuildListRequest](#getguildlistrequest) -> [protocol.chat.v1.GetGuildListResponse](#getguildlistresponse)

Endpoint to get your guild list.

<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>GetGuildListRequest
Used in the `GetGuildList` endpoint.

This item has no fields.


<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>GetGuildListResponse
Used in the `GetGuildList` endpoint.

<span class="h5" aria-level="5">Fields</span>
###### <span class="codicon codicon-symbol-field symbol-field"></span>guilds
Type: repeated [protocol.chat.v1.GuildListEntry](#guildlistentry)

Guild list returned by the server.

------
#### <span class="codicon codicon-symbol-method symbol-method"></span>InviteUserToGuild
[protocol.chat.v1.InviteUserToGuildRequest](#inviteusertoguildrequest) -> [protocol.chat.v1.InviteUserToGuildResponse](#inviteusertoguildresponse)

Endpoint to invite a user to a guild.

<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>InviteUserToGuildRequest
Used in `InviteUserToGuild` endpoint.

<span class="h5" aria-level="5">Fields</span>
###### <span class="codicon codicon-symbol-field symbol-field"></span>user_name
Type: optional `string`

User name of the user to invite.
###### <span class="codicon codicon-symbol-field symbol-field"></span>server_id
Type: optional `string`

Server ID of the user if they are on another server.
###### <span class="codicon codicon-symbol-field symbol-field"></span>guild_id
Type: optional `uint64`

Guild ID of the guild to invite to.


<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>InviteUserToGuildResponse
Used in `InviteUserToGuild` endpoint.

This item has no fields.

------
#### <span class="codicon codicon-symbol-method symbol-method"></span>GetPendingInvites
[protocol.chat.v1.GetPendingInvitesRequest](#getpendinginvitesrequest) -> [protocol.chat.v1.GetPendingInvitesResponse](#getpendinginvitesresponse)

Endpoint to get your pending invites.

<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>GetPendingInvitesRequest
Used in `GetPendingInvites` endpoint.

This item has no fields.


<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>GetPendingInvitesResponse
Used in `GetPendingInvites` endpoint.

<span class="h5" aria-level="5">Fields</span>
###### <span class="codicon codicon-symbol-field symbol-field"></span>pending_invites
Type: repeated [protocol.chat.v1.PendingInvite](#pendinginvite)

The pending invite(s).

------
#### <span class="codicon codicon-symbol-method symbol-method"></span>RejectPendingInvite
[protocol.chat.v1.RejectPendingInviteRequest](#rejectpendinginviterequest) -> [protocol.chat.v1.RejectPendingInviteResponse](#rejectpendinginviteresponse)

Endpoint to reject (delete with notification to the inviter) an invite
from your pending invite list.

If the invitee is on a different server than the inviter, the invitee's
server should send a `UserRejectedInvite` postbox event to the inviter's
server.

The "notification" is sending a `InviteRejected` stream event to the
inviter. If the guild's kind is `DirectMessage`, the server should also
set the `rejected` field of the guild's kind to `true`.

<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>RejectPendingInviteRequest
Used in `RejectPendingInvite` endpoint.

<span class="h5" aria-level="5">Fields</span>
###### <span class="codicon codicon-symbol-field symbol-field"></span>invite_id
Type: optional `string`

Invite ID of the pending invite to reject.
###### <span class="codicon codicon-symbol-field symbol-field"></span>server_id
Type: optional `string`

Server ID of the pending invite to reject.


<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>RejectPendingInviteResponse
Used in `RejectPendingInvite` endpoint.

This item has no fields.

------
#### <span class="codicon codicon-symbol-method symbol-method"></span>IgnorePendingInvite
[protocol.chat.v1.IgnorePendingInviteRequest](#ignorependinginviterequest) -> [protocol.chat.v1.IgnorePendingInviteResponse](#ignorependinginviteresponse)

Endpoint to ignore (delete without notification to the inviter) an
invite from your pending invite list.

<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>IgnorePendingInviteRequest
Used in `IgnorePendingInvite` endpoint.

<span class="h5" aria-level="5">Fields</span>
###### <span class="codicon codicon-symbol-field symbol-field"></span>invite_id
Type: optional `string`

ID of the pending invite to ignore.
###### <span class="codicon codicon-symbol-field symbol-field"></span>server_id
Type: optional `string`

Server ID of the pending invite to reject.


<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>IgnorePendingInviteResponse
Used in `IgnorePendingInvite` endpoint.

This item has no fields.

------
#### <span class="codicon codicon-symbol-method symbol-method"></span>GetGuild
[protocol.chat.v1.GetGuildRequest](#getguildrequest) -> [protocol.chat.v1.GetGuildResponse](#getguildresponse)

Endpoint to get information about a guild.

<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>GetGuildRequest
Used in the `GetGuild` endpoint.

<span class="h5" aria-level="5">Fields</span>
###### <span class="codicon codicon-symbol-field symbol-field"></span>guild_id
Type: optional `uint64`

Guild ID of the guild to get information about.


<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>GetGuildResponse
Used in the `GetGuild` endpoint.

<span class="h5" aria-level="5">Fields</span>
###### <span class="codicon codicon-symbol-field symbol-field"></span>guild
Type: optional [protocol.chat.v1.Guild](#guild)

The information of the guild requested.

------
#### <span class="codicon codicon-symbol-method symbol-method"></span>GetGuildInvites
[protocol.chat.v1.GetGuildInvitesRequest](#getguildinvitesrequest) -> [protocol.chat.v1.GetGuildInvitesResponse](#getguildinvitesresponse)

Endpoint to get the invites of a guild.

This requires the "invites.view" permission.

<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>GetGuildInvitesRequest
Used in the `GetGuildInvites` endpoint.

<span class="h5" aria-level="5">Fields</span>
###### <span class="codicon codicon-symbol-field symbol-field"></span>guild_id
Type: optional `uint64`

Guild ID of the guild you want to get invites of.


<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>GetGuildInvitesResponse
Used in the `GetGuildInvites` endpoint.

<span class="h5" aria-level="5">Fields</span>
###### <span class="codicon codicon-symbol-field symbol-field"></span>invites
Type: repeated [protocol.chat.v1.InviteWithId](#invitewithid)

The invites of the guild, with IDs.

------
#### <span class="codicon codicon-symbol-method symbol-method"></span>GetGuildMembers
[protocol.chat.v1.GetGuildMembersRequest](#getguildmembersrequest) -> [protocol.chat.v1.GetGuildMembersResponse](#getguildmembersresponse)

Endpoint to get the members of a guild.

<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>GetGuildMembersRequest
Used in the `GetGuildMembers` endpoint.

<span class="h5" aria-level="5">Fields</span>
###### <span class="codicon codicon-symbol-field symbol-field"></span>guild_id
Type: optional `uint64`

Guild ID of the guild you want to get members of.


<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>GetGuildMembersResponse
Used in the `GetGuildMembers` endpoint.

<span class="h5" aria-level="5">Fields</span>
###### <span class="codicon codicon-symbol-field symbol-field"></span>members
Type: repeated `uint64`

User IDs of all the guild members.

------
#### <span class="codicon codicon-symbol-method symbol-method"></span>GetGuildChannels
[protocol.chat.v1.GetGuildChannelsRequest](#getguildchannelsrequest) -> [protocol.chat.v1.GetGuildChannelsResponse](#getguildchannelsresponse)

Endpoint to get the channels of a guild.

You will only be informed of channels you have the "messages.view"
permission for.

<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>GetGuildChannelsRequest
Used in the `GetGuildChannels` endpoint.

<span class="h5" aria-level="5">Fields</span>
###### <span class="codicon codicon-symbol-field symbol-field"></span>guild_id
Type: optional `uint64`

Guild ID of the guild you want to get channels from.


<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>GetGuildChannelsResponse
Used in the `GetGuildChannels` endpoint.

<span class="h5" aria-level="5">Fields</span>
###### <span class="codicon codicon-symbol-field symbol-field"></span>channels
Type: repeated [protocol.chat.v1.ChannelWithId](#channelwithid)

Channels' data and ID the server responded with.

------
#### <span class="codicon codicon-symbol-method symbol-method"></span>GetChannelMessages
[protocol.chat.v1.GetChannelMessagesRequest](#getchannelmessagesrequest) -> [protocol.chat.v1.GetChannelMessagesResponse](#getchannelmessagesresponse)

Endpoint to get the messages from a guild channel.

<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>GetChannelMessagesRequest
Used in the `GetChannelMessages` endpoint.

<span class="h5" aria-level="5">Fields</span>
###### <span class="codicon codicon-symbol-field symbol-field"></span>guild_id
Type: optional `uint64`

Guild ID of the guild that has the channel.
###### <span class="codicon codicon-symbol-field symbol-field"></span>channel_id
Type: optional `uint64`

Channel ID of the channel to get messages from.
###### <span class="codicon codicon-symbol-field symbol-field"></span>message_id
Type: optional `uint64`

The ID of the message that will be used as an "anchor" point to figure out
where to get the messages.
If not specified, the `direction` will be ignored and the newest messages
will be returned.
###### <span class="codicon codicon-symbol-field symbol-field"></span>direction
Type: UNHANDLED | TYPE

On which direction to get the messages.

- By default, it is "before", which means you will get messages before the
`message_id` message.
- If it is "around", you will get the messages around the `message_id`
message. This will include the `message_id` message itself, as the middle
item of the list returned.
- If it is "after", you will get the messages after the `message_id`
message.
###### <span class="codicon codicon-symbol-field symbol-field"></span>count
Type: optional `uint32`

How many messages to get.

- If `0`, a recommended message count to return is 25. If the direction is
"around", the recommended value is 12.
- If the direction to get the messages is "around", this count will not be
the *total* count of messages to return, but instead the count of messages
to return *for each direction*, before and after.
- Servers should enforce their own maximum limit, and clamp this value to
the limit.


<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>GetChannelMessagesResponse
Used in the `GetChannelMessages` endpoint.

<span class="h5" aria-level="5">Fields</span>
###### <span class="codicon codicon-symbol-field symbol-field"></span>reached_top
Type: optional `bool`

Has reached the top (first message) of the message history.
###### <span class="codicon codicon-symbol-field symbol-field"></span>reached_bottom
Type: optional `bool`

Has reached the bottom (last message) of the message history.
###### <span class="codicon codicon-symbol-field symbol-field"></span>messages
Type: repeated [protocol.chat.v1.MessageWithId](#messagewithid)

The messages requested.

------
#### <span class="codicon codicon-symbol-method symbol-method"></span>GetMessage
[protocol.chat.v1.GetMessageRequest](#getmessagerequest) -> [protocol.chat.v1.GetMessageResponse](#getmessageresponse)

Endpoint to get a single message from a guild channel.

<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>GetMessageRequest
Used in the `GetMessage` endpoint.

<span class="h5" aria-level="5">Fields</span>
###### <span class="codicon codicon-symbol-field symbol-field"></span>guild_id
Type: optional `uint64`

Guild ID of the guild where the channel is.
###### <span class="codicon codicon-symbol-field symbol-field"></span>channel_id
Type: optional `uint64`

Channel ID of the channel where the message is.
###### <span class="codicon codicon-symbol-field symbol-field"></span>message_id
Type: optional `uint64`

Message ID of the message you want to get.


<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>GetMessageResponse
Used in the `GetMessage` endpoint.

<span class="h5" aria-level="5">Fields</span>
###### <span class="codicon codicon-symbol-field symbol-field"></span>message
Type: optional [protocol.chat.v1.Message](#message)

The message requested.

------
#### <span class="codicon codicon-symbol-method symbol-method"></span>UpdateGuildInformation
[protocol.chat.v1.UpdateGuildInformationRequest](#updateguildinformationrequest) -> [protocol.chat.v1.UpdateGuildInformationResponse](#updateguildinformationresponse)

Endpoint to update a guild's information.

<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>UpdateGuildInformationRequest
Used in the `UpdateGuildInformation` endpoint.

<span class="h5" aria-level="5">Fields</span>
###### <span class="codicon codicon-symbol-field symbol-field"></span>guild_id
Type: optional `uint64`

Guild ID of the guild you want to update the information of.
###### <span class="codicon codicon-symbol-field symbol-field"></span>new_name
Type: optional `string`

New name for the guild.
###### <span class="codicon codicon-symbol-field symbol-field"></span>new_picture
Type: optional `string`

New picture for the guild.
###### <span class="codicon codicon-symbol-field symbol-field"></span>new_metadata
Type: optional [protocol.harmonytypes.v1.Metadata]({{< ref "protocol.harmonytypes.v1.md" >}}#metadata)

New metadata for the guild.


<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>UpdateGuildInformationResponse
Used in the `UpdateGuildInformation` endpoint.

This item has no fields.

------
#### <span class="codicon codicon-symbol-method symbol-method"></span>UpdateChannelInformation
[protocol.chat.v1.UpdateChannelInformationRequest](#updatechannelinformationrequest) -> [protocol.chat.v1.UpdateChannelInformationResponse](#updatechannelinformationresponse)

Endpoint to update a channel's information.

<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>UpdateChannelInformationRequest
Used in the `UpdateChannelInformation` endpoint.

<span class="h5" aria-level="5">Fields</span>
###### <span class="codicon codicon-symbol-field symbol-field"></span>guild_id
Type: optional `uint64`

Guild ID of the guild where the channel is.
###### <span class="codicon codicon-symbol-field symbol-field"></span>channel_id
Type: optional `uint64`

Channel ID of the channel you want to change the information of.
###### <span class="codicon codicon-symbol-field symbol-field"></span>new_name
Type: optional `string`

New name to set for this channel.
###### <span class="codicon codicon-symbol-field symbol-field"></span>new_metadata
Type: optional [protocol.harmonytypes.v1.Metadata]({{< ref "protocol.harmonytypes.v1.md" >}}#metadata)

New metadata to set for this channel.


<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>UpdateChannelInformationResponse
Used in the `UpdateChannelInformation` endpoint.

This item has no fields.

------
#### <span class="codicon codicon-symbol-method symbol-method"></span>UpdateChannelOrder
[protocol.chat.v1.UpdateChannelOrderRequest](#updatechannelorderrequest) -> [protocol.chat.v1.UpdateChannelOrderResponse](#updatechannelorderresponse)

Endpoint to change the position of a channel in the channel list.

<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>UpdateChannelOrderRequest
Used in the `UpdateChannelOrder` endpoint.

<span class="h5" aria-level="5">Fields</span>
###### <span class="codicon codicon-symbol-field symbol-field"></span>guild_id
Type: optional `uint64`

Guild ID of the guild that has the channel.
###### <span class="codicon codicon-symbol-field symbol-field"></span>channel_id
Type: optional `uint64`

Channel ID of the channel that you want to move.
###### <span class="codicon codicon-symbol-field symbol-field"></span>new_position
Type: optional [protocol.harmonytypes.v1.ItemPosition]({{< ref "protocol.harmonytypes.v1.md" >}}#itemposition)

The new position of this channel.


<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>UpdateChannelOrderResponse
Used in the `UpdateChannelOrder` endpoint.

This item has no fields.

------
#### <span class="codicon codicon-symbol-method symbol-method"></span>UpdateAllChannelOrder
[protocol.chat.v1.UpdateAllChannelOrderRequest](#updateallchannelorderrequest) -> [protocol.chat.v1.UpdateAllChannelOrderResponse](#updateallchannelorderresponse)

Endpoint to change the position of all channels in the guild;
must specifcy all channels or fails

<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>UpdateAllChannelOrderRequest
Request specifiying the order of all channels in a guild at once

<span class="h5" aria-level="5">Fields</span>
###### <span class="codicon codicon-symbol-field symbol-field"></span>guild_id
Type: optional `uint64`

guild_id: the guild to specify the new channel order for
###### <span class="codicon codicon-symbol-field symbol-field"></span>channel_ids
Type: repeated `uint64`

channel_ids: the new order of channel ids


<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>UpdateAllChannelOrderResponse
Used in the `UpdateAllChannelOrder` endpoint.

This item has no fields.

------
#### <span class="codicon codicon-symbol-method symbol-method"></span>UpdateMessageText
[protocol.chat.v1.UpdateMessageTextRequest](#updatemessagetextrequest) -> [protocol.chat.v1.UpdateMessageTextResponse](#updatemessagetextresponse)

Endpoint to change the text of a message.

<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>UpdateMessageTextRequest
Used in the `UpdateMessageText` endpoint.

<span class="h5" aria-level="5">Fields</span>
###### <span class="codicon codicon-symbol-field symbol-field"></span>guild_id
Type: optional `uint64`

Guild ID of the guild where the channel is.
###### <span class="codicon codicon-symbol-field symbol-field"></span>channel_id
Type: optional `uint64`

Channel ID of the channel where the message is.
###### <span class="codicon codicon-symbol-field symbol-field"></span>message_id
Type: optional `uint64`

Message ID of the message you want to edit the text of.
###### <span class="codicon codicon-symbol-field symbol-field"></span>new_content
Type: optional [protocol.chat.v1.FormattedText](#formattedtext)

New content for this message.


<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>UpdateMessageTextResponse
Used in the `UpdateMessageText` endpoint.

This item has no fields.

------
#### <span class="codicon codicon-symbol-method symbol-method"></span>DeleteGuild
[protocol.chat.v1.DeleteGuildRequest](#deleteguildrequest) -> [protocol.chat.v1.DeleteGuildResponse](#deleteguildresponse)

Endpoint to delete a guild.
Can only be invoked if there's one owner.

<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>DeleteGuildRequest
Used in the `DeleteGuild` endpoint.

<span class="h5" aria-level="5">Fields</span>
###### <span class="codicon codicon-symbol-field symbol-field"></span>guild_id
Type: optional `uint64`

Guild ID of the guild you want to delete.


<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>DeleteGuildResponse
Used in the `DeleteGuild` endpoint.

This item has no fields.

------
#### <span class="codicon codicon-symbol-method symbol-method"></span>DeleteInvite
[protocol.chat.v1.DeleteInviteRequest](#deleteinviterequest) -> [protocol.chat.v1.DeleteInviteResponse](#deleteinviteresponse)

Endpoint to delete an invite.

<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>DeleteInviteRequest
Used in the `DeleteInvite` endpoint.

<span class="h5" aria-level="5">Fields</span>
###### <span class="codicon codicon-symbol-field symbol-field"></span>guild_id
Type: optional `uint64`

Guild ID of the guild where the invite is located.
###### <span class="codicon codicon-symbol-field symbol-field"></span>invite_id
Type: optional `string`

Invite ID of the invite you want to delete.


<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>DeleteInviteResponse
Used in the `DeleteInvite` endpoint.

This item has no fields.

------
#### <span class="codicon codicon-symbol-method symbol-method"></span>DeleteChannel
[protocol.chat.v1.DeleteChannelRequest](#deletechannelrequest) -> [protocol.chat.v1.DeleteChannelResponse](#deletechannelresponse)

Endpoint to delete a channel.

<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>DeleteChannelRequest
Used in the `DeleteChannel` endpoint.

<span class="h5" aria-level="5">Fields</span>
###### <span class="codicon codicon-symbol-field symbol-field"></span>guild_id
Type: optional `uint64`

Guild ID of the guild that has the channel.
###### <span class="codicon codicon-symbol-field symbol-field"></span>channel_id
Type: optional `uint64`

Channel ID of the channel you want to delete.


<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>DeleteChannelResponse
Used in the `DeleteChannel` endpoint.

This item has no fields.

------
#### <span class="codicon codicon-symbol-method symbol-method"></span>DeleteMessage
[protocol.chat.v1.DeleteMessageRequest](#deletemessagerequest) -> [protocol.chat.v1.DeleteMessageResponse](#deletemessageresponse)

Endpoint to delete a message.

This requires the "messages.manage.delete" permission if you are not the
message author.

<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>DeleteMessageRequest
Used in the `DeleteMessage` endpoint.

<span class="h5" aria-level="5">Fields</span>
###### <span class="codicon codicon-symbol-field symbol-field"></span>guild_id
Type: optional `uint64`

Guild ID of the guild where the channel is.
###### <span class="codicon codicon-symbol-field symbol-field"></span>channel_id
Type: optional `uint64`

Channel ID of the channel where the message is.
###### <span class="codicon codicon-symbol-field symbol-field"></span>message_id
Type: optional `uint64`

Message ID of the message you want to delete.


<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>DeleteMessageResponse
Used in the `DeleteMessage` endpoint.

This item has no fields.

------
#### <span class="codicon codicon-symbol-method symbol-method"></span>JoinGuild
[protocol.chat.v1.JoinGuildRequest](#joinguildrequest) -> [protocol.chat.v1.JoinGuildResponse](#joinguildresponse)

Endpoint to join a guild.

- If the invite used is in a user's "pending invites" list, it should be
removed from there.

<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>JoinGuildRequest
Used in the `JoinGuild` endpoint.

<span class="h5" aria-level="5">Fields</span>
###### <span class="codicon codicon-symbol-field symbol-field"></span>invite_id
Type: optional `string`

Invite ID of the guild you want to join.


<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>JoinGuildResponse
Used in the `JoinGuild` endpoint.

<span class="h5" aria-level="5">Fields</span>
###### <span class="codicon codicon-symbol-field symbol-field"></span>guild_id
Type: optional `uint64`

Guild ID of the guild you joined.

------
#### <span class="codicon codicon-symbol-method symbol-method"></span>LeaveGuild
[protocol.chat.v1.LeaveGuildRequest](#leaveguildrequest) -> [protocol.chat.v1.LeaveGuildResponse](#leaveguildresponse)

Endpoint to leave a guild.

- If you're the only owner, you can't leave a guild. Exception to this
rule are "direct message" guilds.
- When the last member in a "direct message" guild leaves it, that guild
should be deleted.

<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>LeaveGuildRequest
Used in the `LeaveGuild` endpoint.

<span class="h5" aria-level="5">Fields</span>
###### <span class="codicon codicon-symbol-field symbol-field"></span>guild_id
Type: optional `uint64`

Guild ID of the guild you want to leave.


<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>LeaveGuildResponse
Used in the `LeaveGuild` endpoint.

This item has no fields.

------
#### <span class="codicon codicon-symbol-method symbol-method"></span>TriggerAction
[protocol.chat.v1.TriggerActionRequest](#triggeractionrequest) -> [protocol.chat.v1.TriggerActionResponse](#triggeractionresponse)

Endpont to trigger an action.

<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>TriggerActionRequest
Used in the `TriggerAction` endpoint.

<span class="h5" aria-level="5">Fields</span>
###### <span class="codicon codicon-symbol-field symbol-field"></span>guild_id
Type: optional `uint64`

Guild ID of the guild where the channel is.
###### <span class="codicon codicon-symbol-field symbol-field"></span>channel_id
Type: optional `uint64`

Channel ID of the channel where the message is.
###### <span class="codicon codicon-symbol-field symbol-field"></span>message_id
Type: optional `uint64`

Message ID of the message you want to trigger an action in.
###### <span class="codicon codicon-symbol-field symbol-field"></span>payload
Type: optional [protocol.chat.v1.ActionPayload](#actionpayload)

Payload of action data.


<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>TriggerActionResponse
Used in the `TriggerAction` endpoint.

This item has no fields.

------
#### <span class="codicon codicon-symbol-method symbol-method"></span>SendMessage
[protocol.chat.v1.SendMessageRequest](#sendmessagerequest) -> [protocol.chat.v1.SendMessageResponse](#sendmessageresponse)

Endpoint to send a message.

<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>SendMessageRequest
Used in the `SendMessage` endpoint.

<span class="h5" aria-level="5">Fields</span>
###### <span class="codicon codicon-symbol-field symbol-field"></span>guild_id
Type: optional `uint64`

Guild ID of the guild where the channel is.
###### <span class="codicon codicon-symbol-field symbol-field"></span>channel_id
Type: optional `uint64`

Channel ID of the channel you want to send a message in.
###### <span class="codicon codicon-symbol-field symbol-field"></span>content
Type: optional [protocol.chat.v1.Content](#content)

Content of the new message.
###### <span class="codicon codicon-symbol-field symbol-field"></span>echo_id
Type: optional `uint64`

Echo ID of the new message. This can be used by clients to
determine whether a message is sent.
###### <span class="codicon codicon-symbol-field symbol-field"></span>overrides
Type: optional [protocol.chat.v1.Overrides](#overrides)

The overrides of this new message.
###### <span class="codicon codicon-symbol-field symbol-field"></span>in_reply_to
Type: optional `uint64`

The message this new message is a reply to.
###### <span class="codicon codicon-symbol-field symbol-field"></span>metadata
Type: optional [protocol.harmonytypes.v1.Metadata]({{< ref "protocol.harmonytypes.v1.md" >}}#metadata)

The metadata of this new message.


<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>SendMessageResponse
Used in the `SendMessage` endpoint.

<span class="h5" aria-level="5">Fields</span>
###### <span class="codicon codicon-symbol-field symbol-field"></span>message_id
Type: optional `uint64`

Message ID of the message sent.

------
#### <span class="codicon codicon-symbol-method symbol-method"></span>QueryHasPermission
[protocol.chat.v1.QueryHasPermissionRequest](#queryhaspermissionrequest) -> [protocol.chat.v1.QueryHasPermissionResponse](#queryhaspermissionresponse)

Endpoint to query if a user has a permission.

<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>QueryHasPermissionRequest
Used in the `QueryHasPermission` endpoint.

<span class="h5" aria-level="5">Fields</span>
###### <span class="codicon codicon-symbol-field symbol-field"></span>guild_id
Type: optional `uint64`

the guild ID to query permissions for
###### <span class="codicon codicon-symbol-field symbol-field"></span>channel_id
Type: optional `uint64`

the channel ID to query permissions for. If not set, it will query
permissions for the guild.
###### <span class="codicon codicon-symbol-field symbol-field"></span>as
Type: optional `uint64`

the user ID to query permissions for (if not provided, the current user is
assumed).
###### <span class="codicon codicon-symbol-field symbol-field"></span>check_for
Type: optional `string`

the permission node to check for.


<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>QueryHasPermissionResponse
Used in the `QueryHasPermission` endpoint.

<span class="h5" aria-level="5">Fields</span>
###### <span class="codicon codicon-symbol-field symbol-field"></span>ok
Type: optional `bool`

the permissions for the given node.

------
#### <span class="codicon codicon-symbol-method symbol-method"></span>SetPermissions
[protocol.chat.v1.SetPermissionsRequest](#setpermissionsrequest) -> [protocol.chat.v1.SetPermissionsResponse](#setpermissionsresponse)

Endpoint to set permissions for a role in a guild.

<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>SetPermissionsRequest
Used in the `SetPermissions` endpoint.

<span class="h5" aria-level="5">Fields</span>
###### <span class="codicon codicon-symbol-field symbol-field"></span>guild_id
Type: optional `uint64`

the guild ID to set permissions for.
###### <span class="codicon codicon-symbol-field symbol-field"></span>channel_id
Type: optional `uint64`

the channel ID to set permissions for. Only set if the role is for a
channel.
###### <span class="codicon codicon-symbol-field symbol-field"></span>role_id
Type: optional `uint64`

the role ID to set permissions for.
###### <span class="codicon codicon-symbol-field symbol-field"></span>perms_to_give
Type: repeated [protocol.chat.v1.Permission](#permission)

the permission list to give.

There is no "perms_to_take" because not given permissions are by
default not allowed.


<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>SetPermissionsResponse
Used in the `SetPermissions` endpoint.

This item has no fields.

------
#### <span class="codicon codicon-symbol-method symbol-method"></span>GetPermissions
[protocol.chat.v1.GetPermissionsRequest](#getpermissionsrequest) -> [protocol.chat.v1.GetPermissionsResponse](#getpermissionsresponse)

Endpoint to get permissions for a role in a guild.

<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>GetPermissionsRequest
Used in the `GetPermissions` endpoint.

<span class="h5" aria-level="5">Fields</span>
###### <span class="codicon codicon-symbol-field symbol-field"></span>guild_id
Type: optional `uint64`

the guild ID to get permissions for.
###### <span class="codicon codicon-symbol-field symbol-field"></span>channel_id
Type: optional `uint64`

the channel ID to get permissions for. Only applicable for roles in a
channel.
###### <span class="codicon codicon-symbol-field symbol-field"></span>role_id
Type: optional `uint64`

the role ID to get permissions for.


<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>GetPermissionsResponse
Used in the `GetPermissions` endpoint.

<span class="h5" aria-level="5">Fields</span>
###### <span class="codicon codicon-symbol-field symbol-field"></span>perms
Type: repeated [protocol.chat.v1.Permission](#permission)

the permissions list for the given role.

------
#### <span class="codicon codicon-symbol-method symbol-method"></span>MoveRole
[protocol.chat.v1.MoveRoleRequest](#moverolerequest) -> [protocol.chat.v1.MoveRoleResponse](#moveroleresponse)

Endpoint to change the position of a role in the role list in a guild.

<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>MoveRoleRequest
Used in the `MoveRole` endpoint.

<span class="h5" aria-level="5">Fields</span>
###### <span class="codicon codicon-symbol-field symbol-field"></span>guild_id
Type: optional `uint64`

the guild ID to move the role in.
###### <span class="codicon codicon-symbol-field symbol-field"></span>role_id
Type: optional `uint64`

the role ID to move.
###### <span class="codicon codicon-symbol-field symbol-field"></span>new_position
Type: optional [protocol.harmonytypes.v1.ItemPosition]({{< ref "protocol.harmonytypes.v1.md" >}}#itemposition)

the new position of the role.


<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>MoveRoleResponse
Used in the `MoveRole` endpoint.

This item has no fields.

------
#### <span class="codicon codicon-symbol-method symbol-method"></span>GetGuildRoles
[protocol.chat.v1.GetGuildRolesRequest](#getguildrolesrequest) -> [protocol.chat.v1.GetGuildRolesResponse](#getguildrolesresponse)

Endpoint to get the roles from a guild.

<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>GetGuildRolesRequest
Used in the `GetGuildRoles` endpoint.

<span class="h5" aria-level="5">Fields</span>
###### <span class="codicon codicon-symbol-field symbol-field"></span>guild_id
Type: optional `uint64`

the guild ID to get roles for.


<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>GetGuildRolesResponse
Used in the `GetGuildRoles` endpoint.

<span class="h5" aria-level="5">Fields</span>
###### <span class="codicon codicon-symbol-field symbol-field"></span>roles
Type: repeated [protocol.chat.v1.RoleWithId](#rolewithid)

the list of roles in the guild.

------
#### <span class="codicon codicon-symbol-method symbol-method"></span>AddGuildRole
[protocol.chat.v1.AddGuildRoleRequest](#addguildrolerequest) -> [protocol.chat.v1.AddGuildRoleResponse](#addguildroleresponse)

Endpoint to add a role to a guild.

<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>AddGuildRoleRequest
Used in the `AddGuildRole` endpoint.

<span class="h5" aria-level="5">Fields</span>
###### <span class="codicon codicon-symbol-field symbol-field"></span>guild_id
Type: optional `uint64`

the guild ID to add the role to.
###### <span class="codicon codicon-symbol-field symbol-field"></span>name
Type: optional `string`

the role name.
###### <span class="codicon codicon-symbol-field symbol-field"></span>color
Type: optional `int32`

the role color.
###### <span class="codicon codicon-symbol-field symbol-field"></span>hoist
Type: optional `bool`

whether the role is hoisted or not.
###### <span class="codicon codicon-symbol-field symbol-field"></span>pingable
Type: optional `bool`

whether the role is mentionable or not.


<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>AddGuildRoleResponse
Used in the `AddGuildRole` endpoint.

<span class="h5" aria-level="5">Fields</span>
###### <span class="codicon codicon-symbol-field symbol-field"></span>role_id
Type: optional `uint64`

the ID of the newly created role.

------
#### <span class="codicon codicon-symbol-method symbol-method"></span>ModifyGuildRole
[protocol.chat.v1.ModifyGuildRoleRequest](#modifyguildrolerequest) -> [protocol.chat.v1.ModifyGuildRoleResponse](#modifyguildroleresponse)

Endpoint to a modify a role from a guild.

<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>ModifyGuildRoleRequest
Used in the `ModifyGuildRole` endpoint.

<span class="h5" aria-level="5">Fields</span>
###### <span class="codicon codicon-symbol-field symbol-field"></span>guild_id
Type: optional `uint64`

the ID of the guild where the role is located
###### <span class="codicon codicon-symbol-field symbol-field"></span>role_id
Type: optional `uint64`

the ID of the role to modify
###### <span class="codicon codicon-symbol-field symbol-field"></span>new_name
Type: optional `string`

the new name of the role
###### <span class="codicon codicon-symbol-field symbol-field"></span>new_color
Type: optional `int32`

the new color of the role
###### <span class="codicon codicon-symbol-field symbol-field"></span>new_hoist
Type: optional `bool`

the new hoist status of the role
###### <span class="codicon codicon-symbol-field symbol-field"></span>new_pingable
Type: optional `bool`

the new pingable status of the role


<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>ModifyGuildRoleResponse
Used in the `ModifyGuildRole` endpoint.

This item has no fields.

------
#### <span class="codicon codicon-symbol-method symbol-method"></span>DeleteGuildRole
[protocol.chat.v1.DeleteGuildRoleRequest](#deleteguildrolerequest) -> [protocol.chat.v1.DeleteGuildRoleResponse](#deleteguildroleresponse)

Endpoint to delete a role from a guild.

<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>DeleteGuildRoleRequest
Used in the `DeleteGuildRole` endpoint.

<span class="h5" aria-level="5">Fields</span>
###### <span class="codicon codicon-symbol-field symbol-field"></span>guild_id
Type: optional `uint64`

the guild ID to delete the role from.
###### <span class="codicon codicon-symbol-field symbol-field"></span>role_id
Type: optional `uint64`

the role ID to delete.


<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>DeleteGuildRoleResponse
Used in the `DeleteGuildRole` endpoint.

This item has no fields.

------
#### <span class="codicon codicon-symbol-method symbol-method"></span>ManageUserRoles
[protocol.chat.v1.ManageUserRolesRequest](#manageuserrolesrequest) -> [protocol.chat.v1.ManageUserRolesResponse](#manageuserrolesresponse)

Endpoint to manage the roles of a guild member.

<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>ManageUserRolesRequest
Used in the `ManageUserRoles` endpoint.

<span class="h5" aria-level="5">Fields</span>
###### <span class="codicon codicon-symbol-field symbol-field"></span>guild_id
Type: optional `uint64`

the ID of the guild where the user is being managed
###### <span class="codicon codicon-symbol-field symbol-field"></span>user_id
Type: optional `uint64`

the ID of the user to modify
###### <span class="codicon codicon-symbol-field symbol-field"></span>give_role_ids
Type: repeated `uint64`

the IDs of the roles to add
###### <span class="codicon codicon-symbol-field symbol-field"></span>take_role_ids
Type: repeated `uint64`

the IDs of the roles to remove


<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>ManageUserRolesResponse
Used in the `ManageUserRoles` endpoint.

This item has no fields.

------
#### <span class="codicon codicon-symbol-method symbol-method"></span>GetUserRoles
[protocol.chat.v1.GetUserRolesRequest](#getuserrolesrequest) -> [protocol.chat.v1.GetUserRolesResponse](#getuserrolesresponse)

Endpoint to get the roles a guild member has.

<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>GetUserRolesRequest
Used in the `GetUserRoles` endpoint.

<span class="h5" aria-level="5">Fields</span>
###### <span class="codicon codicon-symbol-field symbol-field"></span>guild_id
Type: optional `uint64`

the ID of the guild where the user is located
###### <span class="codicon codicon-symbol-field symbol-field"></span>user_id
Type: optional `uint64`

the ID of the user to get roles for


<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>GetUserRolesResponse
Used in the `GetUserRoles` endpoint.

<span class="h5" aria-level="5">Fields</span>
###### <span class="codicon codicon-symbol-field symbol-field"></span>roles
Type: repeated `uint64`

a list of IDs of the roles the user has

------
#### <span class="codicon codicon-symbol-method symbol-method"></span>Typing
[protocol.chat.v1.TypingRequest](#typingrequest) -> [protocol.chat.v1.TypingResponse](#typingresponse)

Endpoint to send a typing notification in a guild channel.

<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>TypingRequest
Used in `Typing` endpoint.

<span class="h5" aria-level="5">Fields</span>
###### <span class="codicon codicon-symbol-field symbol-field"></span>guild_id
Type: optional `uint64`

The guild id of the channel the user is typing in.
###### <span class="codicon codicon-symbol-field symbol-field"></span>channel_id
Type: optional `uint64`

The channel id of the channel the user is typing in.


<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>TypingResponse
Used in `Typing` endpoint.

This item has no fields.

------
#### <span class="codicon codicon-symbol-method symbol-method"></span>PreviewGuild
[protocol.chat.v1.PreviewGuildRequest](#previewguildrequest) -> [protocol.chat.v1.PreviewGuildResponse](#previewguildresponse)

Endpoint to "preview" a guild, which returns some information about a
guild.

- Guilds with the "direct message" kind can only be previewed
by the user who is invited to the guild.

<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>PreviewGuildRequest
Used in the `PreviewGuild` endpoint.

<span class="h5" aria-level="5">Fields</span>
###### <span class="codicon codicon-symbol-field symbol-field"></span>invite_id
Type: optional `string`

Invite ID of the guild you want to get information from.


<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>PreviewGuildResponse
Used in the `PreviewGuild` endpoint.

<span class="h5" aria-level="5">Fields</span>
###### <span class="codicon codicon-symbol-field symbol-field"></span>name
Type: optional `string`

Name of the guild requested.
###### <span class="codicon codicon-symbol-field symbol-field"></span>picture
Type: optional `string`

Picture of the guild requested.
###### <span class="codicon codicon-symbol-field symbol-field"></span>member_count
Type: optional `uint64`

Member count of the guild requested.

------
#### <span class="codicon codicon-symbol-method symbol-method"></span>GetBannedUsers
[protocol.chat.v1.GetBannedUsersRequest](#getbannedusersrequest) -> [protocol.chat.v1.GetBannedUsersResponse](#getbannedusersresponse)

Endpoint to get banned users in a guild.

<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>GetBannedUsersRequest
Used in `GetBannedUsers` endpoint.

<span class="h5" aria-level="5">Fields</span>
###### <span class="codicon codicon-symbol-field symbol-field"></span>guild_id
Type: optional `uint64`

Guild ID to get banned users for.


<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>GetBannedUsersResponse
Used in `GetBannedUsers` endpoint.

<span class="h5" aria-level="5">Fields</span>
###### <span class="codicon codicon-symbol-field symbol-field"></span>banned_users
Type: repeated `uint64`

The user IDs of banned users.

------
#### <span class="codicon codicon-symbol-method symbol-method"></span>BanUser
[protocol.chat.v1.BanUserRequest](#banuserrequest) -> [protocol.chat.v1.BanUserResponse](#banuserresponse)

Endpoint to ban a user from a guild.

<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>BanUserRequest
Used in `BanUser` endpoint.

<span class="h5" aria-level="5">Fields</span>
###### <span class="codicon codicon-symbol-field symbol-field"></span>guild_id
Type: optional `uint64`

The guild ID of the guild to ban the user from.
###### <span class="codicon codicon-symbol-field symbol-field"></span>user_id
Type: optional `uint64`

The ID of the user to ban.


<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>BanUserResponse
Used in `BanUser` endpoint.

This item has no fields.

------
#### <span class="codicon codicon-symbol-method symbol-method"></span>KickUser
[protocol.chat.v1.KickUserRequest](#kickuserrequest) -> [protocol.chat.v1.KickUserResponse](#kickuserresponse)

Endpoint to kick a user from a guild.

<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>KickUserRequest
Used in `KickUser` endpoint.

<span class="h5" aria-level="5">Fields</span>
###### <span class="codicon codicon-symbol-field symbol-field"></span>guild_id
Type: optional `uint64`

The guild ID of the guild to kick the user from.
###### <span class="codicon codicon-symbol-field symbol-field"></span>user_id
Type: optional `uint64`

The user ID of the user to kick.


<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>KickUserResponse
Used in `KickUser` endpoint.

This item has no fields.

------
#### <span class="codicon codicon-symbol-method symbol-method"></span>UnbanUser
[protocol.chat.v1.UnbanUserRequest](#unbanuserrequest) -> [protocol.chat.v1.UnbanUserResponse](#unbanuserresponse)

Endpoint to unban a user from a guild.

<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>UnbanUserRequest
Used in `UnbanUser` endpoint.

<span class="h5" aria-level="5">Fields</span>
###### <span class="codicon codicon-symbol-field symbol-field"></span>guild_id
Type: optional `uint64`

The guild ID of the guild to unban the user from.
###### <span class="codicon codicon-symbol-field symbol-field"></span>user_id
Type: optional `uint64`

The user ID of the user to unban.


<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>UnbanUserResponse
Used in `UnbanUser` endpoint.

This item has no fields.

------
#### <span class="codicon codicon-symbol-method symbol-method"></span>GetPinnedMessages
[protocol.chat.v1.GetPinnedMessagesRequest](#getpinnedmessagesrequest) -> [protocol.chat.v1.GetPinnedMessagesResponse](#getpinnedmessagesresponse)

Endpoint to get all pinned messages in a guild channel.

<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>GetPinnedMessagesRequest
Used in the `GetPinnedMessages` endpoint.

<span class="h5" aria-level="5">Fields</span>
###### <span class="codicon codicon-symbol-field symbol-field"></span>guild_id
Type: optional `uint64`

Guild ID of the guild where the channel is.
###### <span class="codicon codicon-symbol-field symbol-field"></span>channel_id
Type: optional `uint64`

Channel ID of the channel we want to get pins of.


<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>GetPinnedMessagesResponse
Used in the `GetPinnedMessages` endpoint.

<span class="h5" aria-level="5">Fields</span>
###### <span class="codicon codicon-symbol-field symbol-field"></span>pinned_message_ids
Type: repeated `uint64`

The IDs of the pinned messages.

------
#### <span class="codicon codicon-symbol-method symbol-method"></span>PinMessage
[protocol.chat.v1.PinMessageRequest](#pinmessagerequest) -> [protocol.chat.v1.PinMessageResponse](#pinmessageresponse)

Endpoint to pin a message in a guild channel.

<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>PinMessageRequest
Used in the `PinMessage` endpoint.

<span class="h5" aria-level="5">Fields</span>
###### <span class="codicon codicon-symbol-field symbol-field"></span>guild_id
Type: optional `uint64`

Guild ID of the guild where the channel is.
###### <span class="codicon codicon-symbol-field symbol-field"></span>channel_id
Type: optional `uint64`

Channel ID of the channel where the message is.
###### <span class="codicon codicon-symbol-field symbol-field"></span>message_id
Type: optional `uint64`

Message ID of the message we want to pin.


<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>PinMessageResponse
Used in the `UnpinMessage` endpoint.

This item has no fields.

------
#### <span class="codicon codicon-symbol-method symbol-method"></span>UnpinMessage
[protocol.chat.v1.UnpinMessageRequest](#unpinmessagerequest) -> [protocol.chat.v1.UnpinMessageResponse](#unpinmessageresponse)

Endpoint to unpin a message in a guild channel.

<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>UnpinMessageRequest
Used in the `UnpinMessage` endpoint.

<span class="h5" aria-level="5">Fields</span>
###### <span class="codicon codicon-symbol-field symbol-field"></span>guild_id
Type: optional `uint64`

Guild ID of the guild where the channel is.
###### <span class="codicon codicon-symbol-field symbol-field"></span>channel_id
Type: optional `uint64`

Channel ID of the channel where the message is.
###### <span class="codicon codicon-symbol-field symbol-field"></span>message_id
Type: optional `uint64`

Message ID of the message we want to unpin.


<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>UnpinMessageResponse
Used in the `UnpinMessage` endpoint.

This item has no fields.

------
#### <span class="codicon codicon-symbol-method symbol-method"></span>StreamEvents
streaming [protocol.chat.v1.StreamEventsRequest](#streameventsrequest) -> streaming [protocol.chat.v1.StreamEventsResponse](#streameventsresponse)

Endpoint to stream events from the homeserver.
By default, this endpoint will subscribe to all events.
Any guilds joined in the future will be added to the subscription as well.
Use the UnsubscribeFromAll event for unsubscribing from all current subscriptions and disable the automatic guild subscriptions
##### <span class="codicon codicon-symbol-structure symbol-structure"></span>StreamEventsResponse
Used in the `StreamEvents` endpoint.

<span class="h5" aria-level="5">Fields</span>
###### <span class="codicon codicon-symbol-field symbol-field"></span>chat
Type: optional [protocol.chat.v1.StreamEvent](#streamevent)

A chat event.
###### <span class="codicon codicon-symbol-field symbol-field"></span>emote
Type: optional [protocol.emote.v1.StreamEvent]({{< ref "protocol.emote.v1.md" >}}#streamevent)

A emote event.
###### <span class="codicon codicon-symbol-field symbol-field"></span>profile
Type: optional [protocol.profile.v1.StreamEvent]({{< ref "protocol.profile.v1.md" >}}#streamevent)

A profile event.

------
#### <span class="codicon codicon-symbol-method symbol-method"></span>AddReaction
[protocol.chat.v1.AddReactionRequest](#addreactionrequest) -> [protocol.chat.v1.AddReactionResponse](#addreactionresponse)

Endpoint to add a reaction to a message.

<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>AddReactionRequest
Used in `AddReaction` endpoint.

<span class="h5" aria-level="5">Fields</span>
###### <span class="codicon codicon-symbol-field symbol-field"></span>guild_id
Type: optional `uint64`

Guild ID of the guild where the channel is.
###### <span class="codicon codicon-symbol-field symbol-field"></span>channel_id
Type: optional `uint64`

Channel ID of the channel where the message is.
###### <span class="codicon codicon-symbol-field symbol-field"></span>message_id
Type: optional `uint64`

Message ID of the message we want to add a reaction to.
###### <span class="codicon codicon-symbol-field symbol-field"></span>emote
Type: optional [protocol.emote.v1.Emote]({{< ref "protocol.emote.v1.md" >}}#emote)

The emote we want to react with.


<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>AddReactionResponse
Used in `AddReaction` endpoint.

This item has no fields.

------
#### <span class="codicon codicon-symbol-method symbol-method"></span>RemoveReaction
[protocol.chat.v1.RemoveReactionRequest](#removereactionrequest) -> [protocol.chat.v1.RemoveReactionResponse](#removereactionresponse)

Endpoint to remove a reaction from a message.

<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>RemoveReactionRequest
Used in `RemoveReaction` endpoint.

<span class="h5" aria-level="5">Fields</span>
###### <span class="codicon codicon-symbol-field symbol-field"></span>guild_id
Type: optional `uint64`

Guild ID of the guild where the channel is.
###### <span class="codicon codicon-symbol-field symbol-field"></span>channel_id
Type: optional `uint64`

Channel ID of the channel where the message is.
###### <span class="codicon codicon-symbol-field symbol-field"></span>message_id
Type: optional `uint64`

Message ID of the message we want to remove a reaction.
###### <span class="codicon codicon-symbol-field symbol-field"></span>emote
Type: optional [protocol.emote.v1.Emote]({{< ref "protocol.emote.v1.md" >}}#emote)

The emote we want to remove the react of.


<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>RemoveReactionResponse
Used in `RemoveReaction` endpoint.

This item has no fields.

------
#### <span class="codicon codicon-symbol-method symbol-method"></span>GrantOwnership
[protocol.chat.v1.GrantOwnershipRequest](#grantownershiprequest) -> [protocol.chat.v1.GrantOwnershipResponse](#grantownershipresponse)

Endpoint to give ownership to someone else.

<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>GrantOwnershipRequest
Request for GrantOwnership

<span class="h5" aria-level="5">Fields</span>
###### <span class="codicon codicon-symbol-field symbol-field"></span>guild_id
Type: optional `uint64`

Guild ID of the guild to give a user ownership on.
###### <span class="codicon codicon-symbol-field symbol-field"></span>new_owner_id
Type: optional `uint64`

The ID of the new owner to add.


<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>GrantOwnershipResponse
Response for GrantOwnership

This item has no fields.

------
#### <span class="codicon codicon-symbol-method symbol-method"></span>GiveUpOwnership
[protocol.chat.v1.GiveUpOwnershipRequest](#giveupownershiprequest) -> [protocol.chat.v1.GiveUpOwnershipResponse](#giveupownershipresponse)

Endpoint to give up your own ownership.
Requires that at least one other person will still be owner.

<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>GiveUpOwnershipRequest
Request for GiveUpOwnership

<span class="h5" aria-level="5">Fields</span>
###### <span class="codicon codicon-symbol-field symbol-field"></span>guild_id
Type: optional `uint64`

Guild ID to give up your ownership on.


<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>GiveUpOwnershipResponse
Response for GiveUpOwnership

This item has no fields.

# Standalone Message Types 

## <span class="codicon codicon-symbol-structure symbol-structure"></span>Channel
An object representing a channel, without the ID.

<span class="h3" aria-level="3">Fields</span>
### <span class="codicon codicon-symbol-field symbol-field"></span>channel_name
Type: optional `string`

The name of this channel.
### <span class="codicon codicon-symbol-field symbol-field"></span>kind
Type: UNHANDLED | TYPE

The kind of channel this is.
Data does not get inherently stored in the Channel type
Instead, clients who understand a certain ChannelKind should
fetch them from a separate RPC.
### <span class="codicon codicon-symbol-field symbol-field"></span>metadata
Type: optional [protocol.harmonytypes.v1.Metadata]({{< ref "protocol.harmonytypes.v1.md" >}}#metadata)

The metadata of this channel.

------
## <span class="codicon codicon-symbol-structure symbol-structure"></span>ChannelWithId
The channel alongside with an ID.

<span class="h3" aria-level="3">Fields</span>
### <span class="codicon codicon-symbol-field symbol-field"></span>channel_id
Type: optional `uint64`

ID of the channel.
### <span class="codicon codicon-symbol-field symbol-field"></span>channel
Type: optional [protocol.chat.v1.Channel](#channel)

The channel data.

------
## <span class="codicon codicon-symbol-structure symbol-structure"></span>GuildKind
The kind of a guild.

<span class="h3" aria-level="3">Fields</span>
### <span class="codicon codicon-symbol-field symbol-field"></span>normal
Type: optional [protocol.chat.v1.GuildKind.Normal](#guildkindnormal)

A "normal" guild.
### <span class="codicon codicon-symbol-field symbol-field"></span>room
Type: optional [protocol.chat.v1.GuildKind.Room](#guildkindroom)

A "room" guild.
### <span class="codicon codicon-symbol-field symbol-field"></span>direct_message
Type: optional [protocol.chat.v1.GuildKind.DirectMessage](#guildkinddirectmessage)

A "direct message" guild.

------
## <span class="codicon codicon-symbol-structure symbol-structure"></span>GuildKind.Normal


This item has no fields.

------
## <span class="codicon codicon-symbol-structure symbol-structure"></span>GuildKind.Room


This item has no fields.

------
## <span class="codicon codicon-symbol-structure symbol-structure"></span>GuildKind.DirectMessage


<span class="h3" aria-level="3">Fields</span>
### <span class="codicon codicon-symbol-field symbol-field"></span>rejected
Type: optional `bool`



------
## <span class="codicon codicon-symbol-structure symbol-structure"></span>Guild
Object representing a guild without the ID part.

<span class="h3" aria-level="3">Fields</span>
### <span class="codicon codicon-symbol-field symbol-field"></span>name
Type: optional `string`

The name of the guild.

This will be empty if the guild kind is "direct message". See
the documentation of "direct message" guild kind on how to display
a name for those guilds.
### <span class="codicon codicon-symbol-field symbol-field"></span>picture
Type: optional `string`

The picture HMC of the guild.
### <span class="codicon codicon-symbol-field symbol-field"></span>owner_ids
Type: repeated `uint64`

User ID of the owners of the guild.
### <span class="codicon codicon-symbol-field symbol-field"></span>kind
Type: optional [protocol.chat.v1.GuildKind](#guildkind)

The kind of this guild.
### <span class="codicon codicon-symbol-field symbol-field"></span>metadata
Type: optional [protocol.harmonytypes.v1.Metadata]({{< ref "protocol.harmonytypes.v1.md" >}}#metadata)

Metadata of the guild.

------
## <span class="codicon codicon-symbol-structure symbol-structure"></span>GuildWithId
Object representing a guild with the ID part.

<span class="h3" aria-level="3">Fields</span>
### <span class="codicon codicon-symbol-field symbol-field"></span>guild_id
Type: optional `uint64`

The ID of the guild.
### <span class="codicon codicon-symbol-field symbol-field"></span>guild
Type: optional [protocol.chat.v1.Guild](#guild)

The guild.

------
## <span class="codicon codicon-symbol-structure symbol-structure"></span>Invite
Object representing an invite without the ID part.

<span class="h3" aria-level="3">Fields</span>
### <span class="codicon codicon-symbol-field symbol-field"></span>possible_uses
Type: optional `uint32`

Possible uses of this invite. A use of `0` means infinite uses.
### <span class="codicon codicon-symbol-field symbol-field"></span>use_count
Type: optional `uint32`

Total use count of this invite.

------
## <span class="codicon codicon-symbol-structure symbol-structure"></span>InviteWithId
Invite with ID.

<span class="h3" aria-level="3">Fields</span>
### <span class="codicon codicon-symbol-field symbol-field"></span>invite_id
Type: optional `string`

ID of the invite.
### <span class="codicon codicon-symbol-field symbol-field"></span>invite
Type: optional [protocol.chat.v1.Invite](#invite)

The invite data.

------
## <span class="codicon codicon-symbol-structure symbol-structure"></span>PendingInvite
A pending invite.

<span class="h3" aria-level="3">Fields</span>
### <span class="codicon codicon-symbol-field symbol-field"></span>invite_id
Type: optional `string`

Invite ID of the invite.
### <span class="codicon codicon-symbol-field symbol-field"></span>server_id
Type: optional `string`

Server ID of the server the inviter is on.
### <span class="codicon codicon-symbol-field symbol-field"></span>inviter_id
Type: optional `uint64`

User ID of the inviter.

------
## <span class="codicon codicon-symbol-structure symbol-structure"></span>GuildListEntry
Object representing a guild list entry.

<span class="h3" aria-level="3">Fields</span>
### <span class="codicon codicon-symbol-field symbol-field"></span>guild_id
Type: optional `uint64`

Guild ID of this guild entry.
### <span class="codicon codicon-symbol-field symbol-field"></span>server_id
Type: optional `string`

Server ID of the homeserver of this guild.

------
## <span class="codicon codicon-symbol-structure symbol-structure"></span>Overrides
Overrides provide a way to override the name and avatar of a message.

<span class="h3" aria-level="3">Fields</span>
### <span class="codicon codicon-symbol-field symbol-field"></span>username
Type: optional `string`

the overridden username.
### <span class="codicon codicon-symbol-field symbol-field"></span>avatar
Type: optional `string`

the overridden avatar.
### <span class="codicon codicon-symbol-field symbol-field"></span>user_defined
Type: optional `string`

a custom reason in case the builtin ones don't fit
### <span class="codicon codicon-symbol-field symbol-field"></span>webhook
Type: optional [protocol.harmonytypes.v1.Empty]({{< ref "protocol.harmonytypes.v1.md" >}}#empty)

the override occured because of a webhook
### <span class="codicon codicon-symbol-field symbol-field"></span>system_plurality
Type: optional [protocol.harmonytypes.v1.Empty]({{< ref "protocol.harmonytypes.v1.md" >}}#empty)

plurality, not system as in computer
### <span class="codicon codicon-symbol-field symbol-field"></span>system_message
Type: optional [protocol.harmonytypes.v1.Empty]({{< ref "protocol.harmonytypes.v1.md" >}}#empty)

the override occured because it was made by the server

Servers should reject messages sent by users with this override.
### <span class="codicon codicon-symbol-field symbol-field"></span>bridge
Type: optional [protocol.harmonytypes.v1.Empty]({{< ref "protocol.harmonytypes.v1.md" >}}#empty)

the override occured because of bridging

------
## <span class="codicon codicon-symbol-structure symbol-structure"></span>ActionPayload
The payload sent to the bot when an action is triggered.

<span class="h3" aria-level="3">Fields</span>
### <span class="codicon codicon-symbol-field symbol-field"></span>button
Type: optional [protocol.chat.v1.ActionPayload.Button](#actionpayloadbutton)

Payload for a button
### <span class="codicon codicon-symbol-field symbol-field"></span>dropdown
Type: optional [protocol.chat.v1.ActionPayload.Dropdown](#actionpayloaddropdown)

Payload for a dropdown
### <span class="codicon codicon-symbol-field symbol-field"></span>input
Type: optional [protocol.chat.v1.ActionPayload.Input](#actionpayloadinput)

Payload for a text input

------
## <span class="codicon codicon-symbol-structure symbol-structure"></span>ActionPayload.Button


<span class="h3" aria-level="3">Fields</span>
### <span class="codicon codicon-symbol-field symbol-field"></span>data
Type: optional `bytes`



------
## <span class="codicon codicon-symbol-structure symbol-structure"></span>ActionPayload.Dropdown


<span class="h3" aria-level="3">Fields</span>
### <span class="codicon codicon-symbol-field symbol-field"></span>choice
Type: optional `bytes`



------
## <span class="codicon codicon-symbol-structure symbol-structure"></span>ActionPayload.Input


<span class="h3" aria-level="3">Fields</span>
### <span class="codicon codicon-symbol-field symbol-field"></span>input
Type: optional `string`


### <span class="codicon codicon-symbol-field symbol-field"></span>data
Type: optional `bytes`



------
## <span class="codicon codicon-symbol-structure symbol-structure"></span>Action
Actions are interactive elements that can exist within an embed.

<span class="h3" aria-level="3">Fields</span>
### <span class="codicon codicon-symbol-field symbol-field"></span>action_type
Type: UNHANDLED | TYPE

Type of the action.
### <span class="codicon codicon-symbol-field symbol-field"></span>button
Type: optional [protocol.chat.v1.Action.Button](#actionbutton)

Button action.
### <span class="codicon codicon-symbol-field symbol-field"></span>dropdown
Type: optional [protocol.chat.v1.Action.Dropdown](#actiondropdown)

Dropdown action.
### <span class="codicon codicon-symbol-field symbol-field"></span>input
Type: optional [protocol.chat.v1.Action.Input](#actioninput)

Input action.

------
## <span class="codicon codicon-symbol-structure symbol-structure"></span>Action.Button
The action type. This is primarily used to change the look of the action to
the user (example: Destructive actions will have a red background).

<span class="h3" aria-level="3">Fields</span>
### <span class="codicon codicon-symbol-field symbol-field"></span>text
Type: optional `string`

a normal action.
### <span class="codicon codicon-symbol-field symbol-field"></span>data
Type: optional `bytes`

a primary action.
### <span class="codicon codicon-symbol-field symbol-field"></span>url
Type: optional `string`

A destructive / dangerous action.

------
## <span class="codicon codicon-symbol-structure symbol-structure"></span>Action.Dropdown


<span class="h3" aria-level="3">Fields</span>
### <span class="codicon codicon-symbol-field symbol-field"></span>label
Type: optional `string`


### <span class="codicon codicon-symbol-field symbol-field"></span>entries
Type: repeated [protocol.chat.v1.Action.Dropdown.Entry](#actiondropdownentry)



------
## <span class="codicon codicon-symbol-structure symbol-structure"></span>Action.Dropdown.Entry


<span class="h3" aria-level="3">Fields</span>
### <span class="codicon codicon-symbol-field symbol-field"></span>label
Type: optional `string`


### <span class="codicon codicon-symbol-field symbol-field"></span>data
Type: optional `bytes`



------
## <span class="codicon codicon-symbol-structure symbol-structure"></span>Action.Input


<span class="h3" aria-level="3">Fields</span>
### <span class="codicon codicon-symbol-field symbol-field"></span>label
Type: optional `string`


### <span class="codicon codicon-symbol-field symbol-field"></span>multiline
Type: optional `bool`


### <span class="codicon codicon-symbol-field symbol-field"></span>data
Type: optional `bytes`



------
## <span class="codicon codicon-symbol-structure symbol-structure"></span>Embed
Object representing a message embed.

<span class="h3" aria-level="3">Fields</span>
### <span class="codicon codicon-symbol-field symbol-field"></span>title
Type: optional `string`

Title of this embed.
### <span class="codicon codicon-symbol-field symbol-field"></span>body
Type: optional [protocol.chat.v1.FormattedText](#formattedtext)

Body text of this embed.
### <span class="codicon codicon-symbol-field symbol-field"></span>color
Type: optional `int32`

Color of this embed.
### <span class="codicon codicon-symbol-field symbol-field"></span>header
Type: optional [protocol.chat.v1.Embed.EmbedHeading](#embedembedheading)

Embed heading for the header.
### <span class="codicon codicon-symbol-field symbol-field"></span>footer
Type: optional [protocol.chat.v1.Embed.EmbedHeading](#embedembedheading)

Embed heading for the footer.
### <span class="codicon codicon-symbol-field symbol-field"></span>fields
Type: repeated [protocol.chat.v1.Embed.EmbedField](#embedembedfield)

Fields of this embed.

------
## <span class="codicon codicon-symbol-structure symbol-structure"></span>Embed.EmbedHeading


<span class="h3" aria-level="3">Fields</span>
### <span class="codicon codicon-symbol-field symbol-field"></span>text
Type: optional `string`


### <span class="codicon codicon-symbol-field symbol-field"></span>subtext
Type: optional `string`


### <span class="codicon codicon-symbol-field symbol-field"></span>url
Type: optional `string`


### <span class="codicon codicon-symbol-field symbol-field"></span>icon
Type: optional `string`



------
## <span class="codicon codicon-symbol-structure symbol-structure"></span>Embed.EmbedField


<span class="h3" aria-level="3">Fields</span>
### <span class="codicon codicon-symbol-field symbol-field"></span>title
Type: optional `string`


### <span class="codicon codicon-symbol-field symbol-field"></span>subtitle
Type: optional `string`


### <span class="codicon codicon-symbol-field symbol-field"></span>body
Type: optional [protocol.chat.v1.FormattedText](#formattedtext)


### <span class="codicon codicon-symbol-field symbol-field"></span>image_url
Type: optional `string`


### <span class="codicon codicon-symbol-field symbol-field"></span>presentation
Type: UNHANDLED | TYPE


### <span class="codicon codicon-symbol-field symbol-field"></span>actions
Type: repeated [protocol.chat.v1.Action](#action)



------
## <span class="codicon codicon-symbol-structure symbol-structure"></span>Minithumbnail
Minithumbnail is an extremely low-quality JPEG thumbnail.

The resolution is usually no larger than 64x64.

<span class="h3" aria-level="3">Fields</span>
### <span class="codicon codicon-symbol-field symbol-field"></span>width
Type: optional `uint32`

The width of the minithumbnail
### <span class="codicon codicon-symbol-field symbol-field"></span>height
Type: optional `uint32`

The height of the minithumbnail
### <span class="codicon codicon-symbol-field symbol-field"></span>data
Type: optional `bytes`

The JPEG data of the minithumbnail

------
## <span class="codicon codicon-symbol-structure symbol-structure"></span>Photo
Photo contains data about a photo.

Photo are always JPEG, and are
constrained to the following rules:

- width+height <= 10_000
- width <= height*20
- height <= width*20

Photos are preferably no more than 10MB
in size, and servers may compress as necessary.

<span class="h3" aria-level="3">Fields</span>
### <span class="codicon codicon-symbol-field symbol-field"></span>hmc
Type: optional `string`

The HMC URL of the photo.
### <span class="codicon codicon-symbol-field symbol-field"></span>name
Type: optional `string`

The filename of the photo.
### <span class="codicon codicon-symbol-field symbol-field"></span>file_size
Type: optional `uint32`

The size of the photo.
### <span class="codicon codicon-symbol-field symbol-field"></span>height
Type: optional `uint32`

The height of the photo, in pixels.
### <span class="codicon codicon-symbol-field symbol-field"></span>width
Type: optional `uint32`

The width of the photo, in pixels.
### <span class="codicon codicon-symbol-field symbol-field"></span>caption
Type: optional [protocol.chat.v1.FormattedText](#formattedtext)

The photo's caption.
### <span class="codicon codicon-symbol-field symbol-field"></span>minithumbnail
Type: optional [protocol.chat.v1.Minithumbnail](#minithumbnail)

A thumbnail representing the photo.

------
## <span class="codicon codicon-symbol-structure symbol-structure"></span>Attachment
Object representing a generic message attachment.

<span class="h3" aria-level="3">Fields</span>
### <span class="codicon codicon-symbol-field symbol-field"></span>id
Type: optional `string`

File ID of this attachment.
### <span class="codicon codicon-symbol-field symbol-field"></span>name
Type: optional `string`

Filename of this attachment.
### <span class="codicon codicon-symbol-field symbol-field"></span>mimetype
Type: optional `string`

Mimetype of this attachment.
### <span class="codicon codicon-symbol-field symbol-field"></span>size
Type: optional `uint32`

Size of this attachment.
### <span class="codicon codicon-symbol-field symbol-field"></span>caption
Type: optional [protocol.chat.v1.FormattedText](#formattedtext)

Caption of this attachment.

------
## <span class="codicon codicon-symbol-structure symbol-structure"></span>Content
Object representing a message's content.

<span class="h3" aria-level="3">Fields</span>
### <span class="codicon codicon-symbol-field symbol-field"></span>text_message
Type: optional [protocol.chat.v1.Content.TextContent](#contenttextcontent)

Text content.
### <span class="codicon codicon-symbol-field symbol-field"></span>embed_message
Type: optional [protocol.chat.v1.Content.EmbedContent](#contentembedcontent)

Embed content.
### <span class="codicon codicon-symbol-field symbol-field"></span>attachment_message
Type: optional [protocol.chat.v1.Content.AttachmentContent](#contentattachmentcontent)

Attachment content.
### <span class="codicon codicon-symbol-field symbol-field"></span>photo_message
Type: optional [protocol.chat.v1.Content.PhotoContent](#contentphotocontent)

Photo content.
### <span class="codicon codicon-symbol-field symbol-field"></span>invite_rejected
Type: optional [protocol.chat.v1.Content.InviteRejected](#contentinviterejected)

A user rejected an invite.
### <span class="codicon codicon-symbol-field symbol-field"></span>invite_accepted
Type: optional [protocol.chat.v1.Content.InviteAccepted](#contentinviteaccepted)

A user accepted an invite.
### <span class="codicon codicon-symbol-field symbol-field"></span>room_upgraded_to_guild
Type: optional [protocol.chat.v1.Content.RoomUpgradedToGuild](#contentroomupgradedtoguild)

A user upgraded a guild from "room" to "normal".

------
## <span class="codicon codicon-symbol-structure symbol-structure"></span>Content.TextContent


<span class="h3" aria-level="3">Fields</span>
### <span class="codicon codicon-symbol-field symbol-field"></span>content
Type: optional [protocol.chat.v1.FormattedText](#formattedtext)



------
## <span class="codicon codicon-symbol-structure symbol-structure"></span>Content.EmbedContent


<span class="h3" aria-level="3">Fields</span>
### <span class="codicon codicon-symbol-field symbol-field"></span>embeds
Type: repeated [protocol.chat.v1.Embed](#embed)



------
## <span class="codicon codicon-symbol-structure symbol-structure"></span>Content.AttachmentContent


<span class="h3" aria-level="3">Fields</span>
### <span class="codicon codicon-symbol-field symbol-field"></span>files
Type: repeated [protocol.chat.v1.Attachment](#attachment)



------
## <span class="codicon codicon-symbol-structure symbol-structure"></span>Content.PhotoContent


<span class="h3" aria-level="3">Fields</span>
### <span class="codicon codicon-symbol-field symbol-field"></span>photos
Type: repeated [protocol.chat.v1.Photo](#photo)



------
## <span class="codicon codicon-symbol-structure symbol-structure"></span>Content.InviteRejected


<span class="h3" aria-level="3">Fields</span>
### <span class="codicon codicon-symbol-field symbol-field"></span>invitee_id
Type: optional `uint64`


### <span class="codicon codicon-symbol-field symbol-field"></span>inviter_id
Type: optional `uint64`



------
## <span class="codicon codicon-symbol-structure symbol-structure"></span>Content.InviteAccepted


<span class="h3" aria-level="3">Fields</span>
### <span class="codicon codicon-symbol-field symbol-field"></span>invitee_id
Type: optional `uint64`


### <span class="codicon codicon-symbol-field symbol-field"></span>inviter_id
Type: optional `uint64`



------
## <span class="codicon codicon-symbol-structure symbol-structure"></span>Content.RoomUpgradedToGuild


<span class="h3" aria-level="3">Fields</span>
### <span class="codicon codicon-symbol-field symbol-field"></span>upgraded_by
Type: optional `uint64`



------
## <span class="codicon codicon-symbol-structure symbol-structure"></span>Reaction
Object representing a reaction.

<span class="h3" aria-level="3">Fields</span>
### <span class="codicon codicon-symbol-field symbol-field"></span>emote
Type: optional [protocol.emote.v1.Emote]({{< ref "protocol.emote.v1.md" >}}#emote)

Emote data for this reaction.

Emote's image ID is used as an identifier for unique reactions.
Emotes with the same names should be "deduplicated" by a client, by suffixing
their names with `~1`, `~2` and so on.
### <span class="codicon codicon-symbol-field symbol-field"></span>count
Type: optional `uint32`

How many reactions this reaction has.

------
## <span class="codicon codicon-symbol-structure symbol-structure"></span>Format
A format for text

<span class="h3" aria-level="3">Fields</span>
### <span class="codicon codicon-symbol-field symbol-field"></span>start
Type: optional `uint32`

where the format begins to apply to
### <span class="codicon codicon-symbol-field symbol-field"></span>length
Type: optional `uint32`

how many characters the format is
### <span class="codicon codicon-symbol-field symbol-field"></span>bold
Type: optional [protocol.chat.v1.Format.Bold](#formatbold)

a text format for bold text
### <span class="codicon codicon-symbol-field symbol-field"></span>italic
Type: optional [protocol.chat.v1.Format.Italic](#formatitalic)

a text format for italic text
### <span class="codicon codicon-symbol-field symbol-field"></span>underline
Type: optional [protocol.chat.v1.Format.Underline](#formatunderline)

a text format for underline text
### <span class="codicon codicon-symbol-field symbol-field"></span>monospace
Type: optional [protocol.chat.v1.Format.Monospace](#formatmonospace)

a text format for monospace text
### <span class="codicon codicon-symbol-field symbol-field"></span>superscript
Type: optional [protocol.chat.v1.Format.Superscript](#formatsuperscript)

a text format for superscript text
### <span class="codicon codicon-symbol-field symbol-field"></span>subscript
Type: optional [protocol.chat.v1.Format.Subscript](#formatsubscript)

a text format for subscript text
### <span class="codicon codicon-symbol-field symbol-field"></span>code_block
Type: optional [protocol.chat.v1.Format.CodeBlock](#formatcodeblock)

a text format for a codeblock
### <span class="codicon codicon-symbol-field symbol-field"></span>user_mention
Type: optional [protocol.chat.v1.Format.UserMention](#formatusermention)

a text format for a user mention
### <span class="codicon codicon-symbol-field symbol-field"></span>role_mention
Type: optional [protocol.chat.v1.Format.RoleMention](#formatrolemention)

a text format for a role mention
### <span class="codicon codicon-symbol-field symbol-field"></span>channel_mention
Type: optional [protocol.chat.v1.Format.ChannelMention](#formatchannelmention)

a text format for a channel mention
### <span class="codicon codicon-symbol-field symbol-field"></span>guild_mention
Type: optional [protocol.chat.v1.Format.GuildMention](#formatguildmention)

a text format for a guild mention
### <span class="codicon codicon-symbol-field symbol-field"></span>emoji
Type: optional [protocol.chat.v1.Format.Emoji](#formatemoji)

a text format for an emoji
### <span class="codicon codicon-symbol-field symbol-field"></span>color
Type: optional [protocol.chat.v1.Format.Color](#formatcolor)

a text format for coloured text
### <span class="codicon codicon-symbol-field symbol-field"></span>localization
Type: optional [protocol.chat.v1.Format.Localization](#formatlocalization)

a text format for localization

------
## <span class="codicon codicon-symbol-structure symbol-structure"></span>Format.Bold


This item has no fields.

------
## <span class="codicon codicon-symbol-structure symbol-structure"></span>Format.Italic


This item has no fields.

------
## <span class="codicon codicon-symbol-structure symbol-structure"></span>Format.Underline


This item has no fields.

------
## <span class="codicon codicon-symbol-structure symbol-structure"></span>Format.Monospace


This item has no fields.

------
## <span class="codicon codicon-symbol-structure symbol-structure"></span>Format.Superscript


This item has no fields.

------
## <span class="codicon codicon-symbol-structure symbol-structure"></span>Format.Subscript


This item has no fields.

------
## <span class="codicon codicon-symbol-structure symbol-structure"></span>Format.CodeBlock


<span class="h3" aria-level="3">Fields</span>
### <span class="codicon codicon-symbol-field symbol-field"></span>language
Type: optional `string`



------
## <span class="codicon codicon-symbol-structure symbol-structure"></span>Format.UserMention


<span class="h3" aria-level="3">Fields</span>
### <span class="codicon codicon-symbol-field symbol-field"></span>user_id
Type: optional `uint64`



------
## <span class="codicon codicon-symbol-structure symbol-structure"></span>Format.RoleMention


<span class="h3" aria-level="3">Fields</span>
### <span class="codicon codicon-symbol-field symbol-field"></span>role_id
Type: optional `uint64`



------
## <span class="codicon codicon-symbol-structure symbol-structure"></span>Format.ChannelMention


<span class="h3" aria-level="3">Fields</span>
### <span class="codicon codicon-symbol-field symbol-field"></span>channel_id
Type: optional `uint64`



------
## <span class="codicon codicon-symbol-structure symbol-structure"></span>Format.GuildMention


<span class="h3" aria-level="3">Fields</span>
### <span class="codicon codicon-symbol-field symbol-field"></span>guild_id
Type: optional `uint64`


### <span class="codicon codicon-symbol-field symbol-field"></span>homeserver
Type: optional `string`



------
## <span class="codicon codicon-symbol-structure symbol-structure"></span>Format.Emoji


<span class="h3" aria-level="3">Fields</span>
### <span class="codicon codicon-symbol-field symbol-field"></span>image_hmc
Type: optional `string`


### <span class="codicon codicon-symbol-field symbol-field"></span>pack_id
Type: optional `uint64`



------
## <span class="codicon codicon-symbol-structure symbol-structure"></span>Format.Color


<span class="h3" aria-level="3">Fields</span>
### <span class="codicon codicon-symbol-field symbol-field"></span>kind
Type: UNHANDLED | TYPE



------
## <span class="codicon codicon-symbol-structure symbol-structure"></span>Format.Localization


<span class="h3" aria-level="3">Fields</span>
### <span class="codicon codicon-symbol-field symbol-field"></span>i18n_code
Type: optional `string`



------
## <span class="codicon codicon-symbol-structure symbol-structure"></span>FormattedText
Formatted text

<span class="h3" aria-level="3">Fields</span>
### <span class="codicon codicon-symbol-field symbol-field"></span>text
Type: optional `string`

The textual content of a message
### <span class="codicon codicon-symbol-field symbol-field"></span>format
Type: repeated [protocol.chat.v1.Format](#format)

The formats for a message

------
## <span class="codicon codicon-symbol-structure symbol-structure"></span>Message
Object representing a message without the ID part.

<span class="h3" aria-level="3">Fields</span>
### <span class="codicon codicon-symbol-field symbol-field"></span>metadata
Type: optional [protocol.harmonytypes.v1.Metadata]({{< ref "protocol.harmonytypes.v1.md" >}}#metadata)

Metadata of this message.
### <span class="codicon codicon-symbol-field symbol-field"></span>overrides
Type: optional [protocol.chat.v1.Overrides](#overrides)

Overrides of this message.
### <span class="codicon codicon-symbol-field symbol-field"></span>author_id
Type: optional `uint64`

User ID of the user who sent this message.
### <span class="codicon codicon-symbol-field symbol-field"></span>created_at
Type: optional `uint64`

When this message was created, in miliseconds since unix epoch
### <span class="codicon codicon-symbol-field symbol-field"></span>edited_at
Type: optional `uint64`

The most recent time this message was edited, in milliseconds since unix epoch
### <span class="codicon codicon-symbol-field symbol-field"></span>in_reply_to
Type: optional `uint64`

The message this message is a reply to.
### <span class="codicon codicon-symbol-field symbol-field"></span>content
Type: optional [protocol.chat.v1.Content](#content)

The content of the message.
### <span class="codicon codicon-symbol-field symbol-field"></span>reactions
Type: repeated [protocol.chat.v1.Reaction](#reaction)

The reactions of the message.

------
## <span class="codicon codicon-symbol-structure symbol-structure"></span>MessageWithId
Object representing a message with it's ID.

<span class="h3" aria-level="3">Fields</span>
### <span class="codicon codicon-symbol-field symbol-field"></span>message_id
Type: optional `uint64`

ID of the message.
### <span class="codicon codicon-symbol-field symbol-field"></span>message
Type: optional [protocol.chat.v1.Message](#message)

The message data.

------
## <span class="codicon codicon-symbol-structure symbol-structure"></span>Permission
Object representing a single permission node.

<span class="h3" aria-level="3">Fields</span>
### <span class="codicon codicon-symbol-field symbol-field"></span>matches
Type: optional `string`

the permission matcher. (example: roles.manage)
### <span class="codicon codicon-symbol-field symbol-field"></span>ok
Type: optional `bool`

whether the permission is allowed or not.

------
## <span class="codicon codicon-symbol-structure symbol-structure"></span>Role
Object representing a role without the ID.

<span class="h3" aria-level="3">Fields</span>
### <span class="codicon codicon-symbol-field symbol-field"></span>name
Type: optional `string`

the role name.
### <span class="codicon codicon-symbol-field symbol-field"></span>color
Type: optional `int32`

the role color.
### <span class="codicon codicon-symbol-field symbol-field"></span>hoist
Type: optional `bool`

whether the role is hoisted or not.
### <span class="codicon codicon-symbol-field symbol-field"></span>pingable
Type: optional `bool`

whether the role is mentionable or not.

------
## <span class="codicon codicon-symbol-structure symbol-structure"></span>RoleWithId
Object representing a role with it's ID.

The role ID for the default role in a guild should always be 0.

<span class="h3" aria-level="3">Fields</span>
### <span class="codicon codicon-symbol-field symbol-field"></span>role_id
Type: optional `uint64`

ID of the role.
### <span class="codicon codicon-symbol-field symbol-field"></span>role
Type: optional [protocol.chat.v1.Role](#role)

The role data.

------
## <span class="codicon codicon-symbol-structure symbol-structure"></span>StreamEventsRequest
Request type for use in the `StreamEvents` endpoint.
By default, this endpoint will subscribe to all events.
Any guilds joined in the future will be added to the subscription as well.
Use the UnsubscribeFromAll event for unsubscribing from all current subscriptions and disable the automatic guild subscriptions

<span class="h3" aria-level="3">Fields</span>
### <span class="codicon codicon-symbol-field symbol-field"></span>subscribe_to_guild
Type: optional [protocol.chat.v1.StreamEventsRequest.SubscribeToGuild](#streameventsrequestsubscribetoguild)

Subscribe to the guild event source.
### <span class="codicon codicon-symbol-field symbol-field"></span>subscribe_to_actions
Type: optional [protocol.chat.v1.StreamEventsRequest.SubscribeToActions](#streameventsrequestsubscribetoactions)

Subscribe to the action event source.
### <span class="codicon codicon-symbol-field symbol-field"></span>subscribe_to_homeserver_events
Type: optional [protocol.chat.v1.StreamEventsRequest.SubscribeToHomeserverEvents](#streameventsrequestsubscribetohomeserverevents)

Subscribe to the homeserver event source.
### <span class="codicon codicon-symbol-field symbol-field"></span>unsubscribe_from_all
Type: optional [protocol.chat.v1.StreamEventsRequest.UnsubscribeFromAll](#streameventsrequestunsubscribefromall)

Unsubscribe from all events.

------
## <span class="codicon codicon-symbol-structure symbol-structure"></span>StreamEventsRequest.SubscribeToGuild


<span class="h3" aria-level="3">Fields</span>
### <span class="codicon codicon-symbol-field symbol-field"></span>guild_id
Type: optional `uint64`



------
## <span class="codicon codicon-symbol-structure symbol-structure"></span>StreamEventsRequest.SubscribeToActions


This item has no fields.

------
## <span class="codicon codicon-symbol-structure symbol-structure"></span>StreamEventsRequest.SubscribeToHomeserverEvents


This item has no fields.

------
## <span class="codicon codicon-symbol-structure symbol-structure"></span>StreamEventsRequest.UnsubscribeFromAll


This item has no fields.

------
## <span class="codicon codicon-symbol-structure symbol-structure"></span>StreamEvent
Describes an event.

<span class="h3" aria-level="3">Fields</span>
### <span class="codicon codicon-symbol-field symbol-field"></span>guild_added_to_list
Type: optional [protocol.chat.v1.StreamEvent.GuildAddedToList](#streameventguildaddedtolist)

Send the guild added to list event.
### <span class="codicon codicon-symbol-field symbol-field"></span>guild_removed_from_list
Type: optional [protocol.chat.v1.StreamEvent.GuildRemovedFromList](#streameventguildremovedfromlist)

Send the guild removed from list event.
### <span class="codicon codicon-symbol-field symbol-field"></span>action_performed
Type: optional [protocol.chat.v1.StreamEvent.ActionPerformed](#streameventactionperformed)

Send the action performed event.
### <span class="codicon codicon-symbol-field symbol-field"></span>sent_message
Type: optional [protocol.chat.v1.StreamEvent.MessageSent](#streameventmessagesent)

Send the message sent event.
### <span class="codicon codicon-symbol-field symbol-field"></span>edited_message
Type: optional [protocol.chat.v1.StreamEvent.MessageUpdated](#streameventmessageupdated)

Send the message updated event.
### <span class="codicon codicon-symbol-field symbol-field"></span>deleted_message
Type: optional [protocol.chat.v1.StreamEvent.MessageDeleted](#streameventmessagedeleted)

Send the message deleted event.
### <span class="codicon codicon-symbol-field symbol-field"></span>created_channel
Type: optional [protocol.chat.v1.StreamEvent.ChannelCreated](#streameventchannelcreated)

Send the channel created event.
### <span class="codicon codicon-symbol-field symbol-field"></span>edited_channel
Type: optional [protocol.chat.v1.StreamEvent.ChannelUpdated](#streameventchannelupdated)

Send the channel updated event.
### <span class="codicon codicon-symbol-field symbol-field"></span>deleted_channel
Type: optional [protocol.chat.v1.StreamEvent.ChannelDeleted](#streameventchanneldeleted)

Send the channel deleted event.
### <span class="codicon codicon-symbol-field symbol-field"></span>edited_guild
Type: optional [protocol.chat.v1.StreamEvent.GuildUpdated](#streameventguildupdated)

Send the guild updated event.
### <span class="codicon codicon-symbol-field symbol-field"></span>deleted_guild
Type: optional [protocol.chat.v1.StreamEvent.GuildDeleted](#streameventguilddeleted)

Send the guild deleted event.
### <span class="codicon codicon-symbol-field symbol-field"></span>joined_member
Type: optional [protocol.chat.v1.StreamEvent.MemberJoined](#streameventmemberjoined)

Send the member joined event.
### <span class="codicon codicon-symbol-field symbol-field"></span>left_member
Type: optional [protocol.chat.v1.StreamEvent.MemberLeft](#streameventmemberleft)

Send the member left event.
### <span class="codicon codicon-symbol-field symbol-field"></span>typing
Type: optional [protocol.chat.v1.StreamEvent.Typing](#streameventtyping)

Send the typing event.
### <span class="codicon codicon-symbol-field symbol-field"></span>role_created
Type: optional [protocol.chat.v1.StreamEvent.RoleCreated](#streameventrolecreated)

Send the role created event.
### <span class="codicon codicon-symbol-field symbol-field"></span>role_deleted
Type: optional [protocol.chat.v1.StreamEvent.RoleDeleted](#streameventroledeleted)

Send the role deleted event.
### <span class="codicon codicon-symbol-field symbol-field"></span>role_moved
Type: optional [protocol.chat.v1.StreamEvent.RoleMoved](#streameventrolemoved)

Send the role moved event.
### <span class="codicon codicon-symbol-field symbol-field"></span>role_updated
Type: optional [protocol.chat.v1.StreamEvent.RoleUpdated](#streameventroleupdated)

Send the role updated event.
### <span class="codicon codicon-symbol-field symbol-field"></span>role_perms_updated
Type: optional [protocol.chat.v1.StreamEvent.RolePermissionsUpdated](#streameventrolepermissionsupdated)

Send the role perms updated event.
### <span class="codicon codicon-symbol-field symbol-field"></span>user_roles_updated
Type: optional [protocol.chat.v1.StreamEvent.UserRolesUpdated](#streameventuserrolesupdated)

Send the user roles updated event.
### <span class="codicon codicon-symbol-field symbol-field"></span>permission_updated
Type: optional [protocol.chat.v1.StreamEvent.PermissionUpdated](#streameventpermissionupdated)

Send the permission updated event.
### <span class="codicon codicon-symbol-field symbol-field"></span>channels_reordered
Type: optional [protocol.chat.v1.StreamEvent.ChannelsReordered](#streameventchannelsreordered)

The channels have been completely reordered.
### <span class="codicon codicon-symbol-field symbol-field"></span>edited_channel_position
Type: optional [protocol.chat.v1.StreamEvent.ChannelPositionUpdated](#streameventchannelpositionupdated)

Send the channel position updated event.
### <span class="codicon codicon-symbol-field symbol-field"></span>message_pinned
Type: optional [protocol.chat.v1.StreamEvent.MessagePinned](#streameventmessagepinned)

Send the message pinned event.
### <span class="codicon codicon-symbol-field symbol-field"></span>message_unpinned
Type: optional [protocol.chat.v1.StreamEvent.MessageUnpinned](#streameventmessageunpinned)

Send the message unpinned event.
### <span class="codicon codicon-symbol-field symbol-field"></span>reaction_updated
Type: optional [protocol.chat.v1.StreamEvent.ReactionUpdated](#streameventreactionupdated)

Send the reaction updated event.
### <span class="codicon codicon-symbol-field symbol-field"></span>owner_added
Type: optional [protocol.chat.v1.StreamEvent.OwnerAdded](#streameventowneradded)

Send the owner added event.
### <span class="codicon codicon-symbol-field symbol-field"></span>owner_removed
Type: optional [protocol.chat.v1.StreamEvent.OwnerRemoved](#streameventownerremoved)

Send the owner removed event.
### <span class="codicon codicon-symbol-field symbol-field"></span>invite_received
Type: optional [protocol.chat.v1.StreamEvent.InviteReceived](#streameventinvitereceived)

Send the guild invite received event.
### <span class="codicon codicon-symbol-field symbol-field"></span>invite_rejected
Type: optional [protocol.chat.v1.StreamEvent.InviteRejected](#streameventinviterejected)

Send the guild invite rejected event.

------
## <span class="codicon codicon-symbol-structure symbol-structure"></span>StreamEvent.MessageSent


<span class="h3" aria-level="3">Fields</span>
### <span class="codicon codicon-symbol-field symbol-field"></span>echo_id
Type: optional `uint64`


### <span class="codicon codicon-symbol-field symbol-field"></span>guild_id
Type: optional `uint64`


### <span class="codicon codicon-symbol-field symbol-field"></span>channel_id
Type: optional `uint64`


### <span class="codicon codicon-symbol-field symbol-field"></span>message_id
Type: optional `uint64`


### <span class="codicon codicon-symbol-field symbol-field"></span>message
Type: optional [protocol.chat.v1.Message](#message)



------
## <span class="codicon codicon-symbol-structure symbol-structure"></span>StreamEvent.MessageUpdated


<span class="h3" aria-level="3">Fields</span>
### <span class="codicon codicon-symbol-field symbol-field"></span>guild_id
Type: optional `uint64`


### <span class="codicon codicon-symbol-field symbol-field"></span>channel_id
Type: optional `uint64`


### <span class="codicon codicon-symbol-field symbol-field"></span>message_id
Type: optional `uint64`


### <span class="codicon codicon-symbol-field symbol-field"></span>edited_at
Type: optional `uint64`


### <span class="codicon codicon-symbol-field symbol-field"></span>new_content
Type: optional [protocol.chat.v1.FormattedText](#formattedtext)



------
## <span class="codicon codicon-symbol-structure symbol-structure"></span>StreamEvent.MessageDeleted


<span class="h3" aria-level="3">Fields</span>
### <span class="codicon codicon-symbol-field symbol-field"></span>guild_id
Type: optional `uint64`


### <span class="codicon codicon-symbol-field symbol-field"></span>channel_id
Type: optional `uint64`


### <span class="codicon codicon-symbol-field symbol-field"></span>message_id
Type: optional `uint64`



------
## <span class="codicon codicon-symbol-structure symbol-structure"></span>StreamEvent.ChannelCreated


<span class="h3" aria-level="3">Fields</span>
### <span class="codicon codicon-symbol-field symbol-field"></span>guild_id
Type: optional `uint64`


### <span class="codicon codicon-symbol-field symbol-field"></span>channel_id
Type: optional `uint64`


### <span class="codicon codicon-symbol-field symbol-field"></span>name
Type: optional `string`


### <span class="codicon codicon-symbol-field symbol-field"></span>position
Type: optional [protocol.harmonytypes.v1.ItemPosition]({{< ref "protocol.harmonytypes.v1.md" >}}#itemposition)


### <span class="codicon codicon-symbol-field symbol-field"></span>kind
Type: UNHANDLED | TYPE


### <span class="codicon codicon-symbol-field symbol-field"></span>metadata
Type: optional [protocol.harmonytypes.v1.Metadata]({{< ref "protocol.harmonytypes.v1.md" >}}#metadata)



------
## <span class="codicon codicon-symbol-structure symbol-structure"></span>StreamEvent.ChannelUpdated


<span class="h3" aria-level="3">Fields</span>
### <span class="codicon codicon-symbol-field symbol-field"></span>guild_id
Type: optional `uint64`


### <span class="codicon codicon-symbol-field symbol-field"></span>channel_id
Type: optional `uint64`


### <span class="codicon codicon-symbol-field symbol-field"></span>new_name
Type: optional `string`


### <span class="codicon codicon-symbol-field symbol-field"></span>new_metadata
Type: optional [protocol.harmonytypes.v1.Metadata]({{< ref "protocol.harmonytypes.v1.md" >}}#metadata)



------
## <span class="codicon codicon-symbol-structure symbol-structure"></span>StreamEvent.ChannelPositionUpdated


<span class="h3" aria-level="3">Fields</span>
### <span class="codicon codicon-symbol-field symbol-field"></span>guild_id
Type: optional `uint64`


### <span class="codicon codicon-symbol-field symbol-field"></span>channel_id
Type: optional `uint64`


### <span class="codicon codicon-symbol-field symbol-field"></span>new_position
Type: optional [protocol.harmonytypes.v1.ItemPosition]({{< ref "protocol.harmonytypes.v1.md" >}}#itemposition)



------
## <span class="codicon codicon-symbol-structure symbol-structure"></span>StreamEvent.ChannelsReordered


<span class="h3" aria-level="3">Fields</span>
### <span class="codicon codicon-symbol-field symbol-field"></span>guild_id
Type: optional `uint64`


### <span class="codicon codicon-symbol-field symbol-field"></span>channel_ids
Type: repeated `uint64`



------
## <span class="codicon codicon-symbol-structure symbol-structure"></span>StreamEvent.ChannelDeleted


<span class="h3" aria-level="3">Fields</span>
### <span class="codicon codicon-symbol-field symbol-field"></span>guild_id
Type: optional `uint64`


### <span class="codicon codicon-symbol-field symbol-field"></span>channel_id
Type: optional `uint64`



------
## <span class="codicon codicon-symbol-structure symbol-structure"></span>StreamEvent.GuildUpdated


<span class="h3" aria-level="3">Fields</span>
### <span class="codicon codicon-symbol-field symbol-field"></span>guild_id
Type: optional `uint64`


### <span class="codicon codicon-symbol-field symbol-field"></span>new_name
Type: optional `string`


### <span class="codicon codicon-symbol-field symbol-field"></span>new_picture
Type: optional `string`


### <span class="codicon codicon-symbol-field symbol-field"></span>new_metadata
Type: optional [protocol.harmonytypes.v1.Metadata]({{< ref "protocol.harmonytypes.v1.md" >}}#metadata)



------
## <span class="codicon codicon-symbol-structure symbol-structure"></span>StreamEvent.GuildDeleted


<span class="h3" aria-level="3">Fields</span>
### <span class="codicon codicon-symbol-field symbol-field"></span>guild_id
Type: optional `uint64`



------
## <span class="codicon codicon-symbol-structure symbol-structure"></span>StreamEvent.MemberJoined


<span class="h3" aria-level="3">Fields</span>
### <span class="codicon codicon-symbol-field symbol-field"></span>member_id
Type: optional `uint64`


### <span class="codicon codicon-symbol-field symbol-field"></span>guild_id
Type: optional `uint64`



------
## <span class="codicon codicon-symbol-structure symbol-structure"></span>StreamEvent.MemberLeft


<span class="h3" aria-level="3">Fields</span>
### <span class="codicon codicon-symbol-field symbol-field"></span>member_id
Type: optional `uint64`


### <span class="codicon codicon-symbol-field symbol-field"></span>guild_id
Type: optional `uint64`


### <span class="codicon codicon-symbol-field symbol-field"></span>leave_reason
Type: UNHANDLED | TYPE



------
## <span class="codicon codicon-symbol-structure symbol-structure"></span>StreamEvent.GuildAddedToList


<span class="h3" aria-level="3">Fields</span>
### <span class="codicon codicon-symbol-field symbol-field"></span>guild_id
Type: optional `uint64`


### <span class="codicon codicon-symbol-field symbol-field"></span>homeserver
Type: optional `string`



------
## <span class="codicon codicon-symbol-structure symbol-structure"></span>StreamEvent.GuildRemovedFromList


<span class="h3" aria-level="3">Fields</span>
### <span class="codicon codicon-symbol-field symbol-field"></span>guild_id
Type: optional `uint64`


### <span class="codicon codicon-symbol-field symbol-field"></span>homeserver
Type: optional `string`



------
## <span class="codicon codicon-symbol-structure symbol-structure"></span>StreamEvent.ActionPerformed


<span class="h3" aria-level="3">Fields</span>
### <span class="codicon codicon-symbol-field symbol-field"></span>guild_id
Type: optional `uint64`


### <span class="codicon codicon-symbol-field symbol-field"></span>channel_id
Type: optional `uint64`


### <span class="codicon codicon-symbol-field symbol-field"></span>message_id
Type: optional `uint64`


### <span class="codicon codicon-symbol-field symbol-field"></span>user_id
Type: optional `uint64`


### <span class="codicon codicon-symbol-field symbol-field"></span>payload
Type: optional [protocol.chat.v1.ActionPayload](#actionpayload)



------
## <span class="codicon codicon-symbol-structure symbol-structure"></span>StreamEvent.RoleMoved


<span class="h3" aria-level="3">Fields</span>
### <span class="codicon codicon-symbol-field symbol-field"></span>guild_id
Type: optional `uint64`


### <span class="codicon codicon-symbol-field symbol-field"></span>role_id
Type: optional `uint64`


### <span class="codicon codicon-symbol-field symbol-field"></span>new_position
Type: optional [protocol.harmonytypes.v1.ItemPosition]({{< ref "protocol.harmonytypes.v1.md" >}}#itemposition)



------
## <span class="codicon codicon-symbol-structure symbol-structure"></span>StreamEvent.RoleDeleted


<span class="h3" aria-level="3">Fields</span>
### <span class="codicon codicon-symbol-field symbol-field"></span>guild_id
Type: optional `uint64`


### <span class="codicon codicon-symbol-field symbol-field"></span>role_id
Type: optional `uint64`



------
## <span class="codicon codicon-symbol-structure symbol-structure"></span>StreamEvent.RoleCreated


<span class="h3" aria-level="3">Fields</span>
### <span class="codicon codicon-symbol-field symbol-field"></span>guild_id
Type: optional `uint64`


### <span class="codicon codicon-symbol-field symbol-field"></span>role_id
Type: optional `uint64`


### <span class="codicon codicon-symbol-field symbol-field"></span>name
Type: optional `string`


### <span class="codicon codicon-symbol-field symbol-field"></span>color
Type: optional `int32`


### <span class="codicon codicon-symbol-field symbol-field"></span>hoist
Type: optional `bool`


### <span class="codicon codicon-symbol-field symbol-field"></span>pingable
Type: optional `bool`



------
## <span class="codicon codicon-symbol-structure symbol-structure"></span>StreamEvent.RoleUpdated


<span class="h3" aria-level="3">Fields</span>
### <span class="codicon codicon-symbol-field symbol-field"></span>guild_id
Type: optional `uint64`


### <span class="codicon codicon-symbol-field symbol-field"></span>role_id
Type: optional `uint64`


### <span class="codicon codicon-symbol-field symbol-field"></span>new_name
Type: optional `string`


### <span class="codicon codicon-symbol-field symbol-field"></span>new_color
Type: optional `int32`


### <span class="codicon codicon-symbol-field symbol-field"></span>new_hoist
Type: optional `bool`


### <span class="codicon codicon-symbol-field symbol-field"></span>new_pingable
Type: optional `bool`



------
## <span class="codicon codicon-symbol-structure symbol-structure"></span>StreamEvent.RolePermissionsUpdated


<span class="h3" aria-level="3">Fields</span>
### <span class="codicon codicon-symbol-field symbol-field"></span>guild_id
Type: optional `uint64`


### <span class="codicon codicon-symbol-field symbol-field"></span>channel_id
Type: optional `uint64`


### <span class="codicon codicon-symbol-field symbol-field"></span>role_id
Type: optional `uint64`


### <span class="codicon codicon-symbol-field symbol-field"></span>new_perms
Type: repeated [protocol.chat.v1.Permission](#permission)



------
## <span class="codicon codicon-symbol-structure symbol-structure"></span>StreamEvent.UserRolesUpdated


<span class="h3" aria-level="3">Fields</span>
### <span class="codicon codicon-symbol-field symbol-field"></span>guild_id
Type: optional `uint64`


### <span class="codicon codicon-symbol-field symbol-field"></span>user_id
Type: optional `uint64`


### <span class="codicon codicon-symbol-field symbol-field"></span>new_role_ids
Type: repeated `uint64`



------
## <span class="codicon codicon-symbol-structure symbol-structure"></span>StreamEvent.Typing


<span class="h3" aria-level="3">Fields</span>
### <span class="codicon codicon-symbol-field symbol-field"></span>user_id
Type: optional `uint64`


### <span class="codicon codicon-symbol-field symbol-field"></span>guild_id
Type: optional `uint64`


### <span class="codicon codicon-symbol-field symbol-field"></span>channel_id
Type: optional `uint64`



------
## <span class="codicon codicon-symbol-structure symbol-structure"></span>StreamEvent.PermissionUpdated


<span class="h3" aria-level="3">Fields</span>
### <span class="codicon codicon-symbol-field symbol-field"></span>guild_id
Type: optional `uint64`


### <span class="codicon codicon-symbol-field symbol-field"></span>channel_id
Type: optional `uint64`


### <span class="codicon codicon-symbol-field symbol-field"></span>query
Type: optional `string`


### <span class="codicon codicon-symbol-field symbol-field"></span>ok
Type: optional `bool`



------
## <span class="codicon codicon-symbol-structure symbol-structure"></span>StreamEvent.MessagePinned


<span class="h3" aria-level="3">Fields</span>
### <span class="codicon codicon-symbol-field symbol-field"></span>guild_id
Type: optional `uint64`


### <span class="codicon codicon-symbol-field symbol-field"></span>channel_id
Type: optional `uint64`


### <span class="codicon codicon-symbol-field symbol-field"></span>message_id
Type: optional `uint64`



------
## <span class="codicon codicon-symbol-structure symbol-structure"></span>StreamEvent.MessageUnpinned


<span class="h3" aria-level="3">Fields</span>
### <span class="codicon codicon-symbol-field symbol-field"></span>guild_id
Type: optional `uint64`


### <span class="codicon codicon-symbol-field symbol-field"></span>channel_id
Type: optional `uint64`


### <span class="codicon codicon-symbol-field symbol-field"></span>message_id
Type: optional `uint64`



------
## <span class="codicon codicon-symbol-structure symbol-structure"></span>StreamEvent.ReactionUpdated


<span class="h3" aria-level="3">Fields</span>
### <span class="codicon codicon-symbol-field symbol-field"></span>guild_id
Type: optional `uint64`


### <span class="codicon codicon-symbol-field symbol-field"></span>channel_id
Type: optional `uint64`


### <span class="codicon codicon-symbol-field symbol-field"></span>message_id
Type: optional `uint64`


### <span class="codicon codicon-symbol-field symbol-field"></span>reaction
Type: optional [protocol.chat.v1.Reaction](#reaction)



------
## <span class="codicon codicon-symbol-structure symbol-structure"></span>StreamEvent.OwnerAdded


<span class="h3" aria-level="3">Fields</span>
### <span class="codicon codicon-symbol-field symbol-field"></span>user_id
Type: optional `uint64`



------
## <span class="codicon codicon-symbol-structure symbol-structure"></span>StreamEvent.OwnerRemoved


<span class="h3" aria-level="3">Fields</span>
### <span class="codicon codicon-symbol-field symbol-field"></span>user_id
Type: optional `uint64`



------
## <span class="codicon codicon-symbol-structure symbol-structure"></span>StreamEvent.InviteReceived


<span class="h3" aria-level="3">Fields</span>
### <span class="codicon codicon-symbol-field symbol-field"></span>invite_id
Type: optional `string`


### <span class="codicon codicon-symbol-field symbol-field"></span>server_id
Type: optional `string`


### <span class="codicon codicon-symbol-field symbol-field"></span>inviter_id
Type: optional `uint64`



------
## <span class="codicon codicon-symbol-structure symbol-structure"></span>StreamEvent.InviteRejected


<span class="h3" aria-level="3">Fields</span>
### <span class="codicon codicon-symbol-field symbol-field"></span>guild_id
Type: optional `uint64`


### <span class="codicon codicon-symbol-field symbol-field"></span>invite_id
Type: optional `string`


### <span class="codicon codicon-symbol-field symbol-field"></span>user_id
Type: optional `uint64`



# Enums 

## <span class="codicon codicon-symbol-enum symbol-enum"></span>ChannelKind

What kind the channel is.
### <span class="codicon codicon-symbol-enum-member symbol-enum-member"></span>CHANNEL_KIND_TEXT_UNSPECIFIED
A text channel. Allows you to simply send messages to a group of people.

### <span class="codicon codicon-symbol-enum-member symbol-enum-member"></span>CHANNEL_KIND_VOICE_MEDIA
A voice channel. Allows you to talk to other people with voice.

### <span class="codicon codicon-symbol-enum-member symbol-enum-member"></span>CHANNEL_KIND_CATEGORY
A category channel. All channels under this channel down to another
category channel belongs to this category channel.

------
## <span class="codicon codicon-symbol-enum symbol-enum"></span>LeaveReason

A reason for why a user has left a guild.
### <span class="codicon codicon-symbol-enum-member symbol-enum-member"></span>LEAVE_REASON_WILLINGLY_UNSPECIFIED
The user left the guild willingly.

### <span class="codicon codicon-symbol-enum-member symbol-enum-member"></span>LEAVE_REASON_BANNED
The user was banned from the guild.

### <span class="codicon codicon-symbol-enum-member symbol-enum-member"></span>LEAVE_REASON_KICKED
The user was kicked from the guild.

------
## <span class="codicon codicon-symbol-enum symbol-enum"></span>Type


### <span class="codicon codicon-symbol-enum-member symbol-enum-member"></span>TYPE_NORMAL_UNSPECIFIED


### <span class="codicon codicon-symbol-enum-member symbol-enum-member"></span>TYPE_PRIMARY


### <span class="codicon codicon-symbol-enum-member symbol-enum-member"></span>TYPE_DESTRUCTIVE


------
## <span class="codicon codicon-symbol-enum symbol-enum"></span>Direction


### <span class="codicon codicon-symbol-enum-member symbol-enum-member"></span>DIRECTION_BEFORE_UNSPECIFIED


### <span class="codicon codicon-symbol-enum-member symbol-enum-member"></span>DIRECTION_AROUND


### <span class="codicon codicon-symbol-enum-member symbol-enum-member"></span>DIRECTION_AFTER


------
## <span class="codicon codicon-symbol-enum symbol-enum"></span>Embed.Presentation


### <span class="codicon codicon-symbol-enum-member symbol-enum-member"></span>PRESENTATION_DATA_UNSPECIFIED


### <span class="codicon codicon-symbol-enum-member symbol-enum-member"></span>PRESENTATION_CAPTIONED_IMAGE


### <span class="codicon codicon-symbol-enum-member symbol-enum-member"></span>PRESENTATION_ROW


------
## <span class="codicon codicon-symbol-enum symbol-enum"></span>Format.Kind


### <span class="codicon codicon-symbol-enum-member symbol-enum-member"></span>KIND_DIM_UNSPECIFIED


### <span class="codicon codicon-symbol-enum-member symbol-enum-member"></span>KIND_BRIGHT


### <span class="codicon codicon-symbol-enum-member symbol-enum-member"></span>KIND_NEGATIVE


### <span class="codicon codicon-symbol-enum-member symbol-enum-member"></span>KIND_POSITIVE


### <span class="codicon codicon-symbol-enum-member symbol-enum-member"></span>KIND_INFO


### <span class="codicon codicon-symbol-enum-member symbol-enum-member"></span>KIND_WARNING


