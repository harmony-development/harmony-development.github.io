---
title: "Reference: protocol.voice.v1"
---
## Message Types 

### Signal

Fields

| Name | Type |
| ---- | ---- |
| ice_candidate | `string` |
| renegotiation_needed | [protocol.harmonytypes.v1.Empty]({{< ref "protocol.harmonytypes.v1.md" >}}#empty) |

### ConnectRequest

Fields

| Name | Type |
| ---- | ---- |
| guild_id | `uint64` |
| channel_id | `uint64` |
| offer | `string` |

### ConnectResponse

Fields

| Name | Type |
| ---- | ---- |
| answer | `string` |

### StreamStateRequest

Fields

| Name | Type |
| ---- | ---- |
| guild_id | `uint64` |
| channel_id | `uint64` |

### StreamStateResponse

Fields

| Name | Type |
| ---- | ---- |
| signal | [protocol.voice.v1.Signal](#signal) |

## Services 

### VoiceService

#### Unary Methods

| Name | Request | Response |
| ---- | ------- | -------- |
|Connect|[protocol.voice.v1.ConnectRequest](#connectrequest)|[protocol.voice.v1.ConnectResponse](#connectresponse)|

#### Streaming Methods

| Name | Client Streams | Server Streams |
| ---- | -------------- | -------------- |
