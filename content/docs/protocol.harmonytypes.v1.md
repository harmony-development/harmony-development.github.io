---
title: "Reference: protocol.harmonytypes.v1"
---
# Message Types 

## HarmonyMethodMetadata

Fields

| Name | Type |
| ---- | ---- |
| requires_authentication | `bool` |
| requires_local | `bool` |
| requires_permission_node | `string` |

## Override

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

## Action

Fields

| Name | Type |
| ---- | ---- |
| text | `string` |
| url | `string` |
| id | `string` |
| UNHANDLED | TYPE |
| UNHANDLED | TYPE |
| children | [protocol.harmonytypes.v1.Action](#action) |

## EmbedHeading

Fields

| Name | Type |
| ---- | ---- |
| text | `string` |
| subtext | `string` |
| url | `string` |
| icon | `string` |

## EmbedField

Fields

| Name | Type |
| ---- | ---- |
| title | `string` |
| subtitle | `string` |
| body | `string` |
| image_url | `string` |
| UNHANDLED | TYPE |
| actions | [protocol.harmonytypes.v1.Action](#action) |

## Embed

Fields

| Name | Type |
| ---- | ---- |
| title | `string` |
| body | `string` |
| color | `int64` |
| header | [protocol.harmonytypes.v1.EmbedHeading](#embedheading) |
| footer | [protocol.harmonytypes.v1.EmbedHeading](#embedheading) |
| fields | [protocol.harmonytypes.v1.EmbedField](#embedfield) |
| actions | [protocol.harmonytypes.v1.Action](#action) |

## Attachment

Fields

| Name | Type |
| ---- | ---- |
| id | `string` |
| name | `string` |
| type | `string` |
| size | `int32` |

## Metadata

Fields

| Name | Type |
| ---- | ---- |
| kind | `string` |
| extension | [protocol.harmonytypes.v1.Metadata.ExtensionEntry](#metadata-extensionentry) |

## Message

Fields

| Name | Type |
| ---- | ---- |
| metadata | [protocol.harmonytypes.v1.Metadata](#metadata) |
| guild_id | `uint64` |
| channel_id | `uint64` |
| message_id | `uint64` |
| author_id | `uint64` |
| created_at | [google.protobuf.Timestamp]({{< ref "google.protobuf.md" >}}#timestamp) |
| edited_at | [google.protobuf.Timestamp]({{< ref "google.protobuf.md" >}}#timestamp) |
| content | `string` |
| embeds | [protocol.harmonytypes.v1.Embed](#embed) |
| actions | [protocol.harmonytypes.v1.Action](#action) |
| attachments | [protocol.harmonytypes.v1.Attachment](#attachment) |
| in_reply_to | `uint64` |
| overrides | [protocol.harmonytypes.v1.Override](#override) |

## Metadata.ExtensionEntry

Fields

| Name | Type |
| ---- | ---- |
| key | `string` |
| value | [google.protobuf.Any]({{< ref "google.protobuf.md" >}}#any) |

# Services 

