---
title: "Reference: protocol.voice.v1"
---
## Message Types 

### Signal

Fields

| Name | Type |
| ---- | ---- |
| ice_candidate | `string` |
| renegotiation_needed | [google.protobuf.Empty]({{< ref "google.protobuf.md" >}}#empty) |

### ConnectRequest

Fields

| Name | Type |
| ---- | ---- |
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
| channel_id | `uint64` |

## Services 

### VoiceService

#### Unary Methods

| Name | Request | Response |
| ---- | ------- | -------- |
|Connect|[protocol.voice.v1.ConnectRequest](#connectrequest)|[protocol.voice.v1.ConnectResponse](#connectresponse)|

#### Streaming Methods

| Name | Client Streams | Server Streams |
| ---- | -------------- | -------------- |
