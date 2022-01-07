---
title: "Reference: protocol.emote.v1"
---
## Message Types 

### <span class="codicon codicon-symbol-structure symbol-structure"></span>EmotePack
Data for a single pack of emotes.

#### Fields


##### <span class="codicon codicon-symbol-field symbol-field"></span>pack_id (optional  `uint64`)
The ID of the pack.
##### <span class="codicon codicon-symbol-field symbol-field"></span>pack_owner (optional  `uint64`)
The ID of the user who created the pack.
##### <span class="codicon codicon-symbol-field symbol-field"></span>pack_name (optional  `string`)
The name of the pack.

### <span class="codicon codicon-symbol-structure symbol-structure"></span>Emote
Data for a single emote.

#### Fields


##### <span class="codicon codicon-symbol-field symbol-field"></span>image_id (optional  `string`)
The image ID of the emote. This is the ID of the image in the image store
(same place attachments are stored).
##### <span class="codicon codicon-symbol-field symbol-field"></span>name (optional  `string`)
The name of the emote.

### <span class="codicon codicon-symbol-structure symbol-structure"></span>CreateEmotePackRequest
Used in the `CreateEmotePack` endpoint.

#### Fields


##### <span class="codicon codicon-symbol-field symbol-field"></span>pack_name (optional  `string`)
the name of the pack.

### <span class="codicon codicon-symbol-structure symbol-structure"></span>CreateEmotePackResponse
Used in the `CreateEmotePack` endpoint.

#### Fields


##### <span class="codicon codicon-symbol-field symbol-field"></span>pack_id (optional  `uint64`)
The ID of the pack.

### <span class="codicon codicon-symbol-structure symbol-structure"></span>GetEmotePacksRequest
Used in the `GetEmotePacks` endpoint.

This item has no fields.

### <span class="codicon codicon-symbol-structure symbol-structure"></span>GetEmotePacksResponse
Used in the `GetEmotePacks` endpoint.

#### Fields


##### <span class="codicon codicon-symbol-field symbol-field"></span>packs (repeated  [protocol.emote.v1.EmotePack](#emotepack))
The list of emote packs.

### <span class="codicon codicon-symbol-structure symbol-structure"></span>GetEmotePackEmotesRequest
Used in the `GetEmotes` endpoint.

#### Fields


##### <span class="codicon codicon-symbol-field symbol-field"></span>pack_id (optional  `uint64`)
The ID of the pack.

### <span class="codicon codicon-symbol-structure symbol-structure"></span>GetEmotePackEmotesResponse
Used in the `GetEmotes` endpoint.

#### Fields


##### <span class="codicon codicon-symbol-field symbol-field"></span>emotes (repeated  [protocol.emote.v1.Emote](#emote))
The list of emotes in the pack.

### <span class="codicon codicon-symbol-structure symbol-structure"></span>AddEmoteToPackRequest
Used in the `AddEmoteToPack` endpoint.

#### Fields


##### <span class="codicon codicon-symbol-field symbol-field"></span>pack_id (optional  `uint64`)
The ID of the pack.
##### <span class="codicon codicon-symbol-field symbol-field"></span>emote (optional  [protocol.emote.v1.Emote](#emote))
The emote to add.

### <span class="codicon codicon-symbol-structure symbol-structure"></span>AddEmoteToPackResponse
Used in the `AddEmoteToPack` endpoint.

This item has no fields.

### <span class="codicon codicon-symbol-structure symbol-structure"></span>DeleteEmoteFromPackRequest
Used in the `DeleteEmoteFromPack` endpoint.

#### Fields


##### <span class="codicon codicon-symbol-field symbol-field"></span>pack_id (optional  `uint64`)
The ID of the pack.
##### <span class="codicon codicon-symbol-field symbol-field"></span>name (optional  `string`)
The name of the emote to delete.

### <span class="codicon codicon-symbol-structure symbol-structure"></span>DeleteEmoteFromPackResponse
Used in the `DeleteEmoteFromPack` endpoint.

This item has no fields.

### <span class="codicon codicon-symbol-structure symbol-structure"></span>DeleteEmotePackRequest
Used in the `DeleteEmotePack` endpoint.

#### Fields


##### <span class="codicon codicon-symbol-field symbol-field"></span>pack_id (optional  `uint64`)
The ID of the pack.

### <span class="codicon codicon-symbol-structure symbol-structure"></span>DeleteEmotePackResponse
Used in the `DeleteEmotePack` endpoint.

This item has no fields.

### <span class="codicon codicon-symbol-structure symbol-structure"></span>DequipEmotePackRequest
Used in the `DequipEmotePack` endpoint.

#### Fields


##### <span class="codicon codicon-symbol-field symbol-field"></span>pack_id (optional  `uint64`)
The ID of the pack.

### <span class="codicon codicon-symbol-structure symbol-structure"></span>DequipEmotePackResponse
Used in the `DequipEmotePack` endpoint.

This item has no fields.

### <span class="codicon codicon-symbol-structure symbol-structure"></span>EquipEmotePackRequest
Used in the `EquipEmotePack` endpoint.

#### Fields


##### <span class="codicon codicon-symbol-field symbol-field"></span>pack_id (optional  `uint64`)
The ID of the pack.

### <span class="codicon codicon-symbol-structure symbol-structure"></span>EquipEmotePackResponse
Used in the `EquipEmotePack` endpoint.

This item has no fields.

### <span class="codicon codicon-symbol-structure symbol-structure"></span>EmotePackUpdated
Event sent when an emote pack's information is changed.

Should only be sent to users who have the pack equipped.

#### Fields


##### <span class="codicon codicon-symbol-field symbol-field"></span>pack_id (optional  `uint64`)
ID of the pack that was updated.
##### <span class="codicon codicon-symbol-field symbol-field"></span>new_pack_name (optional  `string`)
New pack name of the pack.

### <span class="codicon codicon-symbol-structure symbol-structure"></span>EmotePackDeleted
Event sent when an emote pack is deleted.

Should only be sent to users who have the pack equipped.
Should also be sent if a user dequips an emote pack, only to the user that dequipped it.

#### Fields


##### <span class="codicon codicon-symbol-field symbol-field"></span>pack_id (optional  `uint64`)
ID of the pack that was deleted.

### <span class="codicon codicon-symbol-structure symbol-structure"></span>EmotePackAdded
Event sent when an emote pack is added.

Should only be sent to the user who equipped the pack.

#### Fields


##### <span class="codicon codicon-symbol-field symbol-field"></span>pack (optional  [protocol.emote.v1.EmotePack](#emotepack))
Emote pack that was equipped by the user.

### <span class="codicon codicon-symbol-structure symbol-structure"></span>EmotePackEmotesUpdated
Event sent when an emote pack's emotes were changed.

Should only be sent to users who have the pack equipped.

#### Fields


##### <span class="codicon codicon-symbol-field symbol-field"></span>pack_id (optional  `uint64`)
ID of the pack to update the emotes of.
##### <span class="codicon codicon-symbol-field symbol-field"></span>added_emotes (repeated  [protocol.emote.v1.Emote](#emote))
The added emotes.
##### <span class="codicon codicon-symbol-field symbol-field"></span>deleted_emotes (repeated  `string`)
The names of the deleted emotes.

### <span class="codicon codicon-symbol-structure symbol-structure"></span>StreamEvent
Describes an emote service event.

#### Fields


##### <span class="codicon codicon-symbol-field symbol-field"></span>emote_pack_added (optional  [protocol.emote.v1.EmotePackAdded](#emotepackadded))
Send the emote pack added event.
##### <span class="codicon codicon-symbol-field symbol-field"></span>emote_pack_updated (optional  [protocol.emote.v1.EmotePackUpdated](#emotepackupdated))
Send the emote pack updated event.
##### <span class="codicon codicon-symbol-field symbol-field"></span>emote_pack_deleted (optional  [protocol.emote.v1.EmotePackDeleted](#emotepackdeleted))
Send the emote pack deleted event.
##### <span class="codicon codicon-symbol-field symbol-field"></span>emote_pack_emotes_updated (optional  [protocol.emote.v1.EmotePackEmotesUpdated](#emotepackemotesupdated))
Send the emote pack emotes updated event.

## Services 

### <span class="codicon codicon-symbol-class symbol-class"></span>EmoteService

Harmony's Emote service manages the emotes and emote packs.
#### Methods

##### <span class="codicon codicon-symbol-method symbol-method"></span>CreateEmotePack
[protocol.emote.v1.CreateEmotePackRequest](#createemotepackrequest) -> [protocol.emote.v1.CreateEmotePackResponse](#createemotepackresponse)

Endpoint to create an emote pack.
##### <span class="codicon codicon-symbol-method symbol-method"></span>GetEmotePacks
[protocol.emote.v1.GetEmotePacksRequest](#getemotepacksrequest) -> [protocol.emote.v1.GetEmotePacksResponse](#getemotepacksresponse)

Endpoint to get the emote packs you have equipped.
##### <span class="codicon codicon-symbol-method symbol-method"></span>GetEmotePackEmotes
[protocol.emote.v1.GetEmotePackEmotesRequest](#getemotepackemotesrequest) -> [protocol.emote.v1.GetEmotePackEmotesResponse](#getemotepackemotesresponse)

Endpoint to get the emotes in an emote pack.
##### <span class="codicon codicon-symbol-method symbol-method"></span>AddEmoteToPack
[protocol.emote.v1.AddEmoteToPackRequest](#addemotetopackrequest) -> [protocol.emote.v1.AddEmoteToPackResponse](#addemotetopackresponse)

Endpoint to add an emote to an emote pack that you own.
##### <span class="codicon codicon-symbol-method symbol-method"></span>DeleteEmotePack
[protocol.emote.v1.DeleteEmotePackRequest](#deleteemotepackrequest) -> [protocol.emote.v1.DeleteEmotePackResponse](#deleteemotepackresponse)

Endpoint to delete an emote pack that you own.
##### <span class="codicon codicon-symbol-method symbol-method"></span>DeleteEmoteFromPack
[protocol.emote.v1.DeleteEmoteFromPackRequest](#deleteemotefrompackrequest) -> [protocol.emote.v1.DeleteEmoteFromPackResponse](#deleteemotefrompackresponse)

Endpoint to delete an emote from an emote pack.
##### <span class="codicon codicon-symbol-method symbol-method"></span>DequipEmotePack
[protocol.emote.v1.DequipEmotePackRequest](#dequipemotepackrequest) -> [protocol.emote.v1.DequipEmotePackResponse](#dequipemotepackresponse)

Endpoint to dequip an emote pack that you have equipped.
##### <span class="codicon codicon-symbol-method symbol-method"></span>EquipEmotePack
[protocol.emote.v1.EquipEmotePackRequest](#equipemotepackrequest) -> [protocol.emote.v1.EquipEmotePackResponse](#equipemotepackresponse)

Endpoint to equip an emote pack.
