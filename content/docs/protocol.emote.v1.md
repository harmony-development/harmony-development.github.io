---
title: "Reference: protocol.emote.v1"
---
## Message Types 

### EmotePack
Data for a single pack of emotes.

#### Fields


##### pack_id (optional  `uint64`)
The ID of the pack.
##### pack_owner (optional  `uint64`)
The ID of the user who created the pack.
##### pack_name (optional  `string`)
The name of the pack.

### Emote
Data for a single emote.

#### Fields


##### image_id (optional  `string`)
The image ID of the emote. This is the ID of the image in the image store
(same place attachments are stored).
##### name (optional  `string`)
The name of the emote.

### CreateEmotePackRequest
Used in the `CreateEmotePack` endpoint.

#### Fields


##### pack_name (optional  `string`)
the name of the pack.

### CreateEmotePackResponse
Used in the `CreateEmotePack` endpoint.

#### Fields


##### pack_id (optional  `uint64`)
The ID of the pack.

### GetEmotePacksRequest
Used in the `GetEmotePacks` endpoint.

This item has no fields.

### GetEmotePacksResponse
Used in the `GetEmotePacks` endpoint.

#### Fields


##### packs (repeated  [protocol.emote.v1.EmotePack](#emotepack))
The list of emote packs.

### GetEmotePackEmotesRequest
Used in the `GetEmotes` endpoint.

#### Fields


##### pack_id (optional  `uint64`)
The ID of the pack.

### GetEmotePackEmotesResponse
Used in the `GetEmotes` endpoint.

#### Fields


##### emotes (repeated  [protocol.emote.v1.Emote](#emote))
The list of emotes in the pack.

### AddEmoteToPackRequest
Used in the `AddEmoteToPack` endpoint.

#### Fields


##### pack_id (optional  `uint64`)
The ID of the pack.
##### emote (optional  [protocol.emote.v1.Emote](#emote))
The emote to add.

### AddEmoteToPackResponse
Used in the `AddEmoteToPack` endpoint.

This item has no fields.

### DeleteEmoteFromPackRequest
Used in the `DeleteEmoteFromPack` endpoint.

#### Fields


##### pack_id (optional  `uint64`)
The ID of the pack.
##### name (optional  `string`)
The name of the emote to delete.

### DeleteEmoteFromPackResponse
Used in the `DeleteEmoteFromPack` endpoint.

This item has no fields.

### DeleteEmotePackRequest
Used in the `DeleteEmotePack` endpoint.

#### Fields


##### pack_id (optional  `uint64`)
The ID of the pack.

### DeleteEmotePackResponse
Used in the `DeleteEmotePack` endpoint.

This item has no fields.

### DequipEmotePackRequest
Used in the `DequipEmotePack` endpoint.

#### Fields


##### pack_id (optional  `uint64`)
The ID of the pack.

### DequipEmotePackResponse
Used in the `DequipEmotePack` endpoint.

This item has no fields.

### EquipEmotePackRequest
Used in the `EquipEmotePack` endpoint.

#### Fields


##### pack_id (optional  `uint64`)
The ID of the pack.

### EquipEmotePackResponse
Used in the `EquipEmotePack` endpoint.

This item has no fields.

### EmotePackUpdated
Event sent when an emote pack's information is changed.

Should only be sent to users who have the pack equipped.

#### Fields


##### pack_id (optional  `uint64`)
ID of the pack that was updated.
##### new_pack_name (optional  `string`)
New pack name of the pack.

### EmotePackDeleted
Event sent when an emote pack is deleted.

Should only be sent to users who have the pack equipped.
Should also be sent if a user dequips an emote pack, only to the user that dequipped it.

#### Fields


##### pack_id (optional  `uint64`)
ID of the pack that was deleted.

### EmotePackAdded
Event sent when an emote pack is added.

Should only be sent to the user who equipped the pack.

#### Fields


##### pack (optional  [protocol.emote.v1.EmotePack](#emotepack))
Emote pack that was equipped by the user.

### EmotePackEmotesUpdated
Event sent when an emote pack's emotes were changed.

Should only be sent to users who have the pack equipped.

#### Fields


##### pack_id (optional  `uint64`)
ID of the pack to update the emotes of.
##### added_emotes (repeated  [protocol.emote.v1.Emote](#emote))
The added emotes.
##### deleted_emotes (repeated  `string`)
The names of the deleted emotes.

### StreamEvent
Describes an emote service event.

#### Fields


##### emote_pack_added (optional  [protocol.emote.v1.EmotePackAdded](#emotepackadded))
Send the emote pack added event.
##### emote_pack_updated (optional  [protocol.emote.v1.EmotePackUpdated](#emotepackupdated))
Send the emote pack updated event.
##### emote_pack_deleted (optional  [protocol.emote.v1.EmotePackDeleted](#emotepackdeleted))
Send the emote pack deleted event.
##### emote_pack_emotes_updated (optional  [protocol.emote.v1.EmotePackEmotesUpdated](#emotepackemotesupdated))
Send the emote pack emotes updated event.

## Services 

### EmoteService

Harmony's Emote service manages the emotes and emote packs.
#### Methods

##### CreateEmotePack
[protocol.emote.v1.CreateEmotePackRequest](#createemotepackrequest) -> [protocol.emote.v1.CreateEmotePackResponse](#createemotepackresponse)

Endpoint to create an emote pack.
##### GetEmotePacks
[protocol.emote.v1.GetEmotePacksRequest](#getemotepacksrequest) -> [protocol.emote.v1.GetEmotePacksResponse](#getemotepacksresponse)

Endpoint to get the emote packs you have equipped.
##### GetEmotePackEmotes
[protocol.emote.v1.GetEmotePackEmotesRequest](#getemotepackemotesrequest) -> [protocol.emote.v1.GetEmotePackEmotesResponse](#getemotepackemotesresponse)

Endpoint to get the emotes in an emote pack.
##### AddEmoteToPack
[protocol.emote.v1.AddEmoteToPackRequest](#addemotetopackrequest) -> [protocol.emote.v1.AddEmoteToPackResponse](#addemotetopackresponse)

Endpoint to add an emote to an emote pack that you own.
##### DeleteEmotePack
[protocol.emote.v1.DeleteEmotePackRequest](#deleteemotepackrequest) -> [protocol.emote.v1.DeleteEmotePackResponse](#deleteemotepackresponse)

Endpoint to delete an emote pack that you own.
##### DeleteEmoteFromPack
[protocol.emote.v1.DeleteEmoteFromPackRequest](#deleteemotefrompackrequest) -> [protocol.emote.v1.DeleteEmoteFromPackResponse](#deleteemotefrompackresponse)

Endpoint to delete an emote from an emote pack.
##### DequipEmotePack
[protocol.emote.v1.DequipEmotePackRequest](#dequipemotepackrequest) -> [protocol.emote.v1.DequipEmotePackResponse](#dequipemotepackresponse)

Endpoint to dequip an emote pack that you have equipped.
##### EquipEmotePack
[protocol.emote.v1.EquipEmotePackRequest](#equipemotepackrequest) -> [protocol.emote.v1.EquipEmotePackResponse](#equipemotepackresponse)

Endpoint to equip an emote pack.
