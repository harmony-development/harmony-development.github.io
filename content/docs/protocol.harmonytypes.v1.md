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

### Anything

Fields

| Name | Type |
| ---- | ---- |
| kind | `string` |
| body | `bytes` |

### Metadata

Fields

| Name | Type |
| ---- | ---- |
| kind | `string` |
| extension | [protocol.harmonytypes.v1.Metadata.ExtensionEntry](#metadata-extensionentry) |

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

### Empty

Fields

| Name | Type |
| ---- | ---- |

### ItemPosition

Fields

| Name | Type |
| ---- | ---- |
| item_id | `uint64` |
| UNHANDLED | TYPE |

### Metadata.ExtensionEntry

Fields

| Name | Type |
| ---- | ---- |
| key | `string` |
| value | [protocol.harmonytypes.v1.Anything](#anything) |

## Services 

