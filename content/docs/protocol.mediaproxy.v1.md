---
title: "Reference: protocol.mediaproxy.v1"
---
# Message Types 

## SiteMetadata

Fields

| Name | Type |
| ---- | ---- |
| site_title | `string` |
| page_title | `string` |
| kind | `string` |
| description | `string` |
| url | `string` |
| image | `string` |

## FetchLinkMetadataRequest

Fields

| Name | Type |
| ---- | ---- |
| url | `string` |

## InstantViewRequest

Fields

| Name | Type |
| ---- | ---- |
| url | `string` |

## InstantViewResponse

Fields

| Name | Type |
| ---- | ---- |
| metadata | [protocol.mediaproxy.v1.SiteMetadata](#sitemetadata) |
| content | `string` |
| is_valid | `bool` |

## CanInstantViewResponse

Fields

| Name | Type |
| ---- | ---- |
| can_instant_view | `bool` |

# Services 

## MediaProxyService

### Unary Methods

| Name | Request | Response |
| ---- | ------- | -------- |
|FetchLinkMetadata|[protocol.mediaproxy.v1.FetchLinkMetadataRequest](#fetchlinkmetadatarequest)|[protocol.mediaproxy.v1.SiteMetadata](#sitemetadata)|
|InstantView|[protocol.mediaproxy.v1.InstantViewRequest](#instantviewrequest)|[protocol.mediaproxy.v1.InstantViewResponse](#instantviewresponse)|
|CanInstantView|[protocol.mediaproxy.v1.InstantViewRequest](#instantviewrequest)|[protocol.mediaproxy.v1.CanInstantViewResponse](#caninstantviewresponse)|

### Streaming Methods

| Name | Client Streams | Server Streams |
| ---- | -------------- | -------------- |
