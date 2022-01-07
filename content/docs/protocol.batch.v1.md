---
title: "Reference: protocol.batch.v1"
---
# Standalone Message Types 

# Services 

## <span class="codicon codicon-symbol-class symbol-class"></span>BatchService

Service to batch requests.
### Methods

#### <span class="codicon codicon-symbol-method symbol-method"></span>Batch
[protocol.batch.v1.BatchRequest](#batchrequest) -> [protocol.batch.v1.BatchResponse](#batchresponse)

Batch requests.
Does not support batching stream requests.
Batched requests should be verified and an error should be thrown if they
are invalid.

<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>BatchRequest
Used in `Batch` endpoint.

<span class="h5" aria-level="5">Fields</span>
###### <span class="codicon codicon-symbol-field symbol-field"></span>requests
Type: repeated [protocol.batch.v1.AnyRequest](#anyrequest)

The list of requests to be executed in the batch.


<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>BatchResponse
Used in `Batch` endpoint.

<span class="h5" aria-level="5">Fields</span>
###### <span class="codicon codicon-symbol-field symbol-field"></span>responses
Type: repeated `bytes`

The list of responses to the requests.

------
#### <span class="codicon codicon-symbol-method symbol-method"></span>BatchSame
[protocol.batch.v1.BatchSameRequest](#batchsamerequest) -> [protocol.batch.v1.BatchSameResponse](#batchsameresponse)

BatchSame allows batching for requests using the same endpoint.
This allows for additional network optimizations since the endpoint doesn't
have to be sent for every request.

<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>BatchSameRequest
Used in `BatchSame` endpoint.

<span class="h5" aria-level="5">Fields</span>
###### <span class="codicon codicon-symbol-field symbol-field"></span>endpoint
Type: optional `string`

The endpoint to call for all requests.
###### <span class="codicon codicon-symbol-field symbol-field"></span>requests
Type: repeated `bytes`

The list of requests to be executed in the batch.


<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>BatchSameResponse
Used in `BatchSame` endpoint.

<span class="h5" aria-level="5">Fields</span>
###### <span class="codicon codicon-symbol-field symbol-field"></span>responses
Type: repeated `bytes`

The list of responses to the requests.

