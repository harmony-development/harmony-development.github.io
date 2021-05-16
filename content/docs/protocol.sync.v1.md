---
title: "Reference: protocol.sync.v1"
---
## Message Types 

### SyncRequest

Fields

| Name | Type |
| ---- | ---- |
| token | `string` |
| host | `string` |

### PostBoxEvent

Fields

| Name | Type |
| ---- | ---- |
| event | [google.protobuf.Any]({{< ref "google.protobuf.md" >}}#any) |

### PostEventRequest

Fields

| Name | Type |
| ---- | ---- |
| sync_request | [protocol.sync.v1.SyncRequest](#syncrequest) |
| event | [protocol.sync.v1.PostBoxEvent](#postboxevent) |

## Services 

### PostboxService

#### Unary Methods

| Name | Request | Response |
| ---- | ------- | -------- |
|PostEvent|[protocol.sync.v1.PostEventRequest](#posteventrequest)|[google.protobuf.Empty]({{< ref "google.protobuf.md" >}}#empty)|

#### Streaming Methods

| Name | Client Streams | Server Streams |
| ---- | -------------- | -------------- |
