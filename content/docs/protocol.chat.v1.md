---
title: "Reference: protocol.chat.v1"
---
## Message Types 

### Channel

Fields

| Name | Type |
| ---- | ---- |
| channel_name | `string` |
| UNHANDLED | TYPE |
| metadata | [protocol.harmonytypes.v1.Metadata]({{< ref "protocol.harmonytypes.v1.md" >}}#metadata) |

### ChannelWithId

Fields

| Name | Type |
| ---- | ---- |
| channel_id | `uint64` |
| channel | [protocol.chat.v1.Channel](#channel) |

### CreateChannelRequest

Fields

| Name | Type |
| ---- | ---- |
| guild_id | `uint64` |
| channel_name | `string` |
| UNHANDLED | TYPE |
| metadata | [protocol.harmonytypes.v1.Metadata]({{< ref "protocol.harmonytypes.v1.md" >}}#metadata) |
| position | [protocol.harmonytypes.v1.ItemPosition]({{< ref "protocol.harmonytypes.v1.md" >}}#itemposition) |

### CreateChannelResponse

Fields

| Name | Type |
| ---- | ---- |
| channel_id | `uint64` |

### GetGuildChannelsRequest

Fields

| Name | Type |
| ---- | ---- |
| guild_id | `uint64` |

### GetGuildChannelsResponse

Fields

| Name | Type |
| ---- | ---- |
| channels | [protocol.chat.v1.ChannelWithId](#channelwithid) |

### UpdateChannelInformationRequest

Fields

| Name | Type |
| ---- | ---- |
| guild_id | `uint64` |
| channel_id | `uint64` |
| new_name | `string` |
| new_metadata | [protocol.harmonytypes.v1.Metadata]({{< ref "protocol.harmonytypes.v1.md" >}}#metadata) |

### UpdateChannelInformationResponse

Fields

| Name | Type |
| ---- | ---- |

### UpdateChannelOrderRequest

Fields

| Name | Type |
| ---- | ---- |
| guild_id | `uint64` |
| channel_id | `uint64` |
| new_position | [protocol.harmonytypes.v1.ItemPosition]({{< ref "protocol.harmonytypes.v1.md" >}}#itemposition) |

### UpdateChannelOrderResponse

Fields

| Name | Type |
| ---- | ---- |

### UpdateAllChannelOrderRequest

Fields

| Name | Type |
| ---- | ---- |
| guild_id | `uint64` |
| channel_ids | `uint64` |

### UpdateAllChannelOrderResponse

Fields

| Name | Type |
| ---- | ---- |

### DeleteChannelRequest

Fields

| Name | Type |
| ---- | ---- |
| guild_id | `uint64` |
| channel_id | `uint64` |

### DeleteChannelResponse

Fields

| Name | Type |
| ---- | ---- |

### TypingRequest

Fields

| Name | Type |
| ---- | ---- |
| guild_id | `uint64` |
| channel_id | `uint64` |

### TypingResponse

Fields

| Name | Type |
| ---- | ---- |

### GuildKind

Fields

| Name | Type |
| ---- | ---- |
| normal | [protocol.chat.v1.GuildKind.Normal](#guildkind-normal) |
| room | [protocol.chat.v1.GuildKind.Room](#guildkind-room) |
| direct_message | [protocol.chat.v1.GuildKind.DirectMessage](#guildkind-directmessage) |

### Guild

Fields

| Name | Type |
| ---- | ---- |
| name | `string` |
| picture | `string` |
| owner_ids | `uint64` |
| kind | [protocol.chat.v1.GuildKind](#guildkind) |
| metadata | [protocol.harmonytypes.v1.Metadata]({{< ref "protocol.harmonytypes.v1.md" >}}#metadata) |

### GuildWithId

Fields

| Name | Type |
| ---- | ---- |
| guild_id | `uint64` |
| guild | [protocol.chat.v1.Guild](#guild) |

### Invite

Fields

| Name | Type |
| ---- | ---- |
| possible_uses | `uint32` |
| use_count | `uint32` |

### InviteWithId

Fields

| Name | Type |
| ---- | ---- |
| invite_id | `string` |
| invite | [protocol.chat.v1.Invite](#invite) |

### PendingInvite

Fields

| Name | Type |
| ---- | ---- |
| invite_id | `string` |
| server_id | `string` |
| inviter_id | `uint64` |

### GuildListEntry

Fields

| Name | Type |
| ---- | ---- |
| guild_id | `uint64` |
| server_id | `string` |

### CreateGuildRequest

Fields

| Name | Type |
| ---- | ---- |
| name | `string` |
| picture | `string` |
| metadata | [protocol.harmonytypes.v1.Metadata]({{< ref "protocol.harmonytypes.v1.md" >}}#metadata) |

### CreateGuildResponse

Fields

| Name | Type |
| ---- | ---- |
| guild_id | `uint64` |

### CreateRoomRequest

Fields

| Name | Type |
| ---- | ---- |
| name | `string` |
| picture | `string` |
| metadata | [protocol.harmonytypes.v1.Metadata]({{< ref "protocol.harmonytypes.v1.md" >}}#metadata) |

### CreateRoomResponse

Fields

| Name | Type |
| ---- | ---- |
| guild_id | `uint64` |

### CreateDirectMessageRequest

Fields

| Name | Type |
| ---- | ---- |
| user_name | `string` |
| server_id | `string` |

### CreateDirectMessageResponse

Fields

| Name | Type |
| ---- | ---- |
| guild_id | `uint64` |

### CreateInviteRequest

Fields

| Name | Type |
| ---- | ---- |
| guild_id | `uint64` |
| name | `string` |
| possible_uses | `uint32` |

### CreateInviteResponse

Fields

| Name | Type |
| ---- | ---- |
| invite_id | `string` |

### GetGuildListRequest

Fields

| Name | Type |
| ---- | ---- |

### GetGuildListResponse

Fields

| Name | Type |
| ---- | ---- |
| guilds | [protocol.chat.v1.GuildListEntry](#guildlistentry) |

### GetGuildRequest

Fields

| Name | Type |
| ---- | ---- |
| guild_id | `uint64` |

### GetGuildResponse

Fields

| Name | Type |
| ---- | ---- |
| guild | [protocol.chat.v1.Guild](#guild) |

### GetGuildInvitesRequest

Fields

| Name | Type |
| ---- | ---- |
| guild_id | `uint64` |

### GetGuildInvitesResponse

Fields

| Name | Type |
| ---- | ---- |
| invites | [protocol.chat.v1.InviteWithId](#invitewithid) |

### GetGuildMembersRequest

Fields

| Name | Type |
| ---- | ---- |
| guild_id | `uint64` |

### GetGuildMembersResponse

Fields

| Name | Type |
| ---- | ---- |
| members | `uint64` |

### UpdateGuildInformationRequest

Fields

| Name | Type |
| ---- | ---- |
| guild_id | `uint64` |
| new_name | `string` |
| new_picture | `string` |
| new_metadata | [protocol.harmonytypes.v1.Metadata]({{< ref "protocol.harmonytypes.v1.md" >}}#metadata) |

### UpdateGuildInformationResponse

Fields

| Name | Type |
| ---- | ---- |

### UpgradeRoomToGuildRequest

Fields

| Name | Type |
| ---- | ---- |
| guild_id | `uint64` |

### UpgradeRoomToGuildResponse

Fields

| Name | Type |
| ---- | ---- |

### DeleteGuildRequest

Fields

| Name | Type |
| ---- | ---- |
| guild_id | `uint64` |

### DeleteGuildResponse

Fields

| Name | Type |
| ---- | ---- |

### DeleteInviteRequest

Fields

| Name | Type |
| ---- | ---- |
| guild_id | `uint64` |
| invite_id | `string` |

### DeleteInviteResponse

Fields

| Name | Type |
| ---- | ---- |

### JoinGuildRequest

Fields

| Name | Type |
| ---- | ---- |
| invite_id | `string` |

### JoinGuildResponse

Fields

| Name | Type |
| ---- | ---- |
| guild_id | `uint64` |

### PreviewGuildRequest

Fields

| Name | Type |
| ---- | ---- |
| invite_id | `string` |

### PreviewGuildResponse

Fields

| Name | Type |
| ---- | ---- |
| name | `string` |
| picture | `string` |
| member_count | `uint64` |

### LeaveGuildRequest

Fields

| Name | Type |
| ---- | ---- |
| guild_id | `uint64` |

### LeaveGuildResponse

Fields

| Name | Type |
| ---- | ---- |

### BanUserRequest

Fields

| Name | Type |
| ---- | ---- |
| guild_id | `uint64` |
| user_id | `uint64` |

### BanUserResponse

Fields

| Name | Type |
| ---- | ---- |

### KickUserRequest

Fields

| Name | Type |
| ---- | ---- |
| guild_id | `uint64` |
| user_id | `uint64` |

### KickUserResponse

Fields

| Name | Type |
| ---- | ---- |

### UnbanUserRequest

Fields

| Name | Type |
| ---- | ---- |
| guild_id | `uint64` |
| user_id | `uint64` |

### UnbanUserResponse

Fields

| Name | Type |
| ---- | ---- |

### GetBannedUsersRequest

Fields

| Name | Type |
| ---- | ---- |
| guild_id | `uint64` |

### GetBannedUsersResponse

Fields

| Name | Type |
| ---- | ---- |
| banned_users | `uint64` |

### GrantOwnershipRequest

Fields

| Name | Type |
| ---- | ---- |
| guild_id | `uint64` |
| new_owner_id | `uint64` |

### GrantOwnershipResponse

Fields

| Name | Type |
| ---- | ---- |

### GiveUpOwnershipRequest

Fields

| Name | Type |
| ---- | ---- |
| guild_id | `uint64` |

### GiveUpOwnershipResponse

Fields

| Name | Type |
| ---- | ---- |

### GetPendingInvitesRequest

Fields

| Name | Type |
| ---- | ---- |

### GetPendingInvitesResponse

Fields

| Name | Type |
| ---- | ---- |
| pending_invites | [protocol.chat.v1.PendingInvite](#pendinginvite) |

### RejectPendingInviteRequest

Fields

| Name | Type |
| ---- | ---- |
| invite_id | `string` |
| server_id | `string` |

### RejectPendingInviteResponse

Fields

| Name | Type |
| ---- | ---- |

### IgnorePendingInviteRequest

Fields

| Name | Type |
| ---- | ---- |
| invite_id | `string` |
| server_id | `string` |

### IgnorePendingInviteResponse

Fields

| Name | Type |
| ---- | ---- |

### InviteUserToGuildRequest

Fields

| Name | Type |
| ---- | ---- |
| user_name | `string` |
| server_id | `string` |
| guild_id | `uint64` |

### InviteUserToGuildResponse

Fields

| Name | Type |
| ---- | ---- |

### GuildKind.Normal

Fields

| Name | Type |
| ---- | ---- |

### GuildKind.Room

Fields

| Name | Type |
| ---- | ---- |

### GuildKind.DirectMessage

Fields

| Name | Type |
| ---- | ---- |
| rejected | `bool` |

### Overrides

Fields

| Name | Type |
| ---- | ---- |
| username | `string` |
| avatar | `string` |
| user_defined | `string` |
| webhook | [protocol.harmonytypes.v1.Empty]({{< ref "protocol.harmonytypes.v1.md" >}}#empty) |
| system_plurality | [protocol.harmonytypes.v1.Empty]({{< ref "protocol.harmonytypes.v1.md" >}}#empty) |
| system_message | [protocol.harmonytypes.v1.Empty]({{< ref "protocol.harmonytypes.v1.md" >}}#empty) |
| bridge | [protocol.harmonytypes.v1.Empty]({{< ref "protocol.harmonytypes.v1.md" >}}#empty) |

### ActionPayload

Fields

| Name | Type |
| ---- | ---- |
| button | [protocol.chat.v1.ActionPayload.Button](#actionpayload-button) |
| dropdown | [protocol.chat.v1.ActionPayload.Dropdown](#actionpayload-dropdown) |
| input | [protocol.chat.v1.ActionPayload.Input](#actionpayload-input) |

### Action

Fields

| Name | Type |
| ---- | ---- |
| UNHANDLED | TYPE |
| button | [protocol.chat.v1.Action.Button](#action-button) |
| dropdown | [protocol.chat.v1.Action.Dropdown](#action-dropdown) |
| input | [protocol.chat.v1.Action.Input](#action-input) |

### Embed

Fields

| Name | Type |
| ---- | ---- |
| title | `string` |
| body | [protocol.chat.v1.FormattedText](#formattedtext) |
| color | `int32` |
| header | [protocol.chat.v1.Embed.EmbedHeading](#embed-embedheading) |
| footer | [protocol.chat.v1.Embed.EmbedHeading](#embed-embedheading) |
| fields | [protocol.chat.v1.Embed.EmbedField](#embed-embedfield) |

### Minithumbnail

Fields

| Name | Type |
| ---- | ---- |
| width | `uint32` |
| height | `uint32` |
| data | `bytes` |

### Photo

Fields

| Name | Type |
| ---- | ---- |
| hmc | `string` |
| name | `string` |
| file_size | `uint32` |
| height | `uint32` |
| width | `uint32` |
| caption | [protocol.chat.v1.FormattedText](#formattedtext) |
| minithumbnail | [protocol.chat.v1.Minithumbnail](#minithumbnail) |

### Attachment

Fields

| Name | Type |
| ---- | ---- |
| id | `string` |
| name | `string` |
| mimetype | `string` |
| size | `uint32` |
| caption | [protocol.chat.v1.FormattedText](#formattedtext) |

### Content

Fields

| Name | Type |
| ---- | ---- |
| text_message | [protocol.chat.v1.Content.TextContent](#content-textcontent) |
| embed_message | [protocol.chat.v1.Content.EmbedContent](#content-embedcontent) |
| attachment_message | [protocol.chat.v1.Content.AttachmentContent](#content-attachmentcontent) |
| photo_message | [protocol.chat.v1.Content.PhotoContent](#content-photocontent) |
| invite_rejected | [protocol.chat.v1.Content.InviteRejected](#content-inviterejected) |
| invite_accepted | [protocol.chat.v1.Content.InviteAccepted](#content-inviteaccepted) |
| room_upgraded_to_guild | [protocol.chat.v1.Content.RoomUpgradedToGuild](#content-roomupgradedtoguild) |

### Reaction

Fields

| Name | Type |
| ---- | ---- |
| emote | [protocol.emote.v1.Emote]({{< ref "protocol.emote.v1.md" >}}#emote) |
| count | `uint32` |

### Format

Fields

| Name | Type |
| ---- | ---- |
| start | `uint32` |
| length | `uint32` |
| bold | [protocol.chat.v1.Format.Bold](#format-bold) |
| italic | [protocol.chat.v1.Format.Italic](#format-italic) |
| underline | [protocol.chat.v1.Format.Underline](#format-underline) |
| monospace | [protocol.chat.v1.Format.Monospace](#format-monospace) |
| superscript | [protocol.chat.v1.Format.Superscript](#format-superscript) |
| subscript | [protocol.chat.v1.Format.Subscript](#format-subscript) |
| code_block | [protocol.chat.v1.Format.CodeBlock](#format-codeblock) |
| user_mention | [protocol.chat.v1.Format.UserMention](#format-usermention) |
| role_mention | [protocol.chat.v1.Format.RoleMention](#format-rolemention) |
| channel_mention | [protocol.chat.v1.Format.ChannelMention](#format-channelmention) |
| guild_mention | [protocol.chat.v1.Format.GuildMention](#format-guildmention) |
| emoji | [protocol.chat.v1.Format.Emoji](#format-emoji) |
| color | [protocol.chat.v1.Format.Color](#format-color) |
| localization | [protocol.chat.v1.Format.Localization](#format-localization) |

### FormattedText

Fields

| Name | Type |
| ---- | ---- |
| text | `string` |
| format | [protocol.chat.v1.Format](#format) |

### Message

Fields

| Name | Type |
| ---- | ---- |
| metadata | [protocol.harmonytypes.v1.Metadata]({{< ref "protocol.harmonytypes.v1.md" >}}#metadata) |
| overrides | [protocol.chat.v1.Overrides](#overrides) |
| author_id | `uint64` |
| created_at | `uint64` |
| edited_at | `uint64` |
| in_reply_to | `uint64` |
| content | [protocol.chat.v1.Content](#content) |
| reactions | [protocol.chat.v1.Reaction](#reaction) |

### MessageWithId

Fields

| Name | Type |
| ---- | ---- |
| message_id | `uint64` |
| message | [protocol.chat.v1.Message](#message) |

### GetChannelMessagesRequest

Fields

| Name | Type |
| ---- | ---- |
| guild_id | `uint64` |
| channel_id | `uint64` |
| message_id | `uint64` |
| UNHANDLED | TYPE |
| count | `uint32` |

### GetChannelMessagesResponse

Fields

| Name | Type |
| ---- | ---- |
| reached_top | `bool` |
| reached_bottom | `bool` |
| messages | [protocol.chat.v1.MessageWithId](#messagewithid) |

### GetMessageRequest

Fields

| Name | Type |
| ---- | ---- |
| guild_id | `uint64` |
| channel_id | `uint64` |
| message_id | `uint64` |

### GetMessageResponse

Fields

| Name | Type |
| ---- | ---- |
| message | [protocol.chat.v1.Message](#message) |

### DeleteMessageRequest

Fields

| Name | Type |
| ---- | ---- |
| guild_id | `uint64` |
| channel_id | `uint64` |
| message_id | `uint64` |

### DeleteMessageResponse

Fields

| Name | Type |
| ---- | ---- |

### TriggerActionRequest

Fields

| Name | Type |
| ---- | ---- |
| guild_id | `uint64` |
| channel_id | `uint64` |
| message_id | `uint64` |
| payload | [protocol.chat.v1.ActionPayload](#actionpayload) |

### TriggerActionResponse

Fields

| Name | Type |
| ---- | ---- |

### SendMessageRequest

Fields

| Name | Type |
| ---- | ---- |
| guild_id | `uint64` |
| channel_id | `uint64` |
| content | [protocol.chat.v1.Content](#content) |
| echo_id | `uint64` |
| overrides | [protocol.chat.v1.Overrides](#overrides) |
| in_reply_to | `uint64` |
| metadata | [protocol.harmonytypes.v1.Metadata]({{< ref "protocol.harmonytypes.v1.md" >}}#metadata) |

### SendMessageResponse

Fields

| Name | Type |
| ---- | ---- |
| message_id | `uint64` |

### UpdateMessageTextRequest

Fields

| Name | Type |
| ---- | ---- |
| guild_id | `uint64` |
| channel_id | `uint64` |
| message_id | `uint64` |
| new_content | [protocol.chat.v1.FormattedText](#formattedtext) |

### UpdateMessageTextResponse

Fields

| Name | Type |
| ---- | ---- |

### PinMessageRequest

Fields

| Name | Type |
| ---- | ---- |
| guild_id | `uint64` |
| channel_id | `uint64` |
| message_id | `uint64` |

### PinMessageResponse

Fields

| Name | Type |
| ---- | ---- |

### UnpinMessageRequest

Fields

| Name | Type |
| ---- | ---- |
| guild_id | `uint64` |
| channel_id | `uint64` |
| message_id | `uint64` |

### UnpinMessageResponse

Fields

| Name | Type |
| ---- | ---- |

### GetPinnedMessagesRequest

Fields

| Name | Type |
| ---- | ---- |
| guild_id | `uint64` |
| channel_id | `uint64` |

### GetPinnedMessagesResponse

Fields

| Name | Type |
| ---- | ---- |
| pinned_message_ids | `uint64` |

### AddReactionRequest

Fields

| Name | Type |
| ---- | ---- |
| guild_id | `uint64` |
| channel_id | `uint64` |
| message_id | `uint64` |
| emote | [protocol.emote.v1.Emote]({{< ref "protocol.emote.v1.md" >}}#emote) |

### AddReactionResponse

Fields

| Name | Type |
| ---- | ---- |

### RemoveReactionRequest

Fields

| Name | Type |
| ---- | ---- |
| guild_id | `uint64` |
| channel_id | `uint64` |
| message_id | `uint64` |
| emote | [protocol.emote.v1.Emote]({{< ref "protocol.emote.v1.md" >}}#emote) |

### RemoveReactionResponse

Fields

| Name | Type |
| ---- | ---- |

### ActionPayload.Button

Fields

| Name | Type |
| ---- | ---- |
| data | `bytes` |

### ActionPayload.Dropdown

Fields

| Name | Type |
| ---- | ---- |
| choice | `bytes` |

### ActionPayload.Input

Fields

| Name | Type |
| ---- | ---- |
| input | `string` |
| data | `bytes` |

### Action.Button

Fields

| Name | Type |
| ---- | ---- |
| text | `string` |
| data | `bytes` |
| url | `string` |

### Action.Dropdown

Fields

| Name | Type |
| ---- | ---- |
| label | `string` |
| entries | [protocol.chat.v1.Action.Dropdown.Entry](#action-dropdown-entry) |

### Action.Input

Fields

| Name | Type |
| ---- | ---- |
| label | `string` |
| multiline | `bool` |
| data | `bytes` |

### Action.Dropdown.Entry

Fields

| Name | Type |
| ---- | ---- |
| label | `string` |
| data | `bytes` |

### Embed.EmbedHeading

Fields

| Name | Type |
| ---- | ---- |
| text | `string` |
| subtext | `string` |
| url | `string` |
| icon | `string` |

### Embed.EmbedField

Fields

| Name | Type |
| ---- | ---- |
| title | `string` |
| subtitle | `string` |
| body | [protocol.chat.v1.FormattedText](#formattedtext) |
| image_url | `string` |
| UNHANDLED | TYPE |
| actions | [protocol.chat.v1.Action](#action) |

### Content.TextContent

Fields

| Name | Type |
| ---- | ---- |
| content | [protocol.chat.v1.FormattedText](#formattedtext) |

### Content.EmbedContent

Fields

| Name | Type |
| ---- | ---- |
| embeds | [protocol.chat.v1.Embed](#embed) |

### Content.AttachmentContent

Fields

| Name | Type |
| ---- | ---- |
| files | [protocol.chat.v1.Attachment](#attachment) |

### Content.PhotoContent

Fields

| Name | Type |
| ---- | ---- |
| photos | [protocol.chat.v1.Photo](#photo) |

### Content.InviteRejected

Fields

| Name | Type |
| ---- | ---- |
| invitee_id | `uint64` |
| inviter_id | `uint64` |

### Content.InviteAccepted

Fields

| Name | Type |
| ---- | ---- |
| invitee_id | `uint64` |
| inviter_id | `uint64` |

### Content.RoomUpgradedToGuild

Fields

| Name | Type |
| ---- | ---- |
| upgraded_by | `uint64` |

### Format.Bold

Fields

| Name | Type |
| ---- | ---- |

### Format.Italic

Fields

| Name | Type |
| ---- | ---- |

### Format.Underline

Fields

| Name | Type |
| ---- | ---- |

### Format.Monospace

Fields

| Name | Type |
| ---- | ---- |

### Format.Superscript

Fields

| Name | Type |
| ---- | ---- |

### Format.Subscript

Fields

| Name | Type |
| ---- | ---- |

### Format.CodeBlock

Fields

| Name | Type |
| ---- | ---- |
| language | `string` |

### Format.UserMention

Fields

| Name | Type |
| ---- | ---- |
| user_id | `uint64` |

### Format.RoleMention

Fields

| Name | Type |
| ---- | ---- |
| role_id | `uint64` |

### Format.ChannelMention

Fields

| Name | Type |
| ---- | ---- |
| channel_id | `uint64` |

### Format.GuildMention

Fields

| Name | Type |
| ---- | ---- |
| guild_id | `uint64` |
| homeserver | `string` |

### Format.Emoji

Fields

| Name | Type |
| ---- | ---- |
| image_hmc | `string` |
| pack_id | `uint64` |

### Format.Color

Fields

| Name | Type |
| ---- | ---- |
| UNHANDLED | TYPE |

### Format.Localization

Fields

| Name | Type |
| ---- | ---- |
| i18n_code | `string` |

### Permission

Fields

| Name | Type |
| ---- | ---- |
| matches | `string` |
| ok | `bool` |

### Role

Fields

| Name | Type |
| ---- | ---- |
| name | `string` |
| color | `int32` |
| hoist | `bool` |
| pingable | `bool` |

### RoleWithId

Fields

| Name | Type |
| ---- | ---- |
| role_id | `uint64` |
| role | [protocol.chat.v1.Role](#role) |

### QueryHasPermissionRequest

Fields

| Name | Type |
| ---- | ---- |
| guild_id | `uint64` |
| channel_id | `uint64` |
| as | `uint64` |
| check_for | `string` |

### QueryHasPermissionResponse

Fields

| Name | Type |
| ---- | ---- |
| ok | `bool` |

### SetPermissionsRequest

Fields

| Name | Type |
| ---- | ---- |
| guild_id | `uint64` |
| channel_id | `uint64` |
| role_id | `uint64` |
| perms_to_give | [protocol.chat.v1.Permission](#permission) |

### SetPermissionsResponse

Fields

| Name | Type |
| ---- | ---- |

### GetPermissionsRequest

Fields

| Name | Type |
| ---- | ---- |
| guild_id | `uint64` |
| channel_id | `uint64` |
| role_id | `uint64` |

### GetPermissionsResponse

Fields

| Name | Type |
| ---- | ---- |
| perms | [protocol.chat.v1.Permission](#permission) |

### MoveRoleRequest

Fields

| Name | Type |
| ---- | ---- |
| guild_id | `uint64` |
| role_id | `uint64` |
| new_position | [protocol.harmonytypes.v1.ItemPosition]({{< ref "protocol.harmonytypes.v1.md" >}}#itemposition) |

### MoveRoleResponse

Fields

| Name | Type |
| ---- | ---- |

### GetGuildRolesRequest

Fields

| Name | Type |
| ---- | ---- |
| guild_id | `uint64` |

### GetGuildRolesResponse

Fields

| Name | Type |
| ---- | ---- |
| roles | [protocol.chat.v1.RoleWithId](#rolewithid) |

### AddGuildRoleRequest

Fields

| Name | Type |
| ---- | ---- |
| guild_id | `uint64` |
| name | `string` |
| color | `int32` |
| hoist | `bool` |
| pingable | `bool` |

### AddGuildRoleResponse

Fields

| Name | Type |
| ---- | ---- |
| role_id | `uint64` |

### DeleteGuildRoleRequest

Fields

| Name | Type |
| ---- | ---- |
| guild_id | `uint64` |
| role_id | `uint64` |

### DeleteGuildRoleResponse

Fields

| Name | Type |
| ---- | ---- |

### ModifyGuildRoleRequest

Fields

| Name | Type |
| ---- | ---- |
| guild_id | `uint64` |
| role_id | `uint64` |
| new_name | `string` |
| new_color | `int32` |
| new_hoist | `bool` |
| new_pingable | `bool` |

### ModifyGuildRoleResponse

Fields

| Name | Type |
| ---- | ---- |

### ManageUserRolesRequest

Fields

| Name | Type |
| ---- | ---- |
| guild_id | `uint64` |
| user_id | `uint64` |
| give_role_ids | `uint64` |
| take_role_ids | `uint64` |

### ManageUserRolesResponse

Fields

| Name | Type |
| ---- | ---- |

### GetUserRolesRequest

Fields

| Name | Type |
| ---- | ---- |
| guild_id | `uint64` |
| user_id | `uint64` |

### GetUserRolesResponse

Fields

| Name | Type |
| ---- | ---- |
| roles | `uint64` |

### StreamEventsRequest

Fields

| Name | Type |
| ---- | ---- |
| subscribe_to_guild | [protocol.chat.v1.StreamEventsRequest.SubscribeToGuild](#streameventsrequest-subscribetoguild) |
| subscribe_to_actions | [protocol.chat.v1.StreamEventsRequest.SubscribeToActions](#streameventsrequest-subscribetoactions) |
| subscribe_to_homeserver_events | [protocol.chat.v1.StreamEventsRequest.SubscribeToHomeserverEvents](#streameventsrequest-subscribetohomeserverevents) |
| unsubscribe_from_all | [protocol.chat.v1.StreamEventsRequest.UnsubscribeFromAll](#streameventsrequest-unsubscribefromall) |

### StreamEventsResponse

Fields

| Name | Type |
| ---- | ---- |
| chat | [protocol.chat.v1.StreamEvent](#streamevent) |
| emote | [protocol.emote.v1.StreamEvent]({{< ref "protocol.emote.v1.md" >}}#streamevent) |
| profile | [protocol.profile.v1.StreamEvent]({{< ref "protocol.profile.v1.md" >}}#streamevent) |

### StreamEvent

Fields

| Name | Type |
| ---- | ---- |
| guild_added_to_list | [protocol.chat.v1.StreamEvent.GuildAddedToList](#streamevent-guildaddedtolist) |
| guild_removed_from_list | [protocol.chat.v1.StreamEvent.GuildRemovedFromList](#streamevent-guildremovedfromlist) |
| action_performed | [protocol.chat.v1.StreamEvent.ActionPerformed](#streamevent-actionperformed) |
| sent_message | [protocol.chat.v1.StreamEvent.MessageSent](#streamevent-messagesent) |
| edited_message | [protocol.chat.v1.StreamEvent.MessageUpdated](#streamevent-messageupdated) |
| deleted_message | [protocol.chat.v1.StreamEvent.MessageDeleted](#streamevent-messagedeleted) |
| created_channel | [protocol.chat.v1.StreamEvent.ChannelCreated](#streamevent-channelcreated) |
| edited_channel | [protocol.chat.v1.StreamEvent.ChannelUpdated](#streamevent-channelupdated) |
| deleted_channel | [protocol.chat.v1.StreamEvent.ChannelDeleted](#streamevent-channeldeleted) |
| edited_guild | [protocol.chat.v1.StreamEvent.GuildUpdated](#streamevent-guildupdated) |
| deleted_guild | [protocol.chat.v1.StreamEvent.GuildDeleted](#streamevent-guilddeleted) |
| joined_member | [protocol.chat.v1.StreamEvent.MemberJoined](#streamevent-memberjoined) |
| left_member | [protocol.chat.v1.StreamEvent.MemberLeft](#streamevent-memberleft) |
| typing | [protocol.chat.v1.StreamEvent.Typing](#streamevent-typing) |
| role_created | [protocol.chat.v1.StreamEvent.RoleCreated](#streamevent-rolecreated) |
| role_deleted | [protocol.chat.v1.StreamEvent.RoleDeleted](#streamevent-roledeleted) |
| role_moved | [protocol.chat.v1.StreamEvent.RoleMoved](#streamevent-rolemoved) |
| role_updated | [protocol.chat.v1.StreamEvent.RoleUpdated](#streamevent-roleupdated) |
| role_perms_updated | [protocol.chat.v1.StreamEvent.RolePermissionsUpdated](#streamevent-rolepermissionsupdated) |
| user_roles_updated | [protocol.chat.v1.StreamEvent.UserRolesUpdated](#streamevent-userrolesupdated) |
| permission_updated | [protocol.chat.v1.StreamEvent.PermissionUpdated](#streamevent-permissionupdated) |
| channels_reordered | [protocol.chat.v1.StreamEvent.ChannelsReordered](#streamevent-channelsreordered) |
| edited_channel_position | [protocol.chat.v1.StreamEvent.ChannelPositionUpdated](#streamevent-channelpositionupdated) |
| message_pinned | [protocol.chat.v1.StreamEvent.MessagePinned](#streamevent-messagepinned) |
| message_unpinned | [protocol.chat.v1.StreamEvent.MessageUnpinned](#streamevent-messageunpinned) |
| reaction_updated | [protocol.chat.v1.StreamEvent.ReactionUpdated](#streamevent-reactionupdated) |
| owner_added | [protocol.chat.v1.StreamEvent.OwnerAdded](#streamevent-owneradded) |
| owner_removed | [protocol.chat.v1.StreamEvent.OwnerRemoved](#streamevent-ownerremoved) |
| invite_received | [protocol.chat.v1.StreamEvent.InviteReceived](#streamevent-invitereceived) |
| invite_rejected | [protocol.chat.v1.StreamEvent.InviteRejected](#streamevent-inviterejected) |

### StreamEventsRequest.SubscribeToGuild

Fields

| Name | Type |
| ---- | ---- |
| guild_id | `uint64` |

### StreamEventsRequest.SubscribeToActions

Fields

| Name | Type |
| ---- | ---- |

### StreamEventsRequest.SubscribeToHomeserverEvents

Fields

| Name | Type |
| ---- | ---- |

### StreamEventsRequest.UnsubscribeFromAll

Fields

| Name | Type |
| ---- | ---- |

### StreamEvent.MessageSent

Fields

| Name | Type |
| ---- | ---- |
| echo_id | `uint64` |
| guild_id | `uint64` |
| channel_id | `uint64` |
| message_id | `uint64` |
| message | [protocol.chat.v1.Message](#message) |

### StreamEvent.MessageUpdated

Fields

| Name | Type |
| ---- | ---- |
| guild_id | `uint64` |
| channel_id | `uint64` |
| message_id | `uint64` |
| edited_at | `uint64` |
| new_content | [protocol.chat.v1.FormattedText](#formattedtext) |

### StreamEvent.MessageDeleted

Fields

| Name | Type |
| ---- | ---- |
| guild_id | `uint64` |
| channel_id | `uint64` |
| message_id | `uint64` |

### StreamEvent.ChannelCreated

Fields

| Name | Type |
| ---- | ---- |
| guild_id | `uint64` |
| channel_id | `uint64` |
| name | `string` |
| position | [protocol.harmonytypes.v1.ItemPosition]({{< ref "protocol.harmonytypes.v1.md" >}}#itemposition) |
| UNHANDLED | TYPE |
| metadata | [protocol.harmonytypes.v1.Metadata]({{< ref "protocol.harmonytypes.v1.md" >}}#metadata) |

### StreamEvent.ChannelUpdated

Fields

| Name | Type |
| ---- | ---- |
| guild_id | `uint64` |
| channel_id | `uint64` |
| new_name | `string` |
| new_metadata | [protocol.harmonytypes.v1.Metadata]({{< ref "protocol.harmonytypes.v1.md" >}}#metadata) |

### StreamEvent.ChannelPositionUpdated

Fields

| Name | Type |
| ---- | ---- |
| guild_id | `uint64` |
| channel_id | `uint64` |
| new_position | [protocol.harmonytypes.v1.ItemPosition]({{< ref "protocol.harmonytypes.v1.md" >}}#itemposition) |

### StreamEvent.ChannelsReordered

Fields

| Name | Type |
| ---- | ---- |
| guild_id | `uint64` |
| channel_ids | `uint64` |

### StreamEvent.ChannelDeleted

Fields

| Name | Type |
| ---- | ---- |
| guild_id | `uint64` |
| channel_id | `uint64` |

### StreamEvent.GuildUpdated

Fields

| Name | Type |
| ---- | ---- |
| guild_id | `uint64` |
| new_name | `string` |
| new_picture | `string` |
| new_metadata | [protocol.harmonytypes.v1.Metadata]({{< ref "protocol.harmonytypes.v1.md" >}}#metadata) |

### StreamEvent.GuildDeleted

Fields

| Name | Type |
| ---- | ---- |
| guild_id | `uint64` |

### StreamEvent.MemberJoined

Fields

| Name | Type |
| ---- | ---- |
| member_id | `uint64` |
| guild_id | `uint64` |

### StreamEvent.MemberLeft

Fields

| Name | Type |
| ---- | ---- |
| member_id | `uint64` |
| guild_id | `uint64` |
| UNHANDLED | TYPE |

### StreamEvent.GuildAddedToList

Fields

| Name | Type |
| ---- | ---- |
| guild_id | `uint64` |
| homeserver | `string` |

### StreamEvent.GuildRemovedFromList

Fields

| Name | Type |
| ---- | ---- |
| guild_id | `uint64` |
| homeserver | `string` |

### StreamEvent.ActionPerformed

Fields

| Name | Type |
| ---- | ---- |
| guild_id | `uint64` |
| channel_id | `uint64` |
| message_id | `uint64` |
| user_id | `uint64` |
| payload | [protocol.chat.v1.ActionPayload](#actionpayload) |

### StreamEvent.RoleMoved

Fields

| Name | Type |
| ---- | ---- |
| guild_id | `uint64` |
| role_id | `uint64` |
| new_position | [protocol.harmonytypes.v1.ItemPosition]({{< ref "protocol.harmonytypes.v1.md" >}}#itemposition) |

### StreamEvent.RoleDeleted

Fields

| Name | Type |
| ---- | ---- |
| guild_id | `uint64` |
| role_id | `uint64` |

### StreamEvent.RoleCreated

Fields

| Name | Type |
| ---- | ---- |
| guild_id | `uint64` |
| role_id | `uint64` |
| name | `string` |
| color | `int32` |
| hoist | `bool` |
| pingable | `bool` |

### StreamEvent.RoleUpdated

Fields

| Name | Type |
| ---- | ---- |
| guild_id | `uint64` |
| role_id | `uint64` |
| new_name | `string` |
| new_color | `int32` |
| new_hoist | `bool` |
| new_pingable | `bool` |

### StreamEvent.RolePermissionsUpdated

Fields

| Name | Type |
| ---- | ---- |
| guild_id | `uint64` |
| channel_id | `uint64` |
| role_id | `uint64` |
| new_perms | [protocol.chat.v1.Permission](#permission) |

### StreamEvent.UserRolesUpdated

Fields

| Name | Type |
| ---- | ---- |
| guild_id | `uint64` |
| user_id | `uint64` |
| new_role_ids | `uint64` |

### StreamEvent.Typing

Fields

| Name | Type |
| ---- | ---- |
| user_id | `uint64` |
| guild_id | `uint64` |
| channel_id | `uint64` |

### StreamEvent.PermissionUpdated

Fields

| Name | Type |
| ---- | ---- |
| guild_id | `uint64` |
| channel_id | `uint64` |
| query | `string` |
| ok | `bool` |

### StreamEvent.MessagePinned

Fields

| Name | Type |
| ---- | ---- |
| guild_id | `uint64` |
| channel_id | `uint64` |
| message_id | `uint64` |

### StreamEvent.MessageUnpinned

Fields

| Name | Type |
| ---- | ---- |
| guild_id | `uint64` |
| channel_id | `uint64` |
| message_id | `uint64` |

### StreamEvent.ReactionUpdated

Fields

| Name | Type |
| ---- | ---- |
| guild_id | `uint64` |
| channel_id | `uint64` |
| message_id | `uint64` |
| reaction | [protocol.chat.v1.Reaction](#reaction) |

### StreamEvent.OwnerAdded

Fields

| Name | Type |
| ---- | ---- |
| user_id | `uint64` |

### StreamEvent.OwnerRemoved

Fields

| Name | Type |
| ---- | ---- |
| user_id | `uint64` |

### StreamEvent.InviteReceived

Fields

| Name | Type |
| ---- | ---- |
| invite_id | `string` |
| server_id | `string` |
| inviter_id | `uint64` |

### StreamEvent.InviteRejected

Fields

| Name | Type |
| ---- | ---- |
| guild_id | `uint64` |
| invite_id | `string` |
| user_id | `uint64` |

## Services 

### ChatService

#### Unary Methods

| Name | Request | Response |
| ---- | ------- | -------- |
|CreateGuild|[protocol.chat.v1.CreateGuildRequest](#createguildrequest)|[protocol.chat.v1.CreateGuildResponse](#createguildresponse)|
|CreateRoom|[protocol.chat.v1.CreateRoomRequest](#createroomrequest)|[protocol.chat.v1.CreateRoomResponse](#createroomresponse)|
|CreateDirectMessage|[protocol.chat.v1.CreateDirectMessageRequest](#createdirectmessagerequest)|[protocol.chat.v1.CreateDirectMessageResponse](#createdirectmessageresponse)|
|UpgradeRoomToGuild|[protocol.chat.v1.UpgradeRoomToGuildRequest](#upgraderoomtoguildrequest)|[protocol.chat.v1.UpgradeRoomToGuildResponse](#upgraderoomtoguildresponse)|
|CreateInvite|[protocol.chat.v1.CreateInviteRequest](#createinviterequest)|[protocol.chat.v1.CreateInviteResponse](#createinviteresponse)|
|CreateChannel|[protocol.chat.v1.CreateChannelRequest](#createchannelrequest)|[protocol.chat.v1.CreateChannelResponse](#createchannelresponse)|
|GetGuildList|[protocol.chat.v1.GetGuildListRequest](#getguildlistrequest)|[protocol.chat.v1.GetGuildListResponse](#getguildlistresponse)|
|InviteUserToGuild|[protocol.chat.v1.InviteUserToGuildRequest](#inviteusertoguildrequest)|[protocol.chat.v1.InviteUserToGuildResponse](#inviteusertoguildresponse)|
|GetPendingInvites|[protocol.chat.v1.GetPendingInvitesRequest](#getpendinginvitesrequest)|[protocol.chat.v1.GetPendingInvitesResponse](#getpendinginvitesresponse)|
|RejectPendingInvite|[protocol.chat.v1.RejectPendingInviteRequest](#rejectpendinginviterequest)|[protocol.chat.v1.RejectPendingInviteResponse](#rejectpendinginviteresponse)|
|IgnorePendingInvite|[protocol.chat.v1.IgnorePendingInviteRequest](#ignorependinginviterequest)|[protocol.chat.v1.IgnorePendingInviteResponse](#ignorependinginviteresponse)|
|GetGuild|[protocol.chat.v1.GetGuildRequest](#getguildrequest)|[protocol.chat.v1.GetGuildResponse](#getguildresponse)|
|GetGuildInvites|[protocol.chat.v1.GetGuildInvitesRequest](#getguildinvitesrequest)|[protocol.chat.v1.GetGuildInvitesResponse](#getguildinvitesresponse)|
|GetGuildMembers|[protocol.chat.v1.GetGuildMembersRequest](#getguildmembersrequest)|[protocol.chat.v1.GetGuildMembersResponse](#getguildmembersresponse)|
|GetGuildChannels|[protocol.chat.v1.GetGuildChannelsRequest](#getguildchannelsrequest)|[protocol.chat.v1.GetGuildChannelsResponse](#getguildchannelsresponse)|
|GetChannelMessages|[protocol.chat.v1.GetChannelMessagesRequest](#getchannelmessagesrequest)|[protocol.chat.v1.GetChannelMessagesResponse](#getchannelmessagesresponse)|
|GetMessage|[protocol.chat.v1.GetMessageRequest](#getmessagerequest)|[protocol.chat.v1.GetMessageResponse](#getmessageresponse)|
|UpdateGuildInformation|[protocol.chat.v1.UpdateGuildInformationRequest](#updateguildinformationrequest)|[protocol.chat.v1.UpdateGuildInformationResponse](#updateguildinformationresponse)|
|UpdateChannelInformation|[protocol.chat.v1.UpdateChannelInformationRequest](#updatechannelinformationrequest)|[protocol.chat.v1.UpdateChannelInformationResponse](#updatechannelinformationresponse)|
|UpdateChannelOrder|[protocol.chat.v1.UpdateChannelOrderRequest](#updatechannelorderrequest)|[protocol.chat.v1.UpdateChannelOrderResponse](#updatechannelorderresponse)|
|UpdateAllChannelOrder|[protocol.chat.v1.UpdateAllChannelOrderRequest](#updateallchannelorderrequest)|[protocol.chat.v1.UpdateAllChannelOrderResponse](#updateallchannelorderresponse)|
|UpdateMessageText|[protocol.chat.v1.UpdateMessageTextRequest](#updatemessagetextrequest)|[protocol.chat.v1.UpdateMessageTextResponse](#updatemessagetextresponse)|
|DeleteGuild|[protocol.chat.v1.DeleteGuildRequest](#deleteguildrequest)|[protocol.chat.v1.DeleteGuildResponse](#deleteguildresponse)|
|DeleteInvite|[protocol.chat.v1.DeleteInviteRequest](#deleteinviterequest)|[protocol.chat.v1.DeleteInviteResponse](#deleteinviteresponse)|
|DeleteChannel|[protocol.chat.v1.DeleteChannelRequest](#deletechannelrequest)|[protocol.chat.v1.DeleteChannelResponse](#deletechannelresponse)|
|DeleteMessage|[protocol.chat.v1.DeleteMessageRequest](#deletemessagerequest)|[protocol.chat.v1.DeleteMessageResponse](#deletemessageresponse)|
|JoinGuild|[protocol.chat.v1.JoinGuildRequest](#joinguildrequest)|[protocol.chat.v1.JoinGuildResponse](#joinguildresponse)|
|LeaveGuild|[protocol.chat.v1.LeaveGuildRequest](#leaveguildrequest)|[protocol.chat.v1.LeaveGuildResponse](#leaveguildresponse)|
|TriggerAction|[protocol.chat.v1.TriggerActionRequest](#triggeractionrequest)|[protocol.chat.v1.TriggerActionResponse](#triggeractionresponse)|
|SendMessage|[protocol.chat.v1.SendMessageRequest](#sendmessagerequest)|[protocol.chat.v1.SendMessageResponse](#sendmessageresponse)|
|QueryHasPermission|[protocol.chat.v1.QueryHasPermissionRequest](#queryhaspermissionrequest)|[protocol.chat.v1.QueryHasPermissionResponse](#queryhaspermissionresponse)|
|SetPermissions|[protocol.chat.v1.SetPermissionsRequest](#setpermissionsrequest)|[protocol.chat.v1.SetPermissionsResponse](#setpermissionsresponse)|
|GetPermissions|[protocol.chat.v1.GetPermissionsRequest](#getpermissionsrequest)|[protocol.chat.v1.GetPermissionsResponse](#getpermissionsresponse)|
|MoveRole|[protocol.chat.v1.MoveRoleRequest](#moverolerequest)|[protocol.chat.v1.MoveRoleResponse](#moveroleresponse)|
|GetGuildRoles|[protocol.chat.v1.GetGuildRolesRequest](#getguildrolesrequest)|[protocol.chat.v1.GetGuildRolesResponse](#getguildrolesresponse)|
|AddGuildRole|[protocol.chat.v1.AddGuildRoleRequest](#addguildrolerequest)|[protocol.chat.v1.AddGuildRoleResponse](#addguildroleresponse)|
|ModifyGuildRole|[protocol.chat.v1.ModifyGuildRoleRequest](#modifyguildrolerequest)|[protocol.chat.v1.ModifyGuildRoleResponse](#modifyguildroleresponse)|
|DeleteGuildRole|[protocol.chat.v1.DeleteGuildRoleRequest](#deleteguildrolerequest)|[protocol.chat.v1.DeleteGuildRoleResponse](#deleteguildroleresponse)|
|ManageUserRoles|[protocol.chat.v1.ManageUserRolesRequest](#manageuserrolesrequest)|[protocol.chat.v1.ManageUserRolesResponse](#manageuserrolesresponse)|
|GetUserRoles|[protocol.chat.v1.GetUserRolesRequest](#getuserrolesrequest)|[protocol.chat.v1.GetUserRolesResponse](#getuserrolesresponse)|
|Typing|[protocol.chat.v1.TypingRequest](#typingrequest)|[protocol.chat.v1.TypingResponse](#typingresponse)|
|PreviewGuild|[protocol.chat.v1.PreviewGuildRequest](#previewguildrequest)|[protocol.chat.v1.PreviewGuildResponse](#previewguildresponse)|
|GetBannedUsers|[protocol.chat.v1.GetBannedUsersRequest](#getbannedusersrequest)|[protocol.chat.v1.GetBannedUsersResponse](#getbannedusersresponse)|
|BanUser|[protocol.chat.v1.BanUserRequest](#banuserrequest)|[protocol.chat.v1.BanUserResponse](#banuserresponse)|
|KickUser|[protocol.chat.v1.KickUserRequest](#kickuserrequest)|[protocol.chat.v1.KickUserResponse](#kickuserresponse)|
|UnbanUser|[protocol.chat.v1.UnbanUserRequest](#unbanuserrequest)|[protocol.chat.v1.UnbanUserResponse](#unbanuserresponse)|
|GetPinnedMessages|[protocol.chat.v1.GetPinnedMessagesRequest](#getpinnedmessagesrequest)|[protocol.chat.v1.GetPinnedMessagesResponse](#getpinnedmessagesresponse)|
|PinMessage|[protocol.chat.v1.PinMessageRequest](#pinmessagerequest)|[protocol.chat.v1.PinMessageResponse](#pinmessageresponse)|
|UnpinMessage|[protocol.chat.v1.UnpinMessageRequest](#unpinmessagerequest)|[protocol.chat.v1.UnpinMessageResponse](#unpinmessageresponse)|
|AddReaction|[protocol.chat.v1.AddReactionRequest](#addreactionrequest)|[protocol.chat.v1.AddReactionResponse](#addreactionresponse)|
|RemoveReaction|[protocol.chat.v1.RemoveReactionRequest](#removereactionrequest)|[protocol.chat.v1.RemoveReactionResponse](#removereactionresponse)|
|GrantOwnership|[protocol.chat.v1.GrantOwnershipRequest](#grantownershiprequest)|[protocol.chat.v1.GrantOwnershipResponse](#grantownershipresponse)|
|GiveUpOwnership|[protocol.chat.v1.GiveUpOwnershipRequest](#giveupownershiprequest)|[protocol.chat.v1.GiveUpOwnershipResponse](#giveupownershipresponse)|

#### Streaming Methods

| Name | Client Streams | Server Streams |
| ---- | -------------- | -------------- |
|StreamEvents|[protocol.chat.v1.StreamEventsRequest](#streameventsrequest)|[protocol.chat.v1.StreamEventsResponse](#streameventsresponse)|
