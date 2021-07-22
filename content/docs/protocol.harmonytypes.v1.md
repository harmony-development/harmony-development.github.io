---
title: "Reference: protocol.harmonytypes.v1"
---
## Message Types 

### HarmonyMethodMetadata

Fields

| Name | Type |
| ---- | ---- |
| requires_authentication | `bool` |
| requires_local | `bool` |
| requires_permission_node | `string` |

### Override

Fields

| Name | Type |
| ---- | ---- |
| name | `string` |
| avatar | `string` |
| user_defined | `string` |
| webhook | [google.protobuf.Empty]({{< ref "google.protobuf.md" >}}#empty) |
| system_plurality | [google.protobuf.Empty]({{< ref "google.protobuf.md" >}}#empty) |
| system_message | [google.protobuf.Empty]({{< ref "google.protobuf.md" >}}#empty) |
| bridge | [google.protobuf.Empty]({{< ref "google.protobuf.md" >}}#empty) |

### Action

Fields

| Name | Type |
| ---- | ---- |
| UNHANDLED | TYPE |
| id | `string` |
| button | [protocol.harmonytypes.v1.Action.Button](#action-button) |
| dropdown | [protocol.harmonytypes.v1.Action.Dropdown](#action-dropdown) |
| input | [protocol.harmonytypes.v1.Action.Input](#action-input) |

### EmbedHeading

Fields

| Name | Type |
| ---- | ---- |
| text | `string` |
| subtext | `string` |
| url | `string` |
| icon | `string` |

### EmbedField

Fields

| Name | Type |
| ---- | ---- |
| title | `string` |
| subtitle | `string` |
| body | `string` |
| image_url | `string` |
| UNHANDLED | TYPE |
| actions | [protocol.harmonytypes.v1.Action](#action) |

### Embed

Fields

| Name | Type |
| ---- | ---- |
| title | `string` |
| body | `string` |
| color | `int64` |
| header | [protocol.harmonytypes.v1.EmbedHeading](#embedheading) |
| footer | [protocol.harmonytypes.v1.EmbedHeading](#embedheading) |
| fields | [protocol.harmonytypes.v1.EmbedField](#embedfield) |

### Attachment

Fields

| Name | Type |
| ---- | ---- |
| id | `string` |
| name | `string` |
| type | `string` |
| size | `int32` |
| caption | `string` |

### Metadata

Fields

| Name | Type |
| ---- | ---- |
| kind | `string` |
| extension | [protocol.harmonytypes.v1.Metadata.ExtensionEntry](#metadata-extensionentry) |

### ContentText

Fields

| Name | Type |
| ---- | ---- |
| content | `string` |

### ContentEmbed

Fields

| Name | Type |
| ---- | ---- |
| embeds | [protocol.harmonytypes.v1.Embed](#embed) |

### ContentFiles

Fields

| Name | Type |
| ---- | ---- |
| attachments | [protocol.harmonytypes.v1.Attachment](#attachment) |

### Content

Fields

| Name | Type |
| ---- | ---- |
| text_message | [protocol.harmonytypes.v1.ContentText](#contenttext) |
| embed_message | [protocol.harmonytypes.v1.ContentEmbed](#contentembed) |
| files_message | [protocol.harmonytypes.v1.ContentFiles](#contentfiles) |

### Message

Fields

| Name | Type |
| ---- | ---- |
| metadata | [protocol.harmonytypes.v1.Metadata](#metadata) |
| overrides | [protocol.harmonytypes.v1.Override](#override) |
| guild_id | `uint64` |
| channel_id | `uint64` |
| message_id | `uint64` |
| author_id | `uint64` |
| created_at | [google.protobuf.Timestamp]({{< ref "google.protobuf.md" >}}#timestamp) |
| edited_at | [google.protobuf.Timestamp]({{< ref "google.protobuf.md" >}}#timestamp) |
| in_reply_to | `uint64` |
| content | [protocol.harmonytypes.v1.Content](#content) |

### Error

Fields

| Name | Type |
| ---- | ---- |
| identifier | `string` |
| human_message | `string` |
| more_details | `bytes` |

### Token

Fields

| Name | Type |
| ---- | ---- |
| sig | `bytes` |
| data | `bytes` |

### Action.Button

Fields

| Name | Type |
| ---- | ---- |
| text | `string` |
| url | `string` |

### Action.Dropdown

Fields

| Name | Type |
| ---- | ---- |
| text | `string` |
| options | `string` |

### Action.Input

Fields

| Name | Type |
| ---- | ---- |
| label | `string` |
| wide | `bool` |

### Metadata.ExtensionEntry

Fields

| Name | Type |
| ---- | ---- |
| key | `string` |
| value | [google.protobuf.Any]({{< ref "google.protobuf.md" >}}#any) |

## Services 

