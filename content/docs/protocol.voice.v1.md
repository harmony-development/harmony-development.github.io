---
title: "Reference: protocol.voice.v1"
---
## Message Types 

### ClientSignal

Fields

| Name | Type |
| ---- | ---- |
| answer | [protocol.voice.v1.ClientSignal.Answer](#clientsignal-answer) |
| candidate | [protocol.voice.v1.ClientSignal.Candidate](#clientsignal-candidate) |

### Signal

Fields

| Name | Type |
| ---- | ---- |
| candidate | [protocol.voice.v1.Signal.ICECandidate](#signal-icecandidate) |
| offer | [protocol.voice.v1.Signal.Offer](#signal-offer) |

### ClientSignal.Answer

Fields

| Name | Type |
| ---- | ---- |
| answer | `string` |

### ClientSignal.Candidate

Fields

| Name | Type |
| ---- | ---- |
| candidate | `string` |

### Signal.ICECandidate

Fields

| Name | Type |
| ---- | ---- |
| candidate | `string` |

### Signal.Offer

Fields

| Name | Type |
| ---- | ---- |
| offer | `string` |

## Services 

### VoiceService

#### Unary Methods

| Name | Request | Response |
| ---- | ------- | -------- |

#### Streaming Methods

| Name | Client Streams | Server Streams |
| ---- | -------------- | -------------- |
|Connect|[protocol.voice.v1.ClientSignal](#clientsignal)|[protocol.voice.v1.Signal](#signal)|
