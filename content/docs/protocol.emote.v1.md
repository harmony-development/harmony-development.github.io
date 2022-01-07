---
title: "Reference: protocol.emote.v1"
---
## Message Types 

### EmotePack

Fields

| Name | Type |
| ---- | ---- |
| pack_id | `uint64` |
| pack_owner | `uint64` |
| pack_name | `string` |

### Emote

Fields

| Name | Type |
| ---- | ---- |
| image_id | `string` |
| name | `string` |

### CreateEmotePackRequest

Fields

| Name | Type |
| ---- | ---- |
| pack_name | `string` |

### CreateEmotePackResponse

Fields

| Name | Type |
| ---- | ---- |
| pack_id | `uint64` |

### GetEmotePacksRequest

Fields

| Name | Type |
| ---- | ---- |

### GetEmotePacksResponse

Fields

| Name | Type |
| ---- | ---- |
| packs | [protocol.emote.v1.EmotePack](#emotepack) |

### GetEmotePackEmotesRequest

Fields

| Name | Type |
| ---- | ---- |
| pack_id | `uint64` |

### GetEmotePackEmotesResponse

Fields

| Name | Type |
| ---- | ---- |
| emotes | [protocol.emote.v1.Emote](#emote) |

### AddEmoteToPackRequest

Fields

| Name | Type |
| ---- | ---- |
| pack_id | `uint64` |
| emote | [protocol.emote.v1.Emote](#emote) |

### AddEmoteToPackResponse

Fields

| Name | Type |
| ---- | ---- |

### DeleteEmoteFromPackRequest

Fields

| Name | Type |
| ---- | ---- |
| pack_id | `uint64` |
| name | `string` |

### DeleteEmoteFromPackResponse

Fields

| Name | Type |
| ---- | ---- |

### DeleteEmotePackRequest

Fields

| Name | Type |
| ---- | ---- |
| pack_id | `uint64` |

### DeleteEmotePackResponse

Fields

| Name | Type |
| ---- | ---- |

### DequipEmotePackRequest

Fields

| Name | Type |
| ---- | ---- |
| pack_id | `uint64` |

### DequipEmotePackResponse

Fields

| Name | Type |
| ---- | ---- |

### EquipEmotePackRequest

Fields

| Name | Type |
| ---- | ---- |
| pack_id | `uint64` |

### EquipEmotePackResponse

Fields

| Name | Type |
| ---- | ---- |

### EmotePackUpdated

Fields

| Name | Type |
| ---- | ---- |
| pack_id | `uint64` |
| new_pack_name | `string` |

### EmotePackDeleted

Fields

| Name | Type |
| ---- | ---- |
| pack_id | `uint64` |

### EmotePackAdded

Fields

| Name | Type |
| ---- | ---- |
| pack | [protocol.emote.v1.EmotePack](#emotepack) |

### EmotePackEmotesUpdated

Fields

| Name | Type |
| ---- | ---- |
| pack_id | `uint64` |
| added_emotes | [protocol.emote.v1.Emote](#emote) |
| deleted_emotes | `string` |

### StreamEvent

Fields

| Name | Type |
| ---- | ---- |
| emote_pack_added | [protocol.emote.v1.EmotePackAdded](#emotepackadded) |
| emote_pack_updated | [protocol.emote.v1.EmotePackUpdated](#emotepackupdated) |
| emote_pack_deleted | [protocol.emote.v1.EmotePackDeleted](#emotepackdeleted) |
| emote_pack_emotes_updated | [protocol.emote.v1.EmotePackEmotesUpdated](#emotepackemotesupdated) |

## Services 

### EmoteService

#### Unary Methods

| Name | Request | Response |
| ---- | ------- | -------- |
|CreateEmotePack|[protocol.emote.v1.CreateEmotePackRequest](#createemotepackrequest)|[protocol.emote.v1.CreateEmotePackResponse](#createemotepackresponse)|
|GetEmotePacks|[protocol.emote.v1.GetEmotePacksRequest](#getemotepacksrequest)|[protocol.emote.v1.GetEmotePacksResponse](#getemotepacksresponse)|
|GetEmotePackEmotes|[protocol.emote.v1.GetEmotePackEmotesRequest](#getemotepackemotesrequest)|[protocol.emote.v1.GetEmotePackEmotesResponse](#getemotepackemotesresponse)|
|AddEmoteToPack|[protocol.emote.v1.AddEmoteToPackRequest](#addemotetopackrequest)|[protocol.emote.v1.AddEmoteToPackResponse](#addemotetopackresponse)|
|DeleteEmotePack|[protocol.emote.v1.DeleteEmotePackRequest](#deleteemotepackrequest)|[protocol.emote.v1.DeleteEmotePackResponse](#deleteemotepackresponse)|
|DeleteEmoteFromPack|[protocol.emote.v1.DeleteEmoteFromPackRequest](#deleteemotefrompackrequest)|[protocol.emote.v1.DeleteEmoteFromPackResponse](#deleteemotefrompackresponse)|
|DequipEmotePack|[protocol.emote.v1.DequipEmotePackRequest](#dequipemotepackrequest)|[protocol.emote.v1.DequipEmotePackResponse](#dequipemotepackresponse)|
|EquipEmotePack|[protocol.emote.v1.EquipEmotePackRequest](#equipemotepackrequest)|[protocol.emote.v1.EquipEmotePackResponse](#equipemotepackresponse)|

#### Streaming Methods

| Name | Client Streams | Server Streams |
| ---- | -------------- | -------------- |
