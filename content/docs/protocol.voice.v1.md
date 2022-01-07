---
title: "Reference: protocol.voice.v1"
---
## Message Types 

### UserConsumerOptions

Fields

| Name | Type |
| ---- | ---- |
| user_id | `uint64` |
| producer_id | `string` |
| consumer_id | `string` |
| rtp_parameters | `string` |

### TransportOptions

Fields

| Name | Type |
| ---- | ---- |
| id | `string` |
| dtls_parameters | `string` |
| ice_candidates | `string` |
| ice_parameters | `string` |

### StreamMessageRequest

Fields

| Name | Type |
| ---- | ---- |
| initialize | [protocol.voice.v1.StreamMessageRequest.Initialize](#streammessagerequest-initialize) |
| prepare_for_join_channel | [protocol.voice.v1.StreamMessageRequest.PrepareForJoinChannel](#streammessagerequest-prepareforjoinchannel) |
| join_channel | [protocol.voice.v1.StreamMessageRequest.JoinChannel](#streammessagerequest-joinchannel) |
| resume_consumer | [protocol.voice.v1.StreamMessageRequest.ResumeConsumer](#streammessagerequest-resumeconsumer) |

### StreamMessageResponse

Fields

| Name | Type |
| ---- | ---- |
| initialized | [protocol.voice.v1.StreamMessageResponse.Initialized](#streammessageresponse-initialized) |
| prepared_for_join_channel | [protocol.voice.v1.StreamMessageResponse.PreparedForJoinChannel](#streammessageresponse-preparedforjoinchannel) |
| joined_channel | [protocol.voice.v1.StreamMessageResponse.JoinedChannel](#streammessageresponse-joinedchannel) |
| user_joined | [protocol.voice.v1.StreamMessageResponse.UserJoined](#streammessageresponse-userjoined) |
| user_left | [protocol.voice.v1.StreamMessageResponse.UserLeft](#streammessageresponse-userleft) |

### StreamMessageRequest.Initialize

Fields

| Name | Type |
| ---- | ---- |
| guild_id | `uint64` |
| channel_id | `uint64` |

### StreamMessageRequest.PrepareForJoinChannel

Fields

| Name | Type |
| ---- | ---- |
| rtp_capabilities | `string` |

### StreamMessageRequest.JoinChannel

Fields

| Name | Type |
| ---- | ---- |
| rtp_paramaters | `string` |
| producer_dtls_paramaters | `string` |
| consumer_dtls_paramaters | `string` |

### StreamMessageRequest.ResumeConsumer

Fields

| Name | Type |
| ---- | ---- |
| consumer_id | `string` |

### StreamMessageResponse.Initialized

Fields

| Name | Type |
| ---- | ---- |
| rtp_capabilities | `string` |

### StreamMessageResponse.PreparedForJoinChannel

Fields

| Name | Type |
| ---- | ---- |
| consumer_transport_options | [protocol.voice.v1.TransportOptions](#transportoptions) |
| producer_transport_options | [protocol.voice.v1.TransportOptions](#transportoptions) |

### StreamMessageResponse.JoinedChannel

Fields

| Name | Type |
| ---- | ---- |
| other_users | [protocol.voice.v1.UserConsumerOptions](#userconsumeroptions) |

### StreamMessageResponse.UserJoined

Fields

| Name | Type |
| ---- | ---- |
| data | [protocol.voice.v1.UserConsumerOptions](#userconsumeroptions) |

### StreamMessageResponse.UserLeft

Fields

| Name | Type |
| ---- | ---- |
| user_id | `uint64` |

## Services 

### VoiceService

#### Unary Methods

| Name | Request | Response |
| ---- | ------- | -------- |

#### Streaming Methods

| Name | Client Streams | Server Streams |
| ---- | -------------- | -------------- |
|StreamMessage|[protocol.voice.v1.StreamMessageRequest](#streammessagerequest)|[protocol.voice.v1.StreamMessageResponse](#streammessageresponse)|
