---
title: "Reference: protocol.batch.v1"
---
## Message Types 

### AnyRequest
AnyRequest is a generic message supporting any unary request.

#### Fields


##### endpoint (optional  `string`)
The endpoint to which the request is being sent.
##### request (optional  `bytes`)
The request data.

### BatchRequest
Used in `Batch` endpoint.

#### Fields


##### requests (repeated  [protocol.batch.v1.AnyRequest](#anyrequest))
The list of requests to be executed in the batch.

### BatchResponse
Used in `Batch` endpoint.

#### Fields


##### responses (repeated  `bytes`)
The list of responses to the requests.

### BatchSameRequest
Used in `BatchSame` endpoint.

#### Fields


##### endpoint (optional  `string`)
The endpoint to call for all requests.
##### requests (repeated  `bytes`)
The list of requests to be executed in the batch.

### BatchSameResponse
Used in `BatchSame` endpoint.

#### Fields


##### responses (repeated  `bytes`)
The list of responses to the requests.

## Services 

### BatchService

Service to batch requests.
#### Methods

##### Batch
[protocol.batch.v1.BatchRequest](#batchrequest) -> [protocol.batch.v1.BatchResponse](#batchresponse)

Batch requests.
Does not support batching stream requests.
Batched requests should be verified and an error should be thrown if they
are invalid.
##### BatchSame
[protocol.batch.v1.BatchSameRequest](#batchsamerequest) -> [protocol.batch.v1.BatchSameResponse](#batchsameresponse)

BatchSame allows batching for requests using the same endpoint.
This allows for additional network optimizations since the endpoint doesn't
have to be sent for every request.
