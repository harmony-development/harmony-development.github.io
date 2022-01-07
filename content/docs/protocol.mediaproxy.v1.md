---
title: "Reference: protocol.mediaproxy.v1"
---
## Message Types 

### <span class="codicon codicon-symbol-structure symbol-structure"></span>SiteMetadata
Object representing the metadata of a website.

#### Fields


##### <span class="codicon codicon-symbol-field symbol-field"></span>site_title (optional  `string`)
Title of the website.
##### <span class="codicon codicon-symbol-field symbol-field"></span>page_title (optional  `string`)
Page title of the website page.
##### <span class="codicon codicon-symbol-field symbol-field"></span>kind (optional  `string`)
Kind of the website.
##### <span class="codicon codicon-symbol-field symbol-field"></span>description (optional  `string`)
Description of the website page.
##### <span class="codicon codicon-symbol-field symbol-field"></span>url (optional  `string`)
URL of the website.
##### <span class="codicon codicon-symbol-field symbol-field"></span>image (optional  `string`)
A thumbnail image of the website.

### <span class="codicon codicon-symbol-structure symbol-structure"></span>MediaMetadata
Object represeting the metadata of a media.

#### Fields


##### <span class="codicon codicon-symbol-field symbol-field"></span>mimetype (optional  `string`)
Mimetype of the media.
##### <span class="codicon codicon-symbol-field symbol-field"></span>filename (optional  `string`)
Filename of the media.

### <span class="codicon codicon-symbol-structure symbol-structure"></span>FetchLinkMetadataRequest
Used in the `FetchLinkMetadata` endpoint.

#### Fields


##### <span class="codicon codicon-symbol-field symbol-field"></span>url (optional  `string`)
URL to fetch metadata from.

### <span class="codicon codicon-symbol-structure symbol-structure"></span>FetchLinkMetadataResponse
Used in the `FetchLinkMetadata` endpoint.

#### Fields


##### <span class="codicon codicon-symbol-field symbol-field"></span>is_site (optional  [protocol.mediaproxy.v1.SiteMetadata](#sitemetadata))
Site metadata for the URL.
##### <span class="codicon codicon-symbol-field symbol-field"></span>is_media (optional  [protocol.mediaproxy.v1.MediaMetadata](#mediametadata))
Media metadata for the URL.

### <span class="codicon codicon-symbol-structure symbol-structure"></span>InstantViewRequest
Used in the `InstantView` endpoint.

#### Fields


##### <span class="codicon codicon-symbol-field symbol-field"></span>url (optional  `string`)
URL to get instant view for.

### <span class="codicon codicon-symbol-structure symbol-structure"></span>InstantViewResponse
Used in the `InstantView` endpoint.

#### Fields


##### <span class="codicon codicon-symbol-field symbol-field"></span>metadata (optional  [protocol.mediaproxy.v1.SiteMetadata](#sitemetadata))
Site metadata for the URL.
##### <span class="codicon codicon-symbol-field symbol-field"></span>content (optional  `string`)
Instant view content.
##### <span class="codicon codicon-symbol-field symbol-field"></span>is_valid (optional  `bool`)
Whether the instant view is valid.

### <span class="codicon codicon-symbol-structure symbol-structure"></span>CanInstantViewRequest
Used in the `CanInstantView` endpoint.

#### Fields


##### <span class="codicon codicon-symbol-field symbol-field"></span>url (optional  `string`)
URL to query if server can instant view the website.

### <span class="codicon codicon-symbol-structure symbol-structure"></span>CanInstantViewResponse
Used in the `CanInstantView` endpoint.

#### Fields


##### <span class="codicon codicon-symbol-field symbol-field"></span>can_instant_view (optional  `bool`)
Whether the server generate an instant view for the URL queried.

## Services 

### <span class="codicon codicon-symbol-class symbol-class"></span>MediaProxyService

Harmony service for fetching metadata and generating instant view for URLs.
#### Methods

##### <span class="codicon codicon-symbol-method symbol-method"></span>FetchLinkMetadata
[protocol.mediaproxy.v1.FetchLinkMetadataRequest](#fetchlinkmetadatarequest) -> [protocol.mediaproxy.v1.FetchLinkMetadataResponse](#fetchlinkmetadataresponse)

Endpoint to fetch metadata for a URL.
##### <span class="codicon codicon-symbol-method symbol-method"></span>InstantView
[protocol.mediaproxy.v1.InstantViewRequest](#instantviewrequest) -> [protocol.mediaproxy.v1.InstantViewResponse](#instantviewresponse)

Endpoint to instant view a website URL.
##### <span class="codicon codicon-symbol-method symbol-method"></span>CanInstantView
[protocol.mediaproxy.v1.CanInstantViewRequest](#caninstantviewrequest) -> [protocol.mediaproxy.v1.CanInstantViewResponse](#caninstantviewresponse)

Endpoint to query if the server can generate an instant view for a website URL.
