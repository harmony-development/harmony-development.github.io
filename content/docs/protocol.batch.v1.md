---
title: "Reference: protocol.batch.v1"
---
## Message Types 

### AnyRequest

Fields

| Name | Type |
| ---- | ---- |
| endpoint | `string` |
| request | `bytes` |

### BatchRequest

Fields

| Name | Type |
| ---- | ---- |
| requests | [protocol.batch.v1.AnyRequest](#anyrequest) |

### BatchResponse

Fields

| Name | Type |
| ---- | ---- |
| responses | `bytes` |

### BatchSameRequest

Fields

| Name | Type |
| ---- | ---- |
| endpoint | `string` |
| requests | `bytes` |

### BatchSameResponse

Fields

| Name | Type |
| ---- | ---- |
| responses | `bytes` |

## Services 

### BatchService

#### Unary Methods

| Name | Request | Response |
| ---- | ------- | -------- |
|Batch|[protocol.batch.v1.BatchRequest](#batchrequest)|[protocol.batch.v1.BatchResponse](#batchresponse)|
|BatchSame|[protocol.batch.v1.BatchSameRequest](#batchsamerequest)|[protocol.batch.v1.BatchSameResponse](#batchsameresponse)|

#### Streaming Methods

| Name | Client Streams | Server Streams |
| ---- | -------------- | -------------- |
