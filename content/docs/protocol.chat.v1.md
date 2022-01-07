---
title: "Reference: protocol.chat.v1"
---
## Message Types 

### Channel
An object representing a channel, without the ID.

#### Fields


##### channel_name (optional  `string`)
The name of this channel.
##### kind (UNHANDLED | TYPE)
The kind of channel this is.
Data does not get inherently stored in the Channel type
Instead, clients who understand a certain ChannelKind should
fetch them from a separate RPC.
##### metadata (optional  [protocol.harmonytypes.v1.Metadata]({{< ref "protocol.harmonytypes.v1.md" >}}#metadata))
The metadata of this channel.

### ChannelWithId
The channel alongside with an ID.

#### Fields


##### channel_id (optional  `uint64`)
ID of the channel.
##### channel (optional  [protocol.chat.v1.Channel](#channel))
The channel data.

### CreateChannelRequest
Channel Kinds:

Channel kinds specified in an official Harmony protocol will start with a
"h." prefix. Third-party extensions should not use the "h." prefix. If no
kind is specified, the channel is a text channel.

Kinds indicate additional functionality a channel may have: for example,
h.voice can indicate that a channel has voice functionalities alongside
the usual text fare.

Used in the `CreateChannel` endpoint.

#### Fields


##### guild_id (optional  `uint64`)
Guild ID of the guild to create a channel in.
##### channel_name (optional  `string`)
The name of this channel.
##### kind (UNHANDLED | TYPE)
The kind of this channel.
##### metadata (optional  [protocol.harmonytypes.v1.Metadata]({{< ref "protocol.harmonytypes.v1.md" >}}#metadata))
The metadata of this channel.
##### position (optional  [protocol.harmonytypes.v1.ItemPosition]({{< ref "protocol.harmonytypes.v1.md" >}}#itemposition))
The position of your new channel in the channel list.

If not specified, it will be put at the bottom of the channel list.

### CreateChannelResponse
Used in the `CreateChannel` endpoint.

#### Fields


##### channel_id (optional  `uint64`)
ID of the channel that was created.

### GetGuildChannelsRequest
Used in the `GetGuildChannels` endpoint.

#### Fields


##### guild_id (optional  `uint64`)
Guild ID of the guild you want to get channels from.

### GetGuildChannelsResponse
Used in the `GetGuildChannels` endpoint.

#### Fields


##### channels (repeated  [protocol.chat.v1.ChannelWithId](#channelwithid))
Channels' data and ID the server responded with.

### UpdateChannelInformationRequest
Used in the `UpdateChannelInformation` endpoint.

#### Fields


##### guild_id (optional  `uint64`)
Guild ID of the guild where the channel is.
##### channel_id (optional  `uint64`)
Channel ID of the channel you want to change the information of.
##### new_name (optional  `string`)
New name to set for this channel.
##### new_metadata (optional  [protocol.harmonytypes.v1.Metadata]({{< ref "protocol.harmonytypes.v1.md" >}}#metadata))
New metadata to set for this channel.

### UpdateChannelInformationResponse
Used in the `UpdateChannelInformation` endpoint.

This item has no fields.

### UpdateChannelOrderRequest
Used in the `UpdateChannelOrder` endpoint.

#### Fields


##### guild_id (optional  `uint64`)
Guild ID of the guild that has the channel.
##### channel_id (optional  `uint64`)
Channel ID of the channel that you want to move.
##### new_position (optional  [protocol.harmonytypes.v1.ItemPosition]({{< ref "protocol.harmonytypes.v1.md" >}}#itemposition))
The new position of this channel.

### UpdateChannelOrderResponse
Used in the `UpdateChannelOrder` endpoint.

This item has no fields.

### UpdateAllChannelOrderRequest
Request specifiying the order of all channels in a guild at once

#### Fields


##### guild_id (optional  `uint64`)
guild_id: the guild to specify the new channel order for
##### channel_ids (repeated  `uint64`)
channel_ids: the new order of channel ids

### UpdateAllChannelOrderResponse
Used in the `UpdateAllChannelOrder` endpoint.

This item has no fields.

### DeleteChannelRequest
Used in the `DeleteChannel` endpoint.

#### Fields


##### guild_id (optional  `uint64`)
Guild ID of the guild that has the channel.
##### channel_id (optional  `uint64`)
Channel ID of the channel you want to delete.

### DeleteChannelResponse
Used in the `DeleteChannel` endpoint.

This item has no fields.

### TypingRequest
Used in `Typing` endpoint.

#### Fields


##### guild_id (optional  `uint64`)
The guild id of the channel the user is typing in.
##### channel_id (optional  `uint64`)
The channel id of the channel the user is typing in.

### TypingResponse
Used in `Typing` endpoint.

This item has no fields.

### GuildKind
The kind of a guild.

#### Fields


##### normal (optional  [protocol.chat.v1.GuildKind.Normal](#guildkindnormal))
A "normal" guild.
##### room (optional  [protocol.chat.v1.GuildKind.Room](#guildkindroom))
A "room" guild.
##### direct_message (optional  [protocol.chat.v1.GuildKind.DirectMessage](#guildkinddirectmessage))
A "direct message" guild.

### GuildKind.Normal


This item has no fields.

### GuildKind.Room


This item has no fields.

### GuildKind.DirectMessage


#### Fields


##### rejected (optional  `bool`)


### Guild
Object representing a guild without the ID part.

#### Fields


##### name (optional  `string`)
The name of the guild.

This will be empty if the guild kind is "direct message". See
the documentation of "direct message" guild kind on how to display
a name for those guilds.
##### picture (optional  `string`)
The picture HMC of the guild.
##### owner_ids (repeated  `uint64`)
User ID of the owners of the guild.
##### kind (optional  [protocol.chat.v1.GuildKind](#guildkind))
The kind of this guild.
##### metadata (optional  [protocol.harmonytypes.v1.Metadata]({{< ref "protocol.harmonytypes.v1.md" >}}#metadata))
Metadata of the guild.

### GuildWithId
Object representing a guild with the ID part.

#### Fields


##### guild_id (optional  `uint64`)
The ID of the guild.
##### guild (optional  [protocol.chat.v1.Guild](#guild))
The guild.

### Invite
Object representing an invite without the ID part.

#### Fields


##### possible_uses (optional  `uint32`)
Possible uses of this invite. A use of `0` means infinite uses.
##### use_count (optional  `uint32`)
Total use count of this invite.

### InviteWithId
Invite with ID.

#### Fields


##### invite_id (optional  `string`)
ID of the invite.
##### invite (optional  [protocol.chat.v1.Invite](#invite))
The invite data.

### PendingInvite
A pending invite.

#### Fields


##### invite_id (optional  `string`)
Invite ID of the invite.
##### server_id (optional  `string`)
Server ID of the server the inviter is on.
##### inviter_id (optional  `uint64`)
User ID of the inviter.

### GuildListEntry
Object representing a guild list entry.

#### Fields


##### guild_id (optional  `uint64`)
Guild ID of this guild entry.
##### server_id (optional  `string`)
Server ID of the homeserver of this guild.

### CreateGuildRequest
Request type used in `CreateGuild` endpoint.

#### Fields


##### name (optional  `string`)
The name of the guild.
##### picture (optional  `string`)
The picture HMC of the guild.
##### metadata (optional  [protocol.harmonytypes.v1.Metadata]({{< ref "protocol.harmonytypes.v1.md" >}}#metadata))
Metadata of the guild.

### CreateGuildResponse
Used in the `CreateGuild` endpoint.

#### Fields


##### guild_id (optional  `uint64`)
Guild ID of the guild that was created.

### CreateRoomRequest
Request type used in `CreateRoom` endpoint.

#### Fields


##### name (optional  `string`)
The name of the guild.
##### picture (optional  `string`)
The picture HMC of the guild.
##### metadata (optional  [protocol.harmonytypes.v1.Metadata]({{< ref "protocol.harmonytypes.v1.md" >}}#metadata))
Metadata of the guild.

### CreateRoomResponse
Used in the `CreateRoom` endpoint.

#### Fields


##### guild_id (optional  `uint64`)
Guild ID of the guild that was created.

### CreateDirectMessageRequest
Used in the `CreateDirectMessage` endpoint.

#### Fields


##### user_name (optional  `string`)
The user name of the user to DM with.
##### server_id (optional  `string`)
The server ID of the server the user is on.

Should be left unspecified if it's a user on the homeserver.

### CreateDirectMessageResponse
Used in the `CreateDirectMessage` endpoint.

#### Fields


##### guild_id (optional  `uint64`)
Guild ID of the just created "direct message" guild.

### CreateInviteRequest
Used in the `CreateInvite` endpoint.

#### Fields


##### guild_id (optional  `uint64`)
Guild ID of the guild to create an invite in.
##### name (optional  `string`)
The name of the invite.
##### possible_uses (optional  `uint32`)
The possible uses of the invite.

A possible use of `0` means that the invite can be used infinitely many times.

### CreateInviteResponse
Used in the `CreateInvite` endpoint.

#### Fields


##### invite_id (optional  `string`)
The invite ID of the invite that was created.

### GetGuildListRequest
Used in the `GetGuildList` endpoint.

This item has no fields.

### GetGuildListResponse
Used in the `GetGuildList` endpoint.

#### Fields


##### guilds (repeated  [protocol.chat.v1.GuildListEntry](#guildlistentry))
Guild list returned by the server.

### GetGuildRequest
Used in the `GetGuild` endpoint.

#### Fields


##### guild_id (optional  `uint64`)
Guild ID of the guild to get information about.

### GetGuildResponse
Used in the `GetGuild` endpoint.

#### Fields


##### guild (optional  [protocol.chat.v1.Guild](#guild))
The information of the guild requested.

### GetGuildInvitesRequest
Used in the `GetGuildInvites` endpoint.

#### Fields


##### guild_id (optional  `uint64`)
Guild ID of the guild you want to get invites of.

### GetGuildInvitesResponse
Used in the `GetGuildInvites` endpoint.

#### Fields


##### invites (repeated  [protocol.chat.v1.InviteWithId](#invitewithid))
The invites of the guild, with IDs.

### GetGuildMembersRequest
Used in the `GetGuildMembers` endpoint.

#### Fields


##### guild_id (optional  `uint64`)
Guild ID of the guild you want to get members of.

### GetGuildMembersResponse
Used in the `GetGuildMembers` endpoint.

#### Fields


##### members (repeated  `uint64`)
User IDs of all the guild members.

### UpdateGuildInformationRequest
Used in the `UpdateGuildInformation` endpoint.

#### Fields


##### guild_id (optional  `uint64`)
Guild ID of the guild you want to update the information of.
##### new_name (optional  `string`)
New name for the guild.
##### new_picture (optional  `string`)
New picture for the guild.
##### new_metadata (optional  [protocol.harmonytypes.v1.Metadata]({{< ref "protocol.harmonytypes.v1.md" >}}#metadata))
New metadata for the guild.

### UpdateGuildInformationResponse
Used in the `UpdateGuildInformation` endpoint.

This item has no fields.

### UpgradeRoomToGuildRequest
Used in the `UpgradeRoomToGuild` endpoint.

#### Fields


##### guild_id (optional  `uint64`)
Guild ID of the "room" guild to upgrade to a "normal" guild.

### UpgradeRoomToGuildResponse
Used in the `UpgradeRoomToGuild` endpoint.

This item has no fields.

### DeleteGuildRequest
Used in the `DeleteGuild` endpoint.

#### Fields


##### guild_id (optional  `uint64`)
Guild ID of the guild you want to delete.

### DeleteGuildResponse
Used in the `DeleteGuild` endpoint.

This item has no fields.

### DeleteInviteRequest
Used in the `DeleteInvite` endpoint.

#### Fields


##### guild_id (optional  `uint64`)
Guild ID of the guild where the invite is located.
##### invite_id (optional  `string`)
Invite ID of the invite you want to delete.

### DeleteInviteResponse
Used in the `DeleteInvite` endpoint.

This item has no fields.

### JoinGuildRequest
Used in the `JoinGuild` endpoint.

#### Fields


##### invite_id (optional  `string`)
Invite ID of the guild you want to join.

### JoinGuildResponse
Used in the `JoinGuild` endpoint.

#### Fields


##### guild_id (optional  `uint64`)
Guild ID of the guild you joined.

### PreviewGuildRequest
Used in the `PreviewGuild` endpoint.

#### Fields


##### invite_id (optional  `string`)
Invite ID of the guild you want to get information from.

### PreviewGuildResponse
Used in the `PreviewGuild` endpoint.

#### Fields


##### name (optional  `string`)
Name of the guild requested.
##### picture (optional  `string`)
Picture of the guild requested.
##### member_count (optional  `uint64`)
Member count of the guild requested.

### LeaveGuildRequest
Used in the `LeaveGuild` endpoint.

#### Fields


##### guild_id (optional  `uint64`)
Guild ID of the guild you want to leave.

### LeaveGuildResponse
Used in the `LeaveGuild` endpoint.

This item has no fields.

### BanUserRequest
Used in `BanUser` endpoint.

#### Fields


##### guild_id (optional  `uint64`)
The guild ID of the guild to ban the user from.
##### user_id (optional  `uint64`)
The ID of the user to ban.

### BanUserResponse
Used in `BanUser` endpoint.

This item has no fields.

### KickUserRequest
Used in `KickUser` endpoint.

#### Fields


##### guild_id (optional  `uint64`)
The guild ID of the guild to kick the user from.
##### user_id (optional  `uint64`)
The user ID of the user to kick.

### KickUserResponse
Used in `KickUser` endpoint.

This item has no fields.

### UnbanUserRequest
Used in `UnbanUser` endpoint.

#### Fields


##### guild_id (optional  `uint64`)
The guild ID of the guild to unban the user from.
##### user_id (optional  `uint64`)
The user ID of the user to unban.

### UnbanUserResponse
Used in `UnbanUser` endpoint.

This item has no fields.

### GetBannedUsersRequest
Used in `GetBannedUsers` endpoint.

#### Fields


##### guild_id (optional  `uint64`)
Guild ID to get banned users for.

### GetBannedUsersResponse
Used in `GetBannedUsers` endpoint.

#### Fields


##### banned_users (repeated  `uint64`)
The user IDs of banned users.

### GrantOwnershipRequest
Request for GrantOwnership

#### Fields


##### guild_id (optional  `uint64`)
Guild ID of the guild to give a user ownership on.
##### new_owner_id (optional  `uint64`)
The ID of the new owner to add.

### GrantOwnershipResponse
Response for GrantOwnership

This item has no fields.

### GiveUpOwnershipRequest
Request for GiveUpOwnership

#### Fields


##### guild_id (optional  `uint64`)
Guild ID to give up your ownership on.

### GiveUpOwnershipResponse
Response for GiveUpOwnership

This item has no fields.

### GetPendingInvitesRequest
Used in `GetPendingInvites` endpoint.

This item has no fields.

### GetPendingInvitesResponse
Used in `GetPendingInvites` endpoint.

#### Fields


##### pending_invites (repeated  [protocol.chat.v1.PendingInvite](#pendinginvite))
The pending invite(s).

### RejectPendingInviteRequest
Used in `RejectPendingInvite` endpoint.

#### Fields


##### invite_id (optional  `string`)
Invite ID of the pending invite to reject.
##### server_id (optional  `string`)
Server ID of the pending invite to reject.

### RejectPendingInviteResponse
Used in `RejectPendingInvite` endpoint.

This item has no fields.

### IgnorePendingInviteRequest
Used in `IgnorePendingInvite` endpoint.

#### Fields


##### invite_id (optional  `string`)
ID of the pending invite to ignore.
##### server_id (optional  `string`)
Server ID of the pending invite to reject.

### IgnorePendingInviteResponse
Used in `IgnorePendingInvite` endpoint.

This item has no fields.

### InviteUserToGuildRequest
Used in `InviteUserToGuild` endpoint.

#### Fields


##### user_name (optional  `string`)
User name of the user to invite.
##### server_id (optional  `string`)
Server ID of the user if they are on another server.
##### guild_id (optional  `uint64`)
Guild ID of the guild to invite to.

### InviteUserToGuildResponse
Used in `InviteUserToGuild` endpoint.

This item has no fields.

### Overrides
Overrides provide a way to override the name and avatar of a message.

#### Fields


##### username (optional  `string`)
the overridden username.
##### avatar (optional  `string`)
the overridden avatar.
##### user_defined (optional  `string`)
a custom reason in case the builtin ones don't fit
##### webhook (optional  [protocol.harmonytypes.v1.Empty]({{< ref "protocol.harmonytypes.v1.md" >}}#empty))
the override occured because of a webhook
##### system_plurality (optional  [protocol.harmonytypes.v1.Empty]({{< ref "protocol.harmonytypes.v1.md" >}}#empty))
plurality, not system as in computer
##### system_message (optional  [protocol.harmonytypes.v1.Empty]({{< ref "protocol.harmonytypes.v1.md" >}}#empty))
the override occured because it was made by the server

Servers should reject messages sent by users with this override.
##### bridge (optional  [protocol.harmonytypes.v1.Empty]({{< ref "protocol.harmonytypes.v1.md" >}}#empty))
the override occured because of bridging

### ActionPayload
The payload sent to the bot when an action is triggered.

#### Fields


##### button (optional  [protocol.chat.v1.ActionPayload.Button](#actionpayloadbutton))
Payload for a button
##### dropdown (optional  [protocol.chat.v1.ActionPayload.Dropdown](#actionpayloaddropdown))
Payload for a dropdown
##### input (optional  [protocol.chat.v1.ActionPayload.Input](#actionpayloadinput))
Payload for a text input

### ActionPayload.Button


#### Fields


##### data (optional  `bytes`)


### ActionPayload.Dropdown


#### Fields


##### choice (optional  `bytes`)


### ActionPayload.Input


#### Fields


##### input (optional  `string`)

##### data (optional  `bytes`)


### Action
Actions are interactive elements that can exist within an embed.

#### Fields


##### action_type (UNHANDLED | TYPE)
Type of the action.
##### button (optional  [protocol.chat.v1.Action.Button](#actionbutton))
Button action.
##### dropdown (optional  [protocol.chat.v1.Action.Dropdown](#actiondropdown))
Dropdown action.
##### input (optional  [protocol.chat.v1.Action.Input](#actioninput))
Input action.

### Action.Button
The action type. This is primarily used to change the look of the action to
the user (example: Destructive actions will have a red background).

#### Fields


##### text (optional  `string`)
a normal action.
##### data (optional  `bytes`)
a primary action.
##### url (optional  `string`)
A destructive / dangerous action.

### Action.Dropdown


#### Fields


##### label (optional  `string`)

##### entries (repeated  [protocol.chat.v1.Action.Dropdown.Entry](#actiondropdownentry))


### Action.Dropdown.Entry


#### Fields


##### label (optional  `string`)

##### data (optional  `bytes`)


### Action.Input


#### Fields


##### label (optional  `string`)

##### multiline (optional  `bool`)

##### data (optional  `bytes`)


### Embed
Object representing a message embed.

#### Fields


##### title (optional  `string`)
Title of this embed.
##### body (optional  [protocol.chat.v1.FormattedText](#formattedtext))
Body text of this embed.
##### color (optional  `int32`)
Color of this embed.
##### header (optional  [protocol.chat.v1.Embed.EmbedHeading](#embedembedheading))
Embed heading for the header.
##### footer (optional  [protocol.chat.v1.Embed.EmbedHeading](#embedembedheading))
Embed heading for the footer.
##### fields (repeated  [protocol.chat.v1.Embed.EmbedField](#embedembedfield))
Fields of this embed.

### Embed.EmbedHeading


#### Fields


##### text (optional  `string`)

##### subtext (optional  `string`)

##### url (optional  `string`)

##### icon (optional  `string`)


### Embed.EmbedField


#### Fields


##### title (optional  `string`)

##### subtitle (optional  `string`)

##### body (optional  [protocol.chat.v1.FormattedText](#formattedtext))

##### image_url (optional  `string`)

##### presentation (UNHANDLED | TYPE)

##### actions (repeated  [protocol.chat.v1.Action](#action))


### Minithumbnail
Minithumbnail is an extremely low-quality JPEG thumbnail.

The resolution is usually no larger than 64x64.

#### Fields


##### width (optional  `uint32`)
The width of the minithumbnail
##### height (optional  `uint32`)
The height of the minithumbnail
##### data (optional  `bytes`)
The JPEG data of the minithumbnail

### Photo
Photo contains data about a photo.

Photo are always JPEG, and are
constrained to the following rules:

- width+height <= 10_000
- width <= height*20
- height <= width*20

Photos are preferably no more than 10MB
in size, and servers may compress as necessary.

#### Fields


##### hmc (optional  `string`)
The HMC URL of the photo.
##### name (optional  `string`)
The filename of the photo.
##### file_size (optional  `uint32`)
The size of the photo.
##### height (optional  `uint32`)
The height of the photo, in pixels.
##### width (optional  `uint32`)
The width of the photo, in pixels.
##### caption (optional  [protocol.chat.v1.FormattedText](#formattedtext))
The photo's caption.
##### minithumbnail (optional  [protocol.chat.v1.Minithumbnail](#minithumbnail))
A thumbnail representing the photo.

### Attachment
Object representing a generic message attachment.

#### Fields


##### id (optional  `string`)
File ID of this attachment.
##### name (optional  `string`)
Filename of this attachment.
##### mimetype (optional  `string`)
Mimetype of this attachment.
##### size (optional  `uint32`)
Size of this attachment.
##### caption (optional  [protocol.chat.v1.FormattedText](#formattedtext))
Caption of this attachment.

### Content
Object representing a message's content.

#### Fields


##### text_message (optional  [protocol.chat.v1.Content.TextContent](#contenttextcontent))
Text content.
##### embed_message (optional  [protocol.chat.v1.Content.EmbedContent](#contentembedcontent))
Embed content.
##### attachment_message (optional  [protocol.chat.v1.Content.AttachmentContent](#contentattachmentcontent))
Attachment content.
##### photo_message (optional  [protocol.chat.v1.Content.PhotoContent](#contentphotocontent))
Photo content.
##### invite_rejected (optional  [protocol.chat.v1.Content.InviteRejected](#contentinviterejected))
A user rejected an invite.
##### invite_accepted (optional  [protocol.chat.v1.Content.InviteAccepted](#contentinviteaccepted))
A user accepted an invite.
##### room_upgraded_to_guild (optional  [protocol.chat.v1.Content.RoomUpgradedToGuild](#contentroomupgradedtoguild))
A user upgraded a guild from "room" to "normal".

### Content.TextContent


#### Fields


##### content (optional  [protocol.chat.v1.FormattedText](#formattedtext))


### Content.EmbedContent


#### Fields


##### embeds (repeated  [protocol.chat.v1.Embed](#embed))


### Content.AttachmentContent


#### Fields


##### files (repeated  [protocol.chat.v1.Attachment](#attachment))


### Content.PhotoContent


#### Fields


##### photos (repeated  [protocol.chat.v1.Photo](#photo))


### Content.InviteRejected


#### Fields


##### invitee_id (optional  `uint64`)

##### inviter_id (optional  `uint64`)


### Content.InviteAccepted


#### Fields


##### invitee_id (optional  `uint64`)

##### inviter_id (optional  `uint64`)


### Content.RoomUpgradedToGuild


#### Fields


##### upgraded_by (optional  `uint64`)


### Reaction
Object representing a reaction.

#### Fields


##### emote (optional  [protocol.emote.v1.Emote]({{< ref "protocol.emote.v1.md" >}}#emote))
Emote data for this reaction.

Emote's image ID is used as an identifier for unique reactions.
Emotes with the same names should be "deduplicated" by a client, by suffixing
their names with `~1`, `~2` and so on.
##### count (optional  `uint32`)
How many reactions this reaction has.

### Format
A format for text

#### Fields


##### start (optional  `uint32`)
where the format begins to apply to
##### length (optional  `uint32`)
how many characters the format is
##### bold (optional  [protocol.chat.v1.Format.Bold](#formatbold))
a text format for bold text
##### italic (optional  [protocol.chat.v1.Format.Italic](#formatitalic))
a text format for italic text
##### underline (optional  [protocol.chat.v1.Format.Underline](#formatunderline))
a text format for underline text
##### monospace (optional  [protocol.chat.v1.Format.Monospace](#formatmonospace))
a text format for monospace text
##### superscript (optional  [protocol.chat.v1.Format.Superscript](#formatsuperscript))
a text format for superscript text
##### subscript (optional  [protocol.chat.v1.Format.Subscript](#formatsubscript))
a text format for subscript text
##### code_block (optional  [protocol.chat.v1.Format.CodeBlock](#formatcodeblock))
a text format for a codeblock
##### user_mention (optional  [protocol.chat.v1.Format.UserMention](#formatusermention))
a text format for a user mention
##### role_mention (optional  [protocol.chat.v1.Format.RoleMention](#formatrolemention))
a text format for a role mention
##### channel_mention (optional  [protocol.chat.v1.Format.ChannelMention](#formatchannelmention))
a text format for a channel mention
##### guild_mention (optional  [protocol.chat.v1.Format.GuildMention](#formatguildmention))
a text format for a guild mention
##### emoji (optional  [protocol.chat.v1.Format.Emoji](#formatemoji))
a text format for an emoji
##### color (optional  [protocol.chat.v1.Format.Color](#formatcolor))
a text format for coloured text
##### localization (optional  [protocol.chat.v1.Format.Localization](#formatlocalization))
a text format for localization

### Format.Bold


This item has no fields.

### Format.Italic


This item has no fields.

### Format.Underline


This item has no fields.

### Format.Monospace


This item has no fields.

### Format.Superscript


This item has no fields.

### Format.Subscript


This item has no fields.

### Format.CodeBlock


#### Fields


##### language (optional  `string`)


### Format.UserMention


#### Fields


##### user_id (optional  `uint64`)


### Format.RoleMention


#### Fields


##### role_id (optional  `uint64`)


### Format.ChannelMention


#### Fields


##### channel_id (optional  `uint64`)


### Format.GuildMention


#### Fields


##### guild_id (optional  `uint64`)

##### homeserver (optional  `string`)


### Format.Emoji


#### Fields


##### image_hmc (optional  `string`)

##### pack_id (optional  `uint64`)


### Format.Color


#### Fields


##### kind (UNHANDLED | TYPE)


### Format.Localization


#### Fields


##### i18n_code (optional  `string`)


### FormattedText
Formatted text

#### Fields


##### text (optional  `string`)
The textual content of a message
##### format (repeated  [protocol.chat.v1.Format](#format))
The formats for a message

### Message
Object representing a message without the ID part.

#### Fields


##### metadata (optional  [protocol.harmonytypes.v1.Metadata]({{< ref "protocol.harmonytypes.v1.md" >}}#metadata))
Metadata of this message.
##### overrides (optional  [protocol.chat.v1.Overrides](#overrides))
Overrides of this message.
##### author_id (optional  `uint64`)
User ID of the user who sent this message.
##### created_at (optional  `uint64`)
When this message was created, in miliseconds since unix epoch
##### edited_at (optional  `uint64`)
The most recent time this message was edited, in milliseconds since unix epoch
##### in_reply_to (optional  `uint64`)
The message this message is a reply to.
##### content (optional  [protocol.chat.v1.Content](#content))
The content of the message.
##### reactions (repeated  [protocol.chat.v1.Reaction](#reaction))
The reactions of the message.

### MessageWithId
Object representing a message with it's ID.

#### Fields


##### message_id (optional  `uint64`)
ID of the message.
##### message (optional  [protocol.chat.v1.Message](#message))
The message data.

### GetChannelMessagesRequest
Used in the `GetChannelMessages` endpoint.

#### Fields


##### guild_id (optional  `uint64`)
Guild ID of the guild that has the channel.
##### channel_id (optional  `uint64`)
Channel ID of the channel to get messages from.
##### message_id (optional  `uint64`)
The ID of the message that will be used as an "anchor" point to figure out
where to get the messages.
If not specified, the `direction` will be ignored and the newest messages
will be returned.
##### direction (UNHANDLED | TYPE)
On which direction to get the messages.

- By default, it is "before", which means you will get messages before the
`message_id` message.
- If it is "around", you will get the messages around the `message_id`
message. This will include the `message_id` message itself, as the middle
item of the list returned.
- If it is "after", you will get the messages after the `message_id`
message.
##### count (optional  `uint32`)
How many messages to get.

- If `0`, a recommended message count to return is 25. If the direction is
"around", the recommended value is 12.
- If the direction to get the messages is "around", this count will not be
the *total* count of messages to return, but instead the count of messages
to return *for each direction*, before and after.
- Servers should enforce their own maximum limit, and clamp this value to
the limit.

### GetChannelMessagesResponse
Used in the `GetChannelMessages` endpoint.

#### Fields


##### reached_top (optional  `bool`)
Has reached the top (first message) of the message history.
##### reached_bottom (optional  `bool`)
Has reached the bottom (last message) of the message history.
##### messages (repeated  [protocol.chat.v1.MessageWithId](#messagewithid))
The messages requested.

### GetMessageRequest
Used in the `GetMessage` endpoint.

#### Fields


##### guild_id (optional  `uint64`)
Guild ID of the guild where the channel is.
##### channel_id (optional  `uint64`)
Channel ID of the channel where the message is.
##### message_id (optional  `uint64`)
Message ID of the message you want to get.

### GetMessageResponse
Used in the `GetMessage` endpoint.

#### Fields


##### message (optional  [protocol.chat.v1.Message](#message))
The message requested.

### DeleteMessageRequest
Used in the `DeleteMessage` endpoint.

#### Fields


##### guild_id (optional  `uint64`)
Guild ID of the guild where the channel is.
##### channel_id (optional  `uint64`)
Channel ID of the channel where the message is.
##### message_id (optional  `uint64`)
Message ID of the message you want to delete.

### DeleteMessageResponse
Used in the `DeleteMessage` endpoint.

This item has no fields.

### TriggerActionRequest
Used in the `TriggerAction` endpoint.

#### Fields


##### guild_id (optional  `uint64`)
Guild ID of the guild where the channel is.
##### channel_id (optional  `uint64`)
Channel ID of the channel where the message is.
##### message_id (optional  `uint64`)
Message ID of the message you want to trigger an action in.
##### payload (optional  [protocol.chat.v1.ActionPayload](#actionpayload))
Payload of action data.

### TriggerActionResponse
Used in the `TriggerAction` endpoint.

This item has no fields.

### SendMessageRequest
Used in the `SendMessage` endpoint.

#### Fields


##### guild_id (optional  `uint64`)
Guild ID of the guild where the channel is.
##### channel_id (optional  `uint64`)
Channel ID of the channel you want to send a message in.
##### content (optional  [protocol.chat.v1.Content](#content))
Content of the new message.
##### echo_id (optional  `uint64`)
Echo ID of the new message. This can be used by clients to
determine whether a message is sent.
##### overrides (optional  [protocol.chat.v1.Overrides](#overrides))
The overrides of this new message.
##### in_reply_to (optional  `uint64`)
The message this new message is a reply to.
##### metadata (optional  [protocol.harmonytypes.v1.Metadata]({{< ref "protocol.harmonytypes.v1.md" >}}#metadata))
The metadata of this new message.

### SendMessageResponse
Used in the `SendMessage` endpoint.

#### Fields


##### message_id (optional  `uint64`)
Message ID of the message sent.

### UpdateMessageTextRequest
Used in the `UpdateMessageText` endpoint.

#### Fields


##### guild_id (optional  `uint64`)
Guild ID of the guild where the channel is.
##### channel_id (optional  `uint64`)
Channel ID of the channel where the message is.
##### message_id (optional  `uint64`)
Message ID of the message you want to edit the text of.
##### new_content (optional  [protocol.chat.v1.FormattedText](#formattedtext))
New content for this message.

### UpdateMessageTextResponse
Used in the `UpdateMessageText` endpoint.

This item has no fields.

### PinMessageRequest
Used in the `PinMessage` endpoint.

#### Fields


##### guild_id (optional  `uint64`)
Guild ID of the guild where the channel is.
##### channel_id (optional  `uint64`)
Channel ID of the channel where the message is.
##### message_id (optional  `uint64`)
Message ID of the message we want to pin.

### PinMessageResponse
Used in the `UnpinMessage` endpoint.

This item has no fields.

### UnpinMessageRequest
Used in the `UnpinMessage` endpoint.

#### Fields


##### guild_id (optional  `uint64`)
Guild ID of the guild where the channel is.
##### channel_id (optional  `uint64`)
Channel ID of the channel where the message is.
##### message_id (optional  `uint64`)
Message ID of the message we want to unpin.

### UnpinMessageResponse
Used in the `UnpinMessage` endpoint.

This item has no fields.

### GetPinnedMessagesRequest
Used in the `GetPinnedMessages` endpoint.

#### Fields


##### guild_id (optional  `uint64`)
Guild ID of the guild where the channel is.
##### channel_id (optional  `uint64`)
Channel ID of the channel we want to get pins of.

### GetPinnedMessagesResponse
Used in the `GetPinnedMessages` endpoint.

#### Fields


##### pinned_message_ids (repeated  `uint64`)
The IDs of the pinned messages.

### AddReactionRequest
Used in `AddReaction` endpoint.

#### Fields


##### guild_id (optional  `uint64`)
Guild ID of the guild where the channel is.
##### channel_id (optional  `uint64`)
Channel ID of the channel where the message is.
##### message_id (optional  `uint64`)
Message ID of the message we want to add a reaction to.
##### emote (optional  [protocol.emote.v1.Emote]({{< ref "protocol.emote.v1.md" >}}#emote))
The emote we want to react with.

### AddReactionResponse
Used in `AddReaction` endpoint.

This item has no fields.

### RemoveReactionRequest
Used in `RemoveReaction` endpoint.

#### Fields


##### guild_id (optional  `uint64`)
Guild ID of the guild where the channel is.
##### channel_id (optional  `uint64`)
Channel ID of the channel where the message is.
##### message_id (optional  `uint64`)
Message ID of the message we want to remove a reaction.
##### emote (optional  [protocol.emote.v1.Emote]({{< ref "protocol.emote.v1.md" >}}#emote))
The emote we want to remove the react of.

### RemoveReactionResponse
Used in `RemoveReaction` endpoint.

This item has no fields.

### Permission
Object representing a single permission node.

#### Fields


##### matches (optional  `string`)
the permission matcher. (example: roles.manage)
##### ok (optional  `bool`)
whether the permission is allowed or not.

### Role
Object representing a role without the ID.

#### Fields


##### name (optional  `string`)
the role name.
##### color (optional  `int32`)
the role color.
##### hoist (optional  `bool`)
whether the role is hoisted or not.
##### pingable (optional  `bool`)
whether the role is mentionable or not.

### RoleWithId
Object representing a role with it's ID.

The role ID for the default role in a guild should always be 0.

#### Fields


##### role_id (optional  `uint64`)
ID of the role.
##### role (optional  [protocol.chat.v1.Role](#role))
The role data.

### QueryHasPermissionRequest
Used in the `QueryHasPermission` endpoint.

#### Fields


##### guild_id (optional  `uint64`)
the guild ID to query permissions for
##### channel_id (optional  `uint64`)
the channel ID to query permissions for. If not set, it will query
permissions for the guild.
##### as (optional  `uint64`)
the user ID to query permissions for (if not provided, the current user is
assumed).
##### check_for (optional  `string`)
the permission node to check for.

### QueryHasPermissionResponse
Used in the `QueryHasPermission` endpoint.

#### Fields


##### ok (optional  `bool`)
the permissions for the given node.

### SetPermissionsRequest
Used in the `SetPermissions` endpoint.

#### Fields


##### guild_id (optional  `uint64`)
the guild ID to set permissions for.
##### channel_id (optional  `uint64`)
the channel ID to set permissions for. Only set if the role is for a
channel.
##### role_id (optional  `uint64`)
the role ID to set permissions for.
##### perms_to_give (repeated  [protocol.chat.v1.Permission](#permission))
the permission list to give.

There is no "perms_to_take" because not given permissions are by
default not allowed.

### SetPermissionsResponse
Used in the `SetPermissions` endpoint.

This item has no fields.

### GetPermissionsRequest
Used in the `GetPermissions` endpoint.

#### Fields


##### guild_id (optional  `uint64`)
the guild ID to get permissions for.
##### channel_id (optional  `uint64`)
the channel ID to get permissions for. Only applicable for roles in a
channel.
##### role_id (optional  `uint64`)
the role ID to get permissions for.

### GetPermissionsResponse
Used in the `GetPermissions` endpoint.

#### Fields


##### perms (repeated  [protocol.chat.v1.Permission](#permission))
the permissions list for the given role.

### MoveRoleRequest
Used in the `MoveRole` endpoint.

#### Fields


##### guild_id (optional  `uint64`)
the guild ID to move the role in.
##### role_id (optional  `uint64`)
the role ID to move.
##### new_position (optional  [protocol.harmonytypes.v1.ItemPosition]({{< ref "protocol.harmonytypes.v1.md" >}}#itemposition))
the new position of the role.

### MoveRoleResponse
Used in the `MoveRole` endpoint.

This item has no fields.

### GetGuildRolesRequest
Used in the `GetGuildRoles` endpoint.

#### Fields


##### guild_id (optional  `uint64`)
the guild ID to get roles for.

### GetGuildRolesResponse
Used in the `GetGuildRoles` endpoint.

#### Fields


##### roles (repeated  [protocol.chat.v1.RoleWithId](#rolewithid))
the list of roles in the guild.

### AddGuildRoleRequest
Used in the `AddGuildRole` endpoint.

#### Fields


##### guild_id (optional  `uint64`)
the guild ID to add the role to.
##### name (optional  `string`)
the role name.
##### color (optional  `int32`)
the role color.
##### hoist (optional  `bool`)
whether the role is hoisted or not.
##### pingable (optional  `bool`)
whether the role is mentionable or not.

### AddGuildRoleResponse
Used in the `AddGuildRole` endpoint.

#### Fields


##### role_id (optional  `uint64`)
the ID of the newly created role.

### DeleteGuildRoleRequest
Used in the `DeleteGuildRole` endpoint.

#### Fields


##### guild_id (optional  `uint64`)
the guild ID to delete the role from.
##### role_id (optional  `uint64`)
the role ID to delete.

### DeleteGuildRoleResponse
Used in the `DeleteGuildRole` endpoint.

This item has no fields.

### ModifyGuildRoleRequest
Used in the `ModifyGuildRole` endpoint.

#### Fields


##### guild_id (optional  `uint64`)
the ID of the guild where the role is located
##### role_id (optional  `uint64`)
the ID of the role to modify
##### new_name (optional  `string`)
the new name of the role
##### new_color (optional  `int32`)
the new color of the role
##### new_hoist (optional  `bool`)
the new hoist status of the role
##### new_pingable (optional  `bool`)
the new pingable status of the role

### ModifyGuildRoleResponse
Used in the `ModifyGuildRole` endpoint.

This item has no fields.

### ManageUserRolesRequest
Used in the `ManageUserRoles` endpoint.

#### Fields


##### guild_id (optional  `uint64`)
the ID of the guild where the user is being managed
##### user_id (optional  `uint64`)
the ID of the user to modify
##### give_role_ids (repeated  `uint64`)
the IDs of the roles to add
##### take_role_ids (repeated  `uint64`)
the IDs of the roles to remove

### ManageUserRolesResponse
Used in the `ManageUserRoles` endpoint.

This item has no fields.

### GetUserRolesRequest
Used in the `GetUserRoles` endpoint.

#### Fields


##### guild_id (optional  `uint64`)
the ID of the guild where the user is located
##### user_id (optional  `uint64`)
the ID of the user to get roles for

### GetUserRolesResponse
Used in the `GetUserRoles` endpoint.

#### Fields


##### roles (repeated  `uint64`)
a list of IDs of the roles the user has

### StreamEventsRequest
Request type for use in the `StreamEvents` endpoint.
By default, this endpoint will subscribe to all events.
Any guilds joined in the future will be added to the subscription as well.
Use the UnsubscribeFromAll event for unsubscribing from all current subscriptions and disable the automatic guild subscriptions

#### Fields


##### subscribe_to_guild (optional  [protocol.chat.v1.StreamEventsRequest.SubscribeToGuild](#streameventsrequestsubscribetoguild))
Subscribe to the guild event source.
##### subscribe_to_actions (optional  [protocol.chat.v1.StreamEventsRequest.SubscribeToActions](#streameventsrequestsubscribetoactions))
Subscribe to the action event source.
##### subscribe_to_homeserver_events (optional  [protocol.chat.v1.StreamEventsRequest.SubscribeToHomeserverEvents](#streameventsrequestsubscribetohomeserverevents))
Subscribe to the homeserver event source.
##### unsubscribe_from_all (optional  [protocol.chat.v1.StreamEventsRequest.UnsubscribeFromAll](#streameventsrequestunsubscribefromall))
Unsubscribe from all events.

### StreamEventsRequest.SubscribeToGuild


#### Fields


##### guild_id (optional  `uint64`)


### StreamEventsRequest.SubscribeToActions


This item has no fields.

### StreamEventsRequest.SubscribeToHomeserverEvents


This item has no fields.

### StreamEventsRequest.UnsubscribeFromAll


This item has no fields.

### StreamEventsResponse
Used in the `StreamEvents` endpoint.

#### Fields


##### chat (optional  [protocol.chat.v1.StreamEvent](#streamevent))
A chat event.
##### emote (optional  [protocol.emote.v1.StreamEvent]({{< ref "protocol.emote.v1.md" >}}#streamevent))
A emote event.
##### profile (optional  [protocol.profile.v1.StreamEvent]({{< ref "protocol.profile.v1.md" >}}#streamevent))
A profile event.

### StreamEvent
Describes an event.

#### Fields


##### guild_added_to_list (optional  [protocol.chat.v1.StreamEvent.GuildAddedToList](#streameventguildaddedtolist))
Send the guild added to list event.
##### guild_removed_from_list (optional  [protocol.chat.v1.StreamEvent.GuildRemovedFromList](#streameventguildremovedfromlist))
Send the guild removed from list event.
##### action_performed (optional  [protocol.chat.v1.StreamEvent.ActionPerformed](#streameventactionperformed))
Send the action performed event.
##### sent_message (optional  [protocol.chat.v1.StreamEvent.MessageSent](#streameventmessagesent))
Send the message sent event.
##### edited_message (optional  [protocol.chat.v1.StreamEvent.MessageUpdated](#streameventmessageupdated))
Send the message updated event.
##### deleted_message (optional  [protocol.chat.v1.StreamEvent.MessageDeleted](#streameventmessagedeleted))
Send the message deleted event.
##### created_channel (optional  [protocol.chat.v1.StreamEvent.ChannelCreated](#streameventchannelcreated))
Send the channel created event.
##### edited_channel (optional  [protocol.chat.v1.StreamEvent.ChannelUpdated](#streameventchannelupdated))
Send the channel updated event.
##### deleted_channel (optional  [protocol.chat.v1.StreamEvent.ChannelDeleted](#streameventchanneldeleted))
Send the channel deleted event.
##### edited_guild (optional  [protocol.chat.v1.StreamEvent.GuildUpdated](#streameventguildupdated))
Send the guild updated event.
##### deleted_guild (optional  [protocol.chat.v1.StreamEvent.GuildDeleted](#streameventguilddeleted))
Send the guild deleted event.
##### joined_member (optional  [protocol.chat.v1.StreamEvent.MemberJoined](#streameventmemberjoined))
Send the member joined event.
##### left_member (optional  [protocol.chat.v1.StreamEvent.MemberLeft](#streameventmemberleft))
Send the member left event.
##### typing (optional  [protocol.chat.v1.StreamEvent.Typing](#streameventtyping))
Send the typing event.
##### role_created (optional  [protocol.chat.v1.StreamEvent.RoleCreated](#streameventrolecreated))
Send the role created event.
##### role_deleted (optional  [protocol.chat.v1.StreamEvent.RoleDeleted](#streameventroledeleted))
Send the role deleted event.
##### role_moved (optional  [protocol.chat.v1.StreamEvent.RoleMoved](#streameventrolemoved))
Send the role moved event.
##### role_updated (optional  [protocol.chat.v1.StreamEvent.RoleUpdated](#streameventroleupdated))
Send the role updated event.
##### role_perms_updated (optional  [protocol.chat.v1.StreamEvent.RolePermissionsUpdated](#streameventrolepermissionsupdated))
Send the role perms updated event.
##### user_roles_updated (optional  [protocol.chat.v1.StreamEvent.UserRolesUpdated](#streameventuserrolesupdated))
Send the user roles updated event.
##### permission_updated (optional  [protocol.chat.v1.StreamEvent.PermissionUpdated](#streameventpermissionupdated))
Send the permission updated event.
##### channels_reordered (optional  [protocol.chat.v1.StreamEvent.ChannelsReordered](#streameventchannelsreordered))
The channels have been completely reordered.
##### edited_channel_position (optional  [protocol.chat.v1.StreamEvent.ChannelPositionUpdated](#streameventchannelpositionupdated))
Send the channel position updated event.
##### message_pinned (optional  [protocol.chat.v1.StreamEvent.MessagePinned](#streameventmessagepinned))
Send the message pinned event.
##### message_unpinned (optional  [protocol.chat.v1.StreamEvent.MessageUnpinned](#streameventmessageunpinned))
Send the message unpinned event.
##### reaction_updated (optional  [protocol.chat.v1.StreamEvent.ReactionUpdated](#streameventreactionupdated))
Send the reaction updated event.
##### owner_added (optional  [protocol.chat.v1.StreamEvent.OwnerAdded](#streameventowneradded))
Send the owner added event.
##### owner_removed (optional  [protocol.chat.v1.StreamEvent.OwnerRemoved](#streameventownerremoved))
Send the owner removed event.
##### invite_received (optional  [protocol.chat.v1.StreamEvent.InviteReceived](#streameventinvitereceived))
Send the guild invite received event.
##### invite_rejected (optional  [protocol.chat.v1.StreamEvent.InviteRejected](#streameventinviterejected))
Send the guild invite rejected event.

### StreamEvent.MessageSent


#### Fields


##### echo_id (optional  `uint64`)

##### guild_id (optional  `uint64`)

##### channel_id (optional  `uint64`)

##### message_id (optional  `uint64`)

##### message (optional  [protocol.chat.v1.Message](#message))


### StreamEvent.MessageUpdated


#### Fields


##### guild_id (optional  `uint64`)

##### channel_id (optional  `uint64`)

##### message_id (optional  `uint64`)

##### edited_at (optional  `uint64`)

##### new_content (optional  [protocol.chat.v1.FormattedText](#formattedtext))


### StreamEvent.MessageDeleted


#### Fields


##### guild_id (optional  `uint64`)

##### channel_id (optional  `uint64`)

##### message_id (optional  `uint64`)


### StreamEvent.ChannelCreated


#### Fields


##### guild_id (optional  `uint64`)

##### channel_id (optional  `uint64`)

##### name (optional  `string`)

##### position (optional  [protocol.harmonytypes.v1.ItemPosition]({{< ref "protocol.harmonytypes.v1.md" >}}#itemposition))

##### kind (UNHANDLED | TYPE)

##### metadata (optional  [protocol.harmonytypes.v1.Metadata]({{< ref "protocol.harmonytypes.v1.md" >}}#metadata))


### StreamEvent.ChannelUpdated


#### Fields


##### guild_id (optional  `uint64`)

##### channel_id (optional  `uint64`)

##### new_name (optional  `string`)

##### new_metadata (optional  [protocol.harmonytypes.v1.Metadata]({{< ref "protocol.harmonytypes.v1.md" >}}#metadata))


### StreamEvent.ChannelPositionUpdated


#### Fields


##### guild_id (optional  `uint64`)

##### channel_id (optional  `uint64`)

##### new_position (optional  [protocol.harmonytypes.v1.ItemPosition]({{< ref "protocol.harmonytypes.v1.md" >}}#itemposition))


### StreamEvent.ChannelsReordered


#### Fields


##### guild_id (optional  `uint64`)

##### channel_ids (repeated  `uint64`)


### StreamEvent.ChannelDeleted


#### Fields


##### guild_id (optional  `uint64`)

##### channel_id (optional  `uint64`)


### StreamEvent.GuildUpdated


#### Fields


##### guild_id (optional  `uint64`)

##### new_name (optional  `string`)

##### new_picture (optional  `string`)

##### new_metadata (optional  [protocol.harmonytypes.v1.Metadata]({{< ref "protocol.harmonytypes.v1.md" >}}#metadata))


### StreamEvent.GuildDeleted


#### Fields


##### guild_id (optional  `uint64`)


### StreamEvent.MemberJoined


#### Fields


##### member_id (optional  `uint64`)

##### guild_id (optional  `uint64`)


### StreamEvent.MemberLeft


#### Fields


##### member_id (optional  `uint64`)

##### guild_id (optional  `uint64`)

##### leave_reason (UNHANDLED | TYPE)


### StreamEvent.GuildAddedToList


#### Fields


##### guild_id (optional  `uint64`)

##### homeserver (optional  `string`)


### StreamEvent.GuildRemovedFromList


#### Fields


##### guild_id (optional  `uint64`)

##### homeserver (optional  `string`)


### StreamEvent.ActionPerformed


#### Fields


##### guild_id (optional  `uint64`)

##### channel_id (optional  `uint64`)

##### message_id (optional  `uint64`)

##### user_id (optional  `uint64`)

##### payload (optional  [protocol.chat.v1.ActionPayload](#actionpayload))


### StreamEvent.RoleMoved


#### Fields


##### guild_id (optional  `uint64`)

##### role_id (optional  `uint64`)

##### new_position (optional  [protocol.harmonytypes.v1.ItemPosition]({{< ref "protocol.harmonytypes.v1.md" >}}#itemposition))


### StreamEvent.RoleDeleted


#### Fields


##### guild_id (optional  `uint64`)

##### role_id (optional  `uint64`)


### StreamEvent.RoleCreated


#### Fields


##### guild_id (optional  `uint64`)

##### role_id (optional  `uint64`)

##### name (optional  `string`)

##### color (optional  `int32`)

##### hoist (optional  `bool`)

##### pingable (optional  `bool`)


### StreamEvent.RoleUpdated


#### Fields


##### guild_id (optional  `uint64`)

##### role_id (optional  `uint64`)

##### new_name (optional  `string`)

##### new_color (optional  `int32`)

##### new_hoist (optional  `bool`)

##### new_pingable (optional  `bool`)


### StreamEvent.RolePermissionsUpdated


#### Fields


##### guild_id (optional  `uint64`)

##### channel_id (optional  `uint64`)

##### role_id (optional  `uint64`)

##### new_perms (repeated  [protocol.chat.v1.Permission](#permission))


### StreamEvent.UserRolesUpdated


#### Fields


##### guild_id (optional  `uint64`)

##### user_id (optional  `uint64`)

##### new_role_ids (repeated  `uint64`)


### StreamEvent.Typing


#### Fields


##### user_id (optional  `uint64`)

##### guild_id (optional  `uint64`)

##### channel_id (optional  `uint64`)


### StreamEvent.PermissionUpdated


#### Fields


##### guild_id (optional  `uint64`)

##### channel_id (optional  `uint64`)

##### query (optional  `string`)

##### ok (optional  `bool`)


### StreamEvent.MessagePinned


#### Fields


##### guild_id (optional  `uint64`)

##### channel_id (optional  `uint64`)

##### message_id (optional  `uint64`)


### StreamEvent.MessageUnpinned


#### Fields


##### guild_id (optional  `uint64`)

##### channel_id (optional  `uint64`)

##### message_id (optional  `uint64`)


### StreamEvent.ReactionUpdated


#### Fields


##### guild_id (optional  `uint64`)

##### channel_id (optional  `uint64`)

##### message_id (optional  `uint64`)

##### reaction (optional  [protocol.chat.v1.Reaction](#reaction))


### StreamEvent.OwnerAdded


#### Fields


##### user_id (optional  `uint64`)


### StreamEvent.OwnerRemoved


#### Fields


##### user_id (optional  `uint64`)


### StreamEvent.InviteReceived


#### Fields


##### invite_id (optional  `string`)

##### server_id (optional  `string`)

##### inviter_id (optional  `uint64`)


### StreamEvent.InviteRejected


#### Fields


##### guild_id (optional  `uint64`)

##### invite_id (optional  `string`)

##### user_id (optional  `uint64`)


## Enums 

### ChannelKind

What kind the channel is.
#### CHANNEL_KIND_TEXT_UNSPECIFIED
A text channel. Allows you to simply send messages to a group of people.

#### CHANNEL_KIND_VOICE_MEDIA
A voice channel. Allows you to talk to other people with voice.

#### CHANNEL_KIND_CATEGORY
A category channel. All channels under this channel down to another
category channel belongs to this category channel.

### LeaveReason

A reason for why a user has left a guild.
#### LEAVE_REASON_WILLINGLY_UNSPECIFIED
The user left the guild willingly.

#### LEAVE_REASON_BANNED
The user was banned from the guild.

#### LEAVE_REASON_KICKED
The user was kicked from the guild.

### Type


#### TYPE_NORMAL_UNSPECIFIED


#### TYPE_PRIMARY


#### TYPE_DESTRUCTIVE


### Direction


#### DIRECTION_BEFORE_UNSPECIFIED


#### DIRECTION_AROUND


#### DIRECTION_AFTER


### Embed.Presentation


#### PRESENTATION_DATA_UNSPECIFIED


#### PRESENTATION_CAPTIONED_IMAGE


#### PRESENTATION_ROW


### Format.Kind


#### KIND_DIM_UNSPECIFIED


#### KIND_BRIGHT


#### KIND_NEGATIVE


#### KIND_POSITIVE


#### KIND_INFO


#### KIND_WARNING


## Services 

### ChatService

The core of Harmony's chat operations.
#### Methods

##### CreateGuild
[protocol.chat.v1.CreateGuildRequest](#createguildrequest) -> [protocol.chat.v1.CreateGuildResponse](#createguildresponse)

Endpoint to create a guild.
##### CreateRoom
[protocol.chat.v1.CreateRoomRequest](#createroomrequest) -> [protocol.chat.v1.CreateRoomResponse](#createroomresponse)

Endpoint to create a "room" guild.
##### CreateDirectMessage
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
##### UpgradeRoomToGuild
[protocol.chat.v1.UpgradeRoomToGuildRequest](#upgraderoomtoguildrequest) -> [protocol.chat.v1.UpgradeRoomToGuildResponse](#upgraderoomtoguildresponse)

Endpoint to upgrade a "room" guild to a "normal" guild.
##### CreateInvite
[protocol.chat.v1.CreateInviteRequest](#createinviterequest) -> [protocol.chat.v1.CreateInviteResponse](#createinviteresponse)

Endpoint to create an invite.
##### CreateChannel
[protocol.chat.v1.CreateChannelRequest](#createchannelrequest) -> [protocol.chat.v1.CreateChannelResponse](#createchannelresponse)

Endpoint to create a channel.
##### GetGuildList
[protocol.chat.v1.GetGuildListRequest](#getguildlistrequest) -> [protocol.chat.v1.GetGuildListResponse](#getguildlistresponse)

Endpoint to get your guild list.
##### InviteUserToGuild
[protocol.chat.v1.InviteUserToGuildRequest](#inviteusertoguildrequest) -> [protocol.chat.v1.InviteUserToGuildResponse](#inviteusertoguildresponse)

Endpoint to invite a user to a guild.
##### GetPendingInvites
[protocol.chat.v1.GetPendingInvitesRequest](#getpendinginvitesrequest) -> [protocol.chat.v1.GetPendingInvitesResponse](#getpendinginvitesresponse)

Endpoint to get your pending invites.
##### RejectPendingInvite
[protocol.chat.v1.RejectPendingInviteRequest](#rejectpendinginviterequest) -> [protocol.chat.v1.RejectPendingInviteResponse](#rejectpendinginviteresponse)

Endpoint to reject (delete with notification to the inviter) an invite
from your pending invite list.

If the invitee is on a different server than the inviter, the invitee's
server should send a `UserRejectedInvite` postbox event to the inviter's
server.

The "notification" is sending a `InviteRejected` stream event to the
inviter. If the guild's kind is `DirectMessage`, the server should also
set the `rejected` field of the guild's kind to `true`.
##### IgnorePendingInvite
[protocol.chat.v1.IgnorePendingInviteRequest](#ignorependinginviterequest) -> [protocol.chat.v1.IgnorePendingInviteResponse](#ignorependinginviteresponse)

Endpoint to ignore (delete without notification to the inviter) an
invite from your pending invite list.
##### GetGuild
[protocol.chat.v1.GetGuildRequest](#getguildrequest) -> [protocol.chat.v1.GetGuildResponse](#getguildresponse)

Endpoint to get information about a guild.
##### GetGuildInvites
[protocol.chat.v1.GetGuildInvitesRequest](#getguildinvitesrequest) -> [protocol.chat.v1.GetGuildInvitesResponse](#getguildinvitesresponse)

Endpoint to get the invites of a guild.

This requires the "invites.view" permission.
##### GetGuildMembers
[protocol.chat.v1.GetGuildMembersRequest](#getguildmembersrequest) -> [protocol.chat.v1.GetGuildMembersResponse](#getguildmembersresponse)

Endpoint to get the members of a guild.
##### GetGuildChannels
[protocol.chat.v1.GetGuildChannelsRequest](#getguildchannelsrequest) -> [protocol.chat.v1.GetGuildChannelsResponse](#getguildchannelsresponse)

Endpoint to get the channels of a guild.

You will only be informed of channels you have the "messages.view"
permission for.
##### GetChannelMessages
[protocol.chat.v1.GetChannelMessagesRequest](#getchannelmessagesrequest) -> [protocol.chat.v1.GetChannelMessagesResponse](#getchannelmessagesresponse)

Endpoint to get the messages from a guild channel.
##### GetMessage
[protocol.chat.v1.GetMessageRequest](#getmessagerequest) -> [protocol.chat.v1.GetMessageResponse](#getmessageresponse)

Endpoint to get a single message from a guild channel.
##### UpdateGuildInformation
[protocol.chat.v1.UpdateGuildInformationRequest](#updateguildinformationrequest) -> [protocol.chat.v1.UpdateGuildInformationResponse](#updateguildinformationresponse)

Endpoint to update a guild's information.
##### UpdateChannelInformation
[protocol.chat.v1.UpdateChannelInformationRequest](#updatechannelinformationrequest) -> [protocol.chat.v1.UpdateChannelInformationResponse](#updatechannelinformationresponse)

Endpoint to update a channel's information.
##### UpdateChannelOrder
[protocol.chat.v1.UpdateChannelOrderRequest](#updatechannelorderrequest) -> [protocol.chat.v1.UpdateChannelOrderResponse](#updatechannelorderresponse)

Endpoint to change the position of a channel in the channel list.
##### UpdateAllChannelOrder
[protocol.chat.v1.UpdateAllChannelOrderRequest](#updateallchannelorderrequest) -> [protocol.chat.v1.UpdateAllChannelOrderResponse](#updateallchannelorderresponse)

Endpoint to change the position of all channels in the guild;
must specifcy all channels or fails
##### UpdateMessageText
[protocol.chat.v1.UpdateMessageTextRequest](#updatemessagetextrequest) -> [protocol.chat.v1.UpdateMessageTextResponse](#updatemessagetextresponse)

Endpoint to change the text of a message.
##### DeleteGuild
[protocol.chat.v1.DeleteGuildRequest](#deleteguildrequest) -> [protocol.chat.v1.DeleteGuildResponse](#deleteguildresponse)

Endpoint to delete a guild.
Can only be invoked if there's one owner.
##### DeleteInvite
[protocol.chat.v1.DeleteInviteRequest](#deleteinviterequest) -> [protocol.chat.v1.DeleteInviteResponse](#deleteinviteresponse)

Endpoint to delete an invite.
##### DeleteChannel
[protocol.chat.v1.DeleteChannelRequest](#deletechannelrequest) -> [protocol.chat.v1.DeleteChannelResponse](#deletechannelresponse)

Endpoint to delete a channel.
##### DeleteMessage
[protocol.chat.v1.DeleteMessageRequest](#deletemessagerequest) -> [protocol.chat.v1.DeleteMessageResponse](#deletemessageresponse)

Endpoint to delete a message.

This requires the "messages.manage.delete" permission if you are not the
message author.
##### JoinGuild
[protocol.chat.v1.JoinGuildRequest](#joinguildrequest) -> [protocol.chat.v1.JoinGuildResponse](#joinguildresponse)

Endpoint to join a guild.

- If the invite used is in a user's "pending invites" list, it should be
removed from there.
##### LeaveGuild
[protocol.chat.v1.LeaveGuildRequest](#leaveguildrequest) -> [protocol.chat.v1.LeaveGuildResponse](#leaveguildresponse)

Endpoint to leave a guild.

- If you're the only owner, you can't leave a guild. Exception to this
rule are "direct message" guilds.
- When the last member in a "direct message" guild leaves it, that guild
should be deleted.
##### TriggerAction
[protocol.chat.v1.TriggerActionRequest](#triggeractionrequest) -> [protocol.chat.v1.TriggerActionResponse](#triggeractionresponse)

Endpont to trigger an action.
##### SendMessage
[protocol.chat.v1.SendMessageRequest](#sendmessagerequest) -> [protocol.chat.v1.SendMessageResponse](#sendmessageresponse)

Endpoint to send a message.
##### QueryHasPermission
[protocol.chat.v1.QueryHasPermissionRequest](#queryhaspermissionrequest) -> [protocol.chat.v1.QueryHasPermissionResponse](#queryhaspermissionresponse)

Endpoint to query if a user has a permission.
##### SetPermissions
[protocol.chat.v1.SetPermissionsRequest](#setpermissionsrequest) -> [protocol.chat.v1.SetPermissionsResponse](#setpermissionsresponse)

Endpoint to set permissions for a role in a guild.
##### GetPermissions
[protocol.chat.v1.GetPermissionsRequest](#getpermissionsrequest) -> [protocol.chat.v1.GetPermissionsResponse](#getpermissionsresponse)

Endpoint to get permissions for a role in a guild.
##### MoveRole
[protocol.chat.v1.MoveRoleRequest](#moverolerequest) -> [protocol.chat.v1.MoveRoleResponse](#moveroleresponse)

Endpoint to change the position of a role in the role list in a guild.
##### GetGuildRoles
[protocol.chat.v1.GetGuildRolesRequest](#getguildrolesrequest) -> [protocol.chat.v1.GetGuildRolesResponse](#getguildrolesresponse)

Endpoint to get the roles from a guild.
##### AddGuildRole
[protocol.chat.v1.AddGuildRoleRequest](#addguildrolerequest) -> [protocol.chat.v1.AddGuildRoleResponse](#addguildroleresponse)

Endpoint to add a role to a guild.
##### ModifyGuildRole
[protocol.chat.v1.ModifyGuildRoleRequest](#modifyguildrolerequest) -> [protocol.chat.v1.ModifyGuildRoleResponse](#modifyguildroleresponse)

Endpoint to a modify a role from a guild.
##### DeleteGuildRole
[protocol.chat.v1.DeleteGuildRoleRequest](#deleteguildrolerequest) -> [protocol.chat.v1.DeleteGuildRoleResponse](#deleteguildroleresponse)

Endpoint to delete a role from a guild.
##### ManageUserRoles
[protocol.chat.v1.ManageUserRolesRequest](#manageuserrolesrequest) -> [protocol.chat.v1.ManageUserRolesResponse](#manageuserrolesresponse)

Endpoint to manage the roles of a guild member.
##### GetUserRoles
[protocol.chat.v1.GetUserRolesRequest](#getuserrolesrequest) -> [protocol.chat.v1.GetUserRolesResponse](#getuserrolesresponse)

Endpoint to get the roles a guild member has.
##### Typing
[protocol.chat.v1.TypingRequest](#typingrequest) -> [protocol.chat.v1.TypingResponse](#typingresponse)

Endpoint to send a typing notification in a guild channel.
##### PreviewGuild
[protocol.chat.v1.PreviewGuildRequest](#previewguildrequest) -> [protocol.chat.v1.PreviewGuildResponse](#previewguildresponse)

Endpoint to "preview" a guild, which returns some information about a
guild.

- Guilds with the "direct message" kind can only be previewed
by the user who is invited to the guild.
##### GetBannedUsers
[protocol.chat.v1.GetBannedUsersRequest](#getbannedusersrequest) -> [protocol.chat.v1.GetBannedUsersResponse](#getbannedusersresponse)

Endpoint to get banned users in a guild.
##### BanUser
[protocol.chat.v1.BanUserRequest](#banuserrequest) -> [protocol.chat.v1.BanUserResponse](#banuserresponse)

Endpoint to ban a user from a guild.
##### KickUser
[protocol.chat.v1.KickUserRequest](#kickuserrequest) -> [protocol.chat.v1.KickUserResponse](#kickuserresponse)

Endpoint to kick a user from a guild.
##### UnbanUser
[protocol.chat.v1.UnbanUserRequest](#unbanuserrequest) -> [protocol.chat.v1.UnbanUserResponse](#unbanuserresponse)

Endpoint to unban a user from a guild.
##### GetPinnedMessages
[protocol.chat.v1.GetPinnedMessagesRequest](#getpinnedmessagesrequest) -> [protocol.chat.v1.GetPinnedMessagesResponse](#getpinnedmessagesresponse)

Endpoint to get all pinned messages in a guild channel.
##### PinMessage
[protocol.chat.v1.PinMessageRequest](#pinmessagerequest) -> [protocol.chat.v1.PinMessageResponse](#pinmessageresponse)

Endpoint to pin a message in a guild channel.
##### UnpinMessage
[protocol.chat.v1.UnpinMessageRequest](#unpinmessagerequest) -> [protocol.chat.v1.UnpinMessageResponse](#unpinmessageresponse)

Endpoint to unpin a message in a guild channel.
##### StreamEvents
streaming [protocol.chat.v1.StreamEventsRequest](#streameventsrequest) -> streaming [protocol.chat.v1.StreamEventsResponse](#streameventsresponse)

Endpoint to stream events from the homeserver.
By default, this endpoint will subscribe to all events.
Any guilds joined in the future will be added to the subscription as well.
Use the UnsubscribeFromAll event for unsubscribing from all current subscriptions and disable the automatic guild subscriptions
##### AddReaction
[protocol.chat.v1.AddReactionRequest](#addreactionrequest) -> [protocol.chat.v1.AddReactionResponse](#addreactionresponse)

Endpoint to add a reaction to a message.
##### RemoveReaction
[protocol.chat.v1.RemoveReactionRequest](#removereactionrequest) -> [protocol.chat.v1.RemoveReactionResponse](#removereactionresponse)

Endpoint to remove a reaction from a message.
##### GrantOwnership
[protocol.chat.v1.GrantOwnershipRequest](#grantownershiprequest) -> [protocol.chat.v1.GrantOwnershipResponse](#grantownershipresponse)

Endpoint to give ownership to someone else.
##### GiveUpOwnership
[protocol.chat.v1.GiveUpOwnershipRequest](#giveupownershiprequest) -> [protocol.chat.v1.GiveUpOwnershipResponse](#giveupownershipresponse)

Endpoint to give up your own ownership.
Requires that at least one other person will still be owner.
