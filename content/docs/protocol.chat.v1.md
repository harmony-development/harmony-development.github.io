---
title: "Reference: protocol.chat.v1"
---
# Message Types 

## GetUserRequest

Fields

| Name | Type |
| ---- | ---- |
| user_id | `uint64` |

## GetUserResponse

Fields

| Name | Type |
| ---- | ---- |
| user_name | `string` |
| user_avatar | `string` |
| UNHANDLED | TYPE |
| is_bot | `bool` |

## GetUserMetadataRequest

Fields

| Name | Type |
| ---- | ---- |
| app_id | `string` |

## GetUserMetadataResponse

Fields

| Name | Type |
| ---- | ---- |
| metadata | `string` |

## ProfileUpdateRequest

Fields

| Name | Type |
| ---- | ---- |
| new_username | `string` |
| update_username | `bool` |
| new_avatar | `string` |
| update_avatar | `bool` |
| UNHANDLED | TYPE |
| update_status | `bool` |
| is_bot | `bool` |
| update_is_bot | `bool` |

## CreateGuildRequest

Fields

| Name | Type |
| ---- | ---- |
| metadata | [protocol.harmonytypes.v1.Metadata]({{< ref "protocol.harmonytypes.v1.md" >}}#metadata) |
| guild_name | `string` |
| picture_url | `string` |

## CreateGuildResponse

Fields

| Name | Type |
| ---- | ---- |
| guild_id | `uint64` |

## CreateInviteRequest

Fields

| Name | Type |
| ---- | ---- |
| guild_id | `uint64` |
| name | `string` |
| possible_uses | `int32` |

## CreateInviteResponse

Fields

| Name | Type |
| ---- | ---- |
| name | `string` |

## GetGuildListRequest

Fields

| Name | Type |
| ---- | ---- |

## GetGuildListResponse

Fields

| Name | Type |
| ---- | ---- |
| guilds | [protocol.chat.v1.GetGuildListResponse.GuildListEntry](#getguildlistresponse-guildlistentry) |

## GetGuildRequest

Fields

| Name | Type |
| ---- | ---- |
| guild_id | `uint64` |

## GetGuildResponse

Fields

| Name | Type |
| ---- | ---- |
| metadata | [protocol.harmonytypes.v1.Metadata]({{< ref "protocol.harmonytypes.v1.md" >}}#metadata) |
| guild_name | `string` |
| guild_owner | `uint64` |
| guild_picture | `string` |

## GetGuildInvitesRequest

Fields

| Name | Type |
| ---- | ---- |
| guild_id | `uint64` |

## GetGuildInvitesResponse

Fields

| Name | Type |
| ---- | ---- |
| invites | [protocol.chat.v1.GetGuildInvitesResponse.Invite](#getguildinvitesresponse-invite) |

## GetGuildMembersRequest

Fields

| Name | Type |
| ---- | ---- |
| guild_id | `uint64` |

## GetGuildMembersResponse

Fields

| Name | Type |
| ---- | ---- |
| members | `uint64` |

## UpdateGuildInformationRequest

Fields

| Name | Type |
| ---- | ---- |
| guild_id | `uint64` |
| new_guild_name | `string` |
| update_guild_name | `bool` |
| new_guild_picture | `string` |
| update_guild_picture | `bool` |
| metadata | [protocol.harmonytypes.v1.Metadata]({{< ref "protocol.harmonytypes.v1.md" >}}#metadata) |
| update_metadata | `bool` |

## DeleteGuildRequest

Fields

| Name | Type |
| ---- | ---- |
| guild_id | `uint64` |

## DeleteInviteRequest

Fields

| Name | Type |
| ---- | ---- |
| guild_id | `uint64` |
| invite_id | `string` |

## JoinGuildRequest

Fields

| Name | Type |
| ---- | ---- |
| invite_id | `string` |

## JoinGuildResponse

Fields

| Name | Type |
| ---- | ---- |
| guild_id | `uint64` |

## PreviewGuildRequest

Fields

| Name | Type |
| ---- | ---- |
| invite_id | `string` |

## PreviewGuildResponse

Fields

| Name | Type |
| ---- | ---- |
| name | `string` |
| avatar | `string` |
| member_count | `uint64` |

## LeaveGuildRequest

Fields

| Name | Type |
| ---- | ---- |
| guild_id | `uint64` |

## AddGuildToGuildListRequest

Fields

| Name | Type |
| ---- | ---- |
| guild_id | `uint64` |
| homeserver | `string` |

## AddGuildToGuildListResponse

Fields

| Name | Type |
| ---- | ---- |

## RemoveGuildFromGuildListRequest

Fields

| Name | Type |
| ---- | ---- |
| guild_id | `uint64` |
| homeserver | `string` |

## RemoveGuildFromGuildListResponse

Fields

| Name | Type |
| ---- | ---- |

## GetGuildListResponse.GuildListEntry

Fields

| Name | Type |
| ---- | ---- |
| guild_id | `uint64` |
| host | `string` |

## GetGuildInvitesResponse.Invite

Fields

| Name | Type |
| ---- | ---- |
| invite_id | `string` |
| possible_uses | `int32` |
| use_count | `int32` |

## CreateChannelRequest

Fields

| Name | Type |
| ---- | ---- |
| guild_id | `uint64` |
| channel_name | `string` |
| is_category | `bool` |
| previous_id | `uint64` |
| next_id | `uint64` |
| metadata | [protocol.harmonytypes.v1.Metadata]({{< ref "protocol.harmonytypes.v1.md" >}}#metadata) |

## CreateChannelResponse

Fields

| Name | Type |
| ---- | ---- |
| channel_id | `uint64` |

## GetGuildChannelsRequest

Fields

| Name | Type |
| ---- | ---- |
| guild_id | `uint64` |

## GetGuildChannelsResponse

Fields

| Name | Type |
| ---- | ---- |
| channels | [protocol.chat.v1.GetGuildChannelsResponse.Channel](#getguildchannelsresponse-channel) |

## UpdateChannelInformationRequest

Fields

| Name | Type |
| ---- | ---- |
| guild_id | `uint64` |
| channel_id | `uint64` |
| name | `string` |
| update_name | `bool` |
| metadata | [protocol.harmonytypes.v1.Metadata]({{< ref "protocol.harmonytypes.v1.md" >}}#metadata) |
| update_metadata | `bool` |

## UpdateChannelOrderRequest

Fields

| Name | Type |
| ---- | ---- |
| guild_id | `uint64` |
| channel_id | `uint64` |
| previous_id | `uint64` |
| next_id | `uint64` |

## DeleteChannelRequest

Fields

| Name | Type |
| ---- | ---- |
| guild_id | `uint64` |
| channel_id | `uint64` |

## TypingRequest

Fields

| Name | Type |
| ---- | ---- |
| guild_id | `uint64` |
| channel_id | `uint64` |

## GetGuildChannelsResponse.Channel

Fields

| Name | Type |
| ---- | ---- |
| metadata | [protocol.harmonytypes.v1.Metadata]({{< ref "protocol.harmonytypes.v1.md" >}}#metadata) |
| channel_id | `uint64` |
| channel_name | `string` |
| is_category | `bool` |

## GetChannelMessagesRequest

Fields

| Name | Type |
| ---- | ---- |
| guild_id | `uint64` |
| channel_id | `uint64` |
| before_message | `uint64` |

## GetChannelMessagesResponse

Fields

| Name | Type |
| ---- | ---- |
| reached_top | `bool` |
| messages | [protocol.harmonytypes.v1.Message]({{< ref "protocol.harmonytypes.v1.md" >}}#message) |

## GetMessageRequest

Fields

| Name | Type |
| ---- | ---- |
| guild_id | `uint64` |
| channel_id | `uint64` |
| message_id | `uint64` |

## GetMessageResponse

Fields

| Name | Type |
| ---- | ---- |
| message | [protocol.harmonytypes.v1.Message]({{< ref "protocol.harmonytypes.v1.md" >}}#message) |

## UpdateMessageRequest

Fields

| Name | Type |
| ---- | ---- |
| guild_id | `uint64` |
| channel_id | `uint64` |
| message_id | `uint64` |
| content | `string` |
| update_content | `bool` |
| embeds | [protocol.harmonytypes.v1.Embed]({{< ref "protocol.harmonytypes.v1.md" >}}#embed) |
| update_embeds | `bool` |
| actions | [protocol.harmonytypes.v1.Action]({{< ref "protocol.harmonytypes.v1.md" >}}#action) |
| update_actions | `bool` |
| attachments | `string` |
| update_attachments | `bool` |
| overrides | [protocol.harmonytypes.v1.Override]({{< ref "protocol.harmonytypes.v1.md" >}}#override) |
| update_overrides | `bool` |
| metadata | [protocol.harmonytypes.v1.Metadata]({{< ref "protocol.harmonytypes.v1.md" >}}#metadata) |
| update_metadata | `bool` |

## DeleteMessageRequest

Fields

| Name | Type |
| ---- | ---- |
| guild_id | `uint64` |
| channel_id | `uint64` |
| message_id | `uint64` |

## TriggerActionRequest

Fields

| Name | Type |
| ---- | ---- |
| guild_id | `uint64` |
| channel_id | `uint64` |
| message_id | `uint64` |
| action_id | `string` |
| action_data | `string` |

## SendMessageRequest

Fields

| Name | Type |
| ---- | ---- |
| guild_id | `uint64` |
| channel_id | `uint64` |
| content | `string` |
| actions | [protocol.harmonytypes.v1.Action]({{< ref "protocol.harmonytypes.v1.md" >}}#action) |
| embeds | [protocol.harmonytypes.v1.Embed]({{< ref "protocol.harmonytypes.v1.md" >}}#embed) |
| attachments | `string` |
| in_reply_to | `uint64` |
| overrides | [protocol.harmonytypes.v1.Override]({{< ref "protocol.harmonytypes.v1.md" >}}#override) |
| echo_id | `uint64` |
| metadata | [protocol.harmonytypes.v1.Metadata]({{< ref "protocol.harmonytypes.v1.md" >}}#metadata) |

## SendMessageResponse

Fields

| Name | Type |
| ---- | ---- |
| message_id | `uint64` |

## CreateEmotePackRequest

Fields

| Name | Type |
| ---- | ---- |
| pack_name | `string` |

## CreateEmotePackResponse

Fields

| Name | Type |
| ---- | ---- |
| pack_id | `uint64` |

## GetEmotePacksRequest

Fields

| Name | Type |
| ---- | ---- |

## GetEmotePacksResponse

Fields

| Name | Type |
| ---- | ---- |
| packs | [protocol.chat.v1.GetEmotePacksResponse.EmotePack](#getemotepacksresponse-emotepack) |

## GetEmotePackEmotesRequest

Fields

| Name | Type |
| ---- | ---- |
| pack_id | `uint64` |

## GetEmotePackEmotesResponse

Fields

| Name | Type |
| ---- | ---- |
| emotes | [protocol.chat.v1.GetEmotePackEmotesResponse.Emote](#getemotepackemotesresponse-emote) |

## AddEmoteToPackRequest

Fields

| Name | Type |
| ---- | ---- |
| pack_id | `uint64` |
| image_id | `string` |
| name | `string` |

## DeleteEmoteFromPackRequest

Fields

| Name | Type |
| ---- | ---- |
| pack_id | `uint64` |
| image_id | `string` |

## DeleteEmotePackRequest

Fields

| Name | Type |
| ---- | ---- |
| pack_id | `uint64` |

## DequipEmotePackRequest

Fields

| Name | Type |
| ---- | ---- |
| pack_id | `uint64` |

## GetEmotePacksResponse.EmotePack

Fields

| Name | Type |
| ---- | ---- |
| pack_id | `uint64` |
| pack_owner | `uint64` |
| pack_name | `string` |

## GetEmotePackEmotesResponse.Emote

Fields

| Name | Type |
| ---- | ---- |
| image_id | `string` |
| name | `string` |

## QueryPermissionsRequest

Fields

| Name | Type |
| ---- | ---- |
| guild_id | `uint64` |
| channel_id | `uint64` |
| check_for | `string` |
| as | `uint64` |

## QueryPermissionsResponse

Fields

| Name | Type |
| ---- | ---- |
| ok | `bool` |

## Permission

Fields

| Name | Type |
| ---- | ---- |
| matches | `string` |
| UNHANDLED | TYPE |

## PermissionList

Fields

| Name | Type |
| ---- | ---- |
| permissions | [protocol.chat.v1.Permission](#permission) |

## SetPermissionsRequest

Fields

| Name | Type |
| ---- | ---- |
| guild_id | `uint64` |
| channel_id | `uint64` |
| role_id | `uint64` |
| perms | [protocol.chat.v1.PermissionList](#permissionlist) |

## GetPermissionsRequest

Fields

| Name | Type |
| ---- | ---- |
| guild_id | `uint64` |
| channel_id | `uint64` |
| role_id | `uint64` |

## GetPermissionsResponse

Fields

| Name | Type |
| ---- | ---- |
| perms | [protocol.chat.v1.PermissionList](#permissionlist) |

## Role

Fields

| Name | Type |
| ---- | ---- |
| role_id | `uint64` |
| name | `string` |
| color | `int32` |
| hoist | `bool` |
| pingable | `bool` |

## MoveRoleRequest

Fields

| Name | Type |
| ---- | ---- |
| guild_id | `uint64` |
| role_id | `uint64` |
| before_id | `uint64` |
| after_id | `uint64` |

## MoveRoleResponse

Fields

| Name | Type |
| ---- | ---- |

## GetGuildRolesRequest

Fields

| Name | Type |
| ---- | ---- |
| guild_id | `uint64` |

## GetGuildRolesResponse

Fields

| Name | Type |
| ---- | ---- |
| roles | [protocol.chat.v1.Role](#role) |

## AddGuildRoleRequest

Fields

| Name | Type |
| ---- | ---- |
| guild_id | `uint64` |
| role | [protocol.chat.v1.Role](#role) |

## AddGuildRoleResponse

Fields

| Name | Type |
| ---- | ---- |
| role_id | `uint64` |

## DeleteGuildRoleRequest

Fields

| Name | Type |
| ---- | ---- |
| guild_id | `uint64` |
| role_id | `uint64` |

## ModifyGuildRoleRequest

Fields

| Name | Type |
| ---- | ---- |
| guild_id | `uint64` |
| role | [protocol.chat.v1.Role](#role) |
| modify_name | `bool` |
| modify_color | `bool` |
| modify_hoist | `bool` |
| modify_pingable | `bool` |

## ManageUserRolesRequest

Fields

| Name | Type |
| ---- | ---- |
| guild_id | `uint64` |
| user_id | `uint64` |
| give_role_ids | `uint64` |
| take_role_ids | `uint64` |

## GetUserRolesRequest

Fields

| Name | Type |
| ---- | ---- |
| guild_id | `uint64` |
| user_id | `uint64` |

## GetUserRolesResponse

Fields

| Name | Type |
| ---- | ---- |
| roles | `uint64` |

## StreamEventsRequest

Fields

| Name | Type |
| ---- | ---- |
| subscribe_to_guild | [protocol.chat.v1.StreamEventsRequest.SubscribeToGuild](#streameventsrequest-subscribetoguild) |
| subscribe_to_actions | [protocol.chat.v1.StreamEventsRequest.SubscribeToActions](#streameventsrequest-subscribetoactions) |
| subscribe_to_homeserver_events | [protocol.chat.v1.StreamEventsRequest.SubscribeToHomeserverEvents](#streameventsrequest-subscribetohomeserverevents) |

## Event

Fields

| Name | Type |
| ---- | ---- |
| guild_added_to_list | [protocol.chat.v1.Event.GuildAddedToList](#event-guildaddedtolist) |
| guild_removed_from_list | [protocol.chat.v1.Event.GuildRemovedFromList](#event-guildremovedfromlist) |
| action_performed | [protocol.chat.v1.Event.ActionPerformed](#event-actionperformed) |
| sent_message | [protocol.chat.v1.Event.MessageSent](#event-messagesent) |
| edited_message | [protocol.chat.v1.Event.MessageUpdated](#event-messageupdated) |
| deleted_message | [protocol.chat.v1.Event.MessageDeleted](#event-messagedeleted) |
| created_channel | [protocol.chat.v1.Event.ChannelCreated](#event-channelcreated) |
| edited_channel | [protocol.chat.v1.Event.ChannelUpdated](#event-channelupdated) |
| deleted_channel | [protocol.chat.v1.Event.ChannelDeleted](#event-channeldeleted) |
| edited_guild | [protocol.chat.v1.Event.GuildUpdated](#event-guildupdated) |
| deleted_guild | [protocol.chat.v1.Event.GuildDeleted](#event-guilddeleted) |
| joined_member | [protocol.chat.v1.Event.MemberJoined](#event-memberjoined) |
| left_member | [protocol.chat.v1.Event.MemberLeft](#event-memberleft) |
| role_moved | [protocol.chat.v1.Event.RoleMoved](#event-rolemoved) |
| profile_updated | [protocol.chat.v1.Event.ProfileUpdated](#event-profileupdated) |
| typing | [protocol.chat.v1.Event.Typing](#event-typing) |

## StreamEventsRequest.SubscribeToGuild

Fields

| Name | Type |
| ---- | ---- |
| guild_id | `uint64` |

## StreamEventsRequest.SubscribeToActions

Fields

| Name | Type |
| ---- | ---- |

## StreamEventsRequest.SubscribeToHomeserverEvents

Fields

| Name | Type |
| ---- | ---- |

## Event.MessageSent

Fields

| Name | Type |
| ---- | ---- |
| echo_id | `uint64` |
| message | [protocol.harmonytypes.v1.Message]({{< ref "protocol.harmonytypes.v1.md" >}}#message) |

## Event.MessageUpdated

Fields

| Name | Type |
| ---- | ---- |
| guild_id | `uint64` |
| channel_id | `uint64` |
| message_id | `uint64` |
| edited_at | [google.protobuf.Timestamp]({{< ref "google.protobuf.md" >}}#timestamp) |
| content | `string` |
| update_content | `bool` |
| embeds | [protocol.harmonytypes.v1.Embed]({{< ref "protocol.harmonytypes.v1.md" >}}#embed) |
| update_embeds | `bool` |
| actions | [protocol.harmonytypes.v1.Action]({{< ref "protocol.harmonytypes.v1.md" >}}#action) |
| update_actions | `bool` |
| attachments | [protocol.harmonytypes.v1.Attachment]({{< ref "protocol.harmonytypes.v1.md" >}}#attachment) |
| update_attachments | `bool` |
| overrides | [protocol.harmonytypes.v1.Override]({{< ref "protocol.harmonytypes.v1.md" >}}#override) |
| update_overrides | `bool` |
| metadata | [protocol.harmonytypes.v1.Metadata]({{< ref "protocol.harmonytypes.v1.md" >}}#metadata) |
| update_metadata | `bool` |

## Event.MessageDeleted

Fields

| Name | Type |
| ---- | ---- |
| guild_id | `uint64` |
| channel_id | `uint64` |
| message_id | `uint64` |

## Event.ChannelCreated

Fields

| Name | Type |
| ---- | ---- |
| guild_id | `uint64` |
| channel_id | `uint64` |
| name | `string` |
| previous_id | `uint64` |
| next_id | `uint64` |
| is_category | `bool` |
| metadata | [protocol.harmonytypes.v1.Metadata]({{< ref "protocol.harmonytypes.v1.md" >}}#metadata) |

## Event.ChannelUpdated

Fields

| Name | Type |
| ---- | ---- |
| guild_id | `uint64` |
| channel_id | `uint64` |
| name | `string` |
| update_name | `bool` |
| previous_id | `uint64` |
| next_id | `uint64` |
| update_order | `bool` |
| metadata | [protocol.harmonytypes.v1.Metadata]({{< ref "protocol.harmonytypes.v1.md" >}}#metadata) |
| update_metadata | `bool` |

## Event.ChannelDeleted

Fields

| Name | Type |
| ---- | ---- |
| guild_id | `uint64` |
| channel_id | `uint64` |

## Event.GuildUpdated

Fields

| Name | Type |
| ---- | ---- |
| guild_id | `uint64` |
| name | `string` |
| update_name | `bool` |
| picture | `string` |
| update_picture | `bool` |
| metadata | [protocol.harmonytypes.v1.Metadata]({{< ref "protocol.harmonytypes.v1.md" >}}#metadata) |
| update_metadata | `bool` |

## Event.GuildDeleted

Fields

| Name | Type |
| ---- | ---- |
| guild_id | `uint64` |

## Event.MemberJoined

Fields

| Name | Type |
| ---- | ---- |
| member_id | `uint64` |
| guild_id | `uint64` |

## Event.MemberLeft

Fields

| Name | Type |
| ---- | ---- |
| member_id | `uint64` |
| guild_id | `uint64` |

## Event.GuildAddedToList

Fields

| Name | Type |
| ---- | ---- |
| guild_id | `uint64` |
| homeserver | `string` |

## Event.GuildRemovedFromList

Fields

| Name | Type |
| ---- | ---- |
| guild_id | `uint64` |
| homeserver | `string` |

## Event.ActionPerformed

Fields

| Name | Type |
| ---- | ---- |
| guild_id | `uint64` |
| channel_id | `uint64` |
| message_id | `uint64` |
| action_id | `string` |
| action_data | `string` |

## Event.RoleMoved

Fields

| Name | Type |
| ---- | ---- |
| guild_id | `uint64` |
| role_id | `uint64` |

## Event.ProfileUpdated

Fields

| Name | Type |
| ---- | ---- |
| user_id | `uint64` |
| new_username | `string` |
| update_username | `bool` |
| new_avatar | `string` |
| update_avatar | `bool` |
| UNHANDLED | TYPE |
| update_status | `bool` |
| is_bot | `bool` |
| update_is_bot | `bool` |

## Event.Typing

Fields

| Name | Type |
| ---- | ---- |
| user_id | `uint64` |
| guild_id | `uint64` |
| channel_id | `uint64` |

## SyncRequest

Fields

| Name | Type |
| ---- | ---- |
| token | `string` |
| host | `string` |

## SyncEvent

Fields

| Name | Type |
| ---- | ---- |
| dm_invite | [protocol.chat.v1.SyncEvent.DMInvite](#syncevent-dminvite) |

## SyncEvent.DMInvite

Fields

| Name | Type |
| ---- | ---- |
| user_name | `string` |
| user_avatar | `string` |
| dm_name | `string` |
| dm_avatar | `string` |
| invite_id | `string` |

# Services 

## ChatService

### Unary Methods

| Name | Request | Response |
| ---- | ------- | -------- |
|CreateGuild|[protocol.chat.v1.CreateGuildRequest](#createguildrequest)|[protocol.chat.v1.CreateGuildResponse](#createguildresponse)|
|CreateInvite|[protocol.chat.v1.CreateInviteRequest](#createinviterequest)|[protocol.chat.v1.CreateInviteResponse](#createinviteresponse)|
|CreateChannel|[protocol.chat.v1.CreateChannelRequest](#createchannelrequest)|[protocol.chat.v1.CreateChannelResponse](#createchannelresponse)|
|CreateEmotePack|[protocol.chat.v1.CreateEmotePackRequest](#createemotepackrequest)|[protocol.chat.v1.CreateEmotePackResponse](#createemotepackresponse)|
|GetGuildList|[protocol.chat.v1.GetGuildListRequest](#getguildlistrequest)|[protocol.chat.v1.GetGuildListResponse](#getguildlistresponse)|
|AddGuildToGuildList|[protocol.chat.v1.AddGuildToGuildListRequest](#addguildtoguildlistrequest)|[protocol.chat.v1.AddGuildToGuildListResponse](#addguildtoguildlistresponse)|
|RemoveGuildFromGuildList|[protocol.chat.v1.RemoveGuildFromGuildListRequest](#removeguildfromguildlistrequest)|[protocol.chat.v1.RemoveGuildFromGuildListResponse](#removeguildfromguildlistresponse)|
|GetGuild|[protocol.chat.v1.GetGuildRequest](#getguildrequest)|[protocol.chat.v1.GetGuildResponse](#getguildresponse)|
|GetGuildInvites|[protocol.chat.v1.GetGuildInvitesRequest](#getguildinvitesrequest)|[protocol.chat.v1.GetGuildInvitesResponse](#getguildinvitesresponse)|
|GetGuildMembers|[protocol.chat.v1.GetGuildMembersRequest](#getguildmembersrequest)|[protocol.chat.v1.GetGuildMembersResponse](#getguildmembersresponse)|
|GetGuildChannels|[protocol.chat.v1.GetGuildChannelsRequest](#getguildchannelsrequest)|[protocol.chat.v1.GetGuildChannelsResponse](#getguildchannelsresponse)|
|GetChannelMessages|[protocol.chat.v1.GetChannelMessagesRequest](#getchannelmessagesrequest)|[protocol.chat.v1.GetChannelMessagesResponse](#getchannelmessagesresponse)|
|GetMessage|[protocol.chat.v1.GetMessageRequest](#getmessagerequest)|[protocol.chat.v1.GetMessageResponse](#getmessageresponse)|
|GetEmotePacks|[protocol.chat.v1.GetEmotePacksRequest](#getemotepacksrequest)|[protocol.chat.v1.GetEmotePacksResponse](#getemotepacksresponse)|
|GetEmotePackEmotes|[protocol.chat.v1.GetEmotePackEmotesRequest](#getemotepackemotesrequest)|[protocol.chat.v1.GetEmotePackEmotesResponse](#getemotepackemotesresponse)|
|UpdateGuildInformation|[protocol.chat.v1.UpdateGuildInformationRequest](#updateguildinformationrequest)|[google.protobuf.Empty]({{< ref "google.protobuf.md" >}}#empty)|
|UpdateChannelInformation|[protocol.chat.v1.UpdateChannelInformationRequest](#updatechannelinformationrequest)|[google.protobuf.Empty]({{< ref "google.protobuf.md" >}}#empty)|
|UpdateChannelOrder|[protocol.chat.v1.UpdateChannelOrderRequest](#updatechannelorderrequest)|[google.protobuf.Empty]({{< ref "google.protobuf.md" >}}#empty)|
|UpdateMessage|[protocol.chat.v1.UpdateMessageRequest](#updatemessagerequest)|[google.protobuf.Empty]({{< ref "google.protobuf.md" >}}#empty)|
|AddEmoteToPack|[protocol.chat.v1.AddEmoteToPackRequest](#addemotetopackrequest)|[google.protobuf.Empty]({{< ref "google.protobuf.md" >}}#empty)|
|DeleteGuild|[protocol.chat.v1.DeleteGuildRequest](#deleteguildrequest)|[google.protobuf.Empty]({{< ref "google.protobuf.md" >}}#empty)|
|DeleteInvite|[protocol.chat.v1.DeleteInviteRequest](#deleteinviterequest)|[google.protobuf.Empty]({{< ref "google.protobuf.md" >}}#empty)|
|DeleteChannel|[protocol.chat.v1.DeleteChannelRequest](#deletechannelrequest)|[google.protobuf.Empty]({{< ref "google.protobuf.md" >}}#empty)|
|DeleteMessage|[protocol.chat.v1.DeleteMessageRequest](#deletemessagerequest)|[google.protobuf.Empty]({{< ref "google.protobuf.md" >}}#empty)|
|DeleteEmoteFromPack|[protocol.chat.v1.DeleteEmoteFromPackRequest](#deleteemotefrompackrequest)|[google.protobuf.Empty]({{< ref "google.protobuf.md" >}}#empty)|
|DeleteEmotePack|[protocol.chat.v1.DeleteEmotePackRequest](#deleteemotepackrequest)|[google.protobuf.Empty]({{< ref "google.protobuf.md" >}}#empty)|
|DequipEmotePack|[protocol.chat.v1.DequipEmotePackRequest](#dequipemotepackrequest)|[google.protobuf.Empty]({{< ref "google.protobuf.md" >}}#empty)|
|JoinGuild|[protocol.chat.v1.JoinGuildRequest](#joinguildrequest)|[protocol.chat.v1.JoinGuildResponse](#joinguildresponse)|
|LeaveGuild|[protocol.chat.v1.LeaveGuildRequest](#leaveguildrequest)|[google.protobuf.Empty]({{< ref "google.protobuf.md" >}}#empty)|
|TriggerAction|[protocol.chat.v1.TriggerActionRequest](#triggeractionrequest)|[google.protobuf.Empty]({{< ref "google.protobuf.md" >}}#empty)|
|SendMessage|[protocol.chat.v1.SendMessageRequest](#sendmessagerequest)|[protocol.chat.v1.SendMessageResponse](#sendmessageresponse)|
|QueryHasPermission|[protocol.chat.v1.QueryPermissionsRequest](#querypermissionsrequest)|[protocol.chat.v1.QueryPermissionsResponse](#querypermissionsresponse)|
|SetPermissions|[protocol.chat.v1.SetPermissionsRequest](#setpermissionsrequest)|[google.protobuf.Empty]({{< ref "google.protobuf.md" >}}#empty)|
|GetPermissions|[protocol.chat.v1.GetPermissionsRequest](#getpermissionsrequest)|[protocol.chat.v1.GetPermissionsResponse](#getpermissionsresponse)|
|MoveRole|[protocol.chat.v1.MoveRoleRequest](#moverolerequest)|[protocol.chat.v1.MoveRoleResponse](#moveroleresponse)|
|GetGuildRoles|[protocol.chat.v1.GetGuildRolesRequest](#getguildrolesrequest)|[protocol.chat.v1.GetGuildRolesResponse](#getguildrolesresponse)|
|AddGuildRole|[protocol.chat.v1.AddGuildRoleRequest](#addguildrolerequest)|[protocol.chat.v1.AddGuildRoleResponse](#addguildroleresponse)|
|ModifyGuildRole|[protocol.chat.v1.ModifyGuildRoleRequest](#modifyguildrolerequest)|[google.protobuf.Empty]({{< ref "google.protobuf.md" >}}#empty)|
|DeleteGuildRole|[protocol.chat.v1.DeleteGuildRoleRequest](#deleteguildrolerequest)|[google.protobuf.Empty]({{< ref "google.protobuf.md" >}}#empty)|
|ManageUserRoles|[protocol.chat.v1.ManageUserRolesRequest](#manageuserrolesrequest)|[google.protobuf.Empty]({{< ref "google.protobuf.md" >}}#empty)|
|GetUserRoles|[protocol.chat.v1.GetUserRolesRequest](#getuserrolesrequest)|[protocol.chat.v1.GetUserRolesResponse](#getuserrolesresponse)|
|GetUser|[protocol.chat.v1.GetUserRequest](#getuserrequest)|[protocol.chat.v1.GetUserResponse](#getuserresponse)|
|GetUserMetadata|[protocol.chat.v1.GetUserMetadataRequest](#getusermetadatarequest)|[protocol.chat.v1.GetUserMetadataResponse](#getusermetadataresponse)|
|ProfileUpdate|[protocol.chat.v1.ProfileUpdateRequest](#profileupdaterequest)|[google.protobuf.Empty]({{< ref "google.protobuf.md" >}}#empty)|
|Typing|[protocol.chat.v1.TypingRequest](#typingrequest)|[google.protobuf.Empty]({{< ref "google.protobuf.md" >}}#empty)|
|PreviewGuild|[protocol.chat.v1.PreviewGuildRequest](#previewguildrequest)|[protocol.chat.v1.PreviewGuildResponse](#previewguildresponse)|

### Streaming Methods

| Name | Client Streams | Server Streams |
| ---- | -------------- | -------------- |
|StreamEvents|[protocol.chat.v1.StreamEventsRequest](#streameventsrequest)|[protocol.chat.v1.Event](#event)|
