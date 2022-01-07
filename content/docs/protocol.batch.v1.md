---
title: "Reference: protocol.batch.v1"
---
## Message Types 

### <span class="codicon codicon-symbol-structure symbol-structure"></span>AnyRequest
AnyRequest is a generic message supporting any unary request.

#### Fields


##### <span class="codicon codicon-symbol-field symbol-field"></span>endpoint (optional  `string`)
The endpoint to which the request is being sent.
##### <span class="codicon codicon-symbol-field symbol-field"></span>request (optional  `bytes`)
The request data.

### <span class="codicon codicon-symbol-structure symbol-structure"></span>BatchRequest
Used in `Batch` endpoint.

#### Fields


##### <span class="codicon codicon-symbol-field symbol-field"></span>requests (repeated  [protocol.batch.v1.AnyRequest](#anyrequest))
The list of requests to be executed in the batch.

### <span class="codicon codicon-symbol-structure symbol-structure"></span>BatchResponse
Used in `Batch` endpoint.

#### Fields


##### <span class="codicon codicon-symbol-field symbol-field"></span>responses (repeated  `bytes`)
The list of responses to the requests.

### <span class="codicon codicon-symbol-structure symbol-structure"></span>BatchSameRequest
Used in `BatchSame` endpoint.

#### Fields


##### <span class="codicon codicon-symbol-field symbol-field"></span>endpoint (optional  `string`)
The endpoint to call for all requests.
##### <span class="codicon codicon-symbol-field symbol-field"></span>requests (repeated  `bytes`)
The list of requests to be executed in the batch.

### <span class="codicon codicon-symbol-structure symbol-structure"></span>BatchSameResponse
Used in `BatchSame` endpoint.

#### Fields


##### <span class="codicon codicon-symbol-field symbol-field"></span>responses (repeated  `bytes`)
The list of responses to the requests.

## Services 

### <span class="codicon codicon-symbol-class symbol-class"></span>BatchService

Service to batch requests.
#### Methods

##### <span class="codicon codicon-symbol-method symbol-method"></span>Batch
[protocol.batch.v1.BatchRequest](#batchrequest) -> [protocol.batch.v1.BatchResponse](#batchresponse)

Batch requests.
Does not support batching stream requests.
Batched requests should be verified and an error should be thrown if they
are invalid.
##### <span class="codicon codicon-symbol-method symbol-method"></span>BatchSame
[protocol.batch.v1.BatchSameRequest](#batchsamerequest) -> [protocol.batch.v1.BatchSameResponse](#batchsameresponse)

BatchSame allows batching for requests using the same endpoint.
This allows for additional network optimizations since the endpoint doesn't
have to be sent for every request.
