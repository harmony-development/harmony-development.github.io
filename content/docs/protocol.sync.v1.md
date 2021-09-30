---
title: "Reference: protocol.sync.v1"
---
## Message Types 

### AuthData

Fields

| Name | Type |
| ---- | ---- |
| server_id | `string` |
| time | `uint64` |

### Event

Fields

| Name | Type |
| ---- | ---- |
| user_removed_from_guild | [protocol.sync.v1.Event.UserRemovedFromGuild](#event-userremovedfromguild) |
| user_added_to_guild | [protocol.sync.v1.Event.UserAddedToGuild](#event-useraddedtoguild) |

### PullRequest

Fields

| Name | Type |
| ---- | ---- |

### PullResponse

Fields

| Name | Type |
| ---- | ---- |
| event_queue | [protocol.sync.v1.Event](#event) |

### PushRequest

Fields

| Name | Type |
| ---- | ---- |
| event | [protocol.sync.v1.Event](#event) |

### PushResponse

Fields

| Name | Type |
| ---- | ---- |

### NotifyNewIdRequest

Fields

| Name | Type |
| ---- | ---- |
| new_server_id | `string` |

### NotifyNewIdResponse

Fields

| Name | Type |
| ---- | ---- |

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
|Pull|[protocol.sync.v1.PullRequest](#pullrequest)|[protocol.sync.v1.PullResponse](#pullresponse)|
|Push|[protocol.sync.v1.PushRequest](#pushrequest)|[protocol.sync.v1.PushResponse](#pushresponse)|
|NotifyNewId|[protocol.sync.v1.NotifyNewIdRequest](#notifynewidrequest)|[protocol.sync.v1.NotifyNewIdResponse](#notifynewidresponse)|

#### Streaming Methods

| Name | Client Streams | Server Streams |
| ---- | -------------- | -------------- |
