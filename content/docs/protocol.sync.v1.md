---
title: "Reference: protocol.sync.v1"
---
## Message Types 

### AuthData

Fields

| Name | Type |
| ---- | ---- |
| host | `string` |
| time | `uint64` |

### EventQueue

Fields

| Name | Type |
| ---- | ---- |
| events | [protocol.sync.v1.Event](#event) |

### Event

Fields

| Name | Type |
| ---- | ---- |
| user_removed_from_guild | [protocol.sync.v1.Event.UserRemovedFromGuild](#event-userremovedfromguild) |
| user_added_to_guild | [protocol.sync.v1.Event.UserAddedToGuild](#event-useraddedtoguild) |

### Event.UserRemovedFromGuild

Fields

| Name | Type |
| ---- | ---- |
| user_id | `uint64` |
| guild_id | `uint64` |

### Event.UserAddedToGuild

Fields

| Name | Type |
| ---- | ---- |
| user_id | `uint64` |
| guild_id | `uint64` |

## Services 

### PostboxService

#### Unary Methods

| Name | Request | Response |
| ---- | ------- | -------- |
|Pull|[google.protobuf.Empty]({{< ref "google.protobuf.md" >}}#empty)|[protocol.sync.v1.EventQueue](#eventqueue)|
|Push|[protocol.sync.v1.Event](#event)|[google.protobuf.Empty]({{< ref "google.protobuf.md" >}}#empty)|

#### Streaming Methods

| Name | Client Streams | Server Streams |
| ---- | -------------- | -------------- |
