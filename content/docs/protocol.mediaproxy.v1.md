---
title: "Reference: protocol.mediaproxy.v1"
---
# Services 

## <span class="codicon codicon-symbol-class symbol-class"></span>MediaProxyService

Harmony service for fetching metadata and generating instant view for URLs.
<span class="h3" aria-level="3">Fields</span>
#### <span class="codicon codicon-symbol-method symbol-method"></span>FetchLinkMetadata
[protocol.mediaproxy.v1.FetchLinkMetadataRequest](#fetchlinkmetadatarequest) -> [protocol.mediaproxy.v1.FetchLinkMetadataResponse](#fetchlinkmetadataresponse)

Endpoint to fetch metadata for a URL.

<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>FetchLinkMetadataRequest
Used in the `FetchLinkMetadata` endpoint.

<span class="h5" aria-level="5">Fields</span>
###### <span class="codicon codicon-symbol-field symbol-field"></span>url
Type: optional `string`

URL to fetch metadata from.


<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>FetchLinkMetadataResponse
Used in the `FetchLinkMetadata` endpoint.

<span class="h5" aria-level="5">Fields</span>
###### <span class="codicon codicon-symbol-field symbol-field"></span>is_site
Type: optional [protocol.mediaproxy.v1.SiteMetadata](#sitemetadata)

Site metadata for the URL.
###### <span class="codicon codicon-symbol-field symbol-field"></span>is_media
Type: optional [protocol.mediaproxy.v1.MediaMetadata](#mediametadata)

Media metadata for the URL.

------
#### <span class="codicon codicon-symbol-method symbol-method"></span>InstantView
[protocol.mediaproxy.v1.InstantViewRequest](#instantviewrequest) -> [protocol.mediaproxy.v1.InstantViewResponse](#instantviewresponse)

Endpoint to instant view a website URL.

<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>InstantViewRequest
Used in the `InstantView` endpoint.

<span class="h5" aria-level="5">Fields</span>
###### <span class="codicon codicon-symbol-field symbol-field"></span>url
Type: optional `string`

URL to get instant view for.


<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>InstantViewResponse
Used in the `InstantView` endpoint.

<span class="h5" aria-level="5">Fields</span>
###### <span class="codicon codicon-symbol-field symbol-field"></span>metadata
Type: optional [protocol.mediaproxy.v1.SiteMetadata](#sitemetadata)

Site metadata for the URL.
###### <span class="codicon codicon-symbol-field symbol-field"></span>content
Type: optional `string`

Instant view content.
###### <span class="codicon codicon-symbol-field symbol-field"></span>is_valid
Type: optional `bool`

Whether the instant view is valid.

------
#### <span class="codicon codicon-symbol-method symbol-method"></span>CanInstantView
[protocol.mediaproxy.v1.CanInstantViewRequest](#caninstantviewrequest) -> [protocol.mediaproxy.v1.CanInstantViewResponse](#caninstantviewresponse)

Endpoint to query if the server can generate an instant view for a website URL.

<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>CanInstantViewRequest
Used in the `CanInstantView` endpoint.

<span class="h5" aria-level="5">Fields</span>
###### <span class="codicon codicon-symbol-field symbol-field"></span>url
Type: optional `string`

URL to query if server can instant view the website.


<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>CanInstantViewResponse
Used in the `CanInstantView` endpoint.

<span class="h5" aria-level="5">Fields</span>
###### <span class="codicon codicon-symbol-field symbol-field"></span>can_instant_view
Type: optional `bool`

Whether the server generate an instant view for the URL queried.

# Standalone Message Types 

## <span class="codicon codicon-symbol-structure symbol-structure"></span>SiteMetadata
Object representing the metadata of a website.

<span class="h3" aria-level="3">Fields</span>
### <span class="codicon codicon-symbol-field symbol-field"></span>site_title
Type: optional `string`

Title of the website.
### <span class="codicon codicon-symbol-field symbol-field"></span>page_title
Type: optional `string`

Page title of the website page.
### <span class="codicon codicon-symbol-field symbol-field"></span>kind
Type: optional `string`

Kind of the website.
### <span class="codicon codicon-symbol-field symbol-field"></span>description
Type: optional `string`

Description of the website page.
### <span class="codicon codicon-symbol-field symbol-field"></span>url
Type: optional `string`

URL of the website.
### <span class="codicon codicon-symbol-field symbol-field"></span>image
Type: optional `string`

A thumbnail image of the website.

------
## <span class="codicon codicon-symbol-structure symbol-structure"></span>MediaMetadata
Object represeting the metadata of a media.

<span class="h3" aria-level="3">Fields</span>
### <span class="codicon codicon-symbol-field symbol-field"></span>mimetype
Type: optional `string`

Mimetype of the media.
### <span class="codicon codicon-symbol-field symbol-field"></span>filename
Type: optional `string`

Filename of the media.
### <span class="codicon codicon-symbol-field symbol-field"></span>size
Type: optional `uint32`

Sıze of the media.

This should (usually) be the size taken from the `Content-Length` header
(for HTTP requests).
If this is not included, then it means the size could not be determined.

------
