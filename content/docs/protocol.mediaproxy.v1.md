---
title: "Reference: protocol.mediaproxy.v1"
---
## Message Types 

### SiteMetadata
Object representing the metadata of a website.

#### Fields


##### site_title (optional  `string`)
Title of the website.
##### page_title (optional  `string`)
Page title of the website page.
##### kind (optional  `string`)
Kind of the website.
##### description (optional  `string`)
Description of the website page.
##### url (optional  `string`)
URL of the website.
##### image (optional  `string`)
A thumbnail image of the website.

### MediaMetadata
Object represeting the metadata of a media.

#### Fields


##### mimetype (optional  `string`)
Mimetype of the media.
##### filename (optional  `string`)
Filename of the media.

### FetchLinkMetadataRequest
Used in the `FetchLinkMetadata` endpoint.

#### Fields


##### url (optional  `string`)
URL to fetch metadata from.

### FetchLinkMetadataResponse
Used in the `FetchLinkMetadata` endpoint.

#### Fields


##### is_site (optional  [protocol.mediaproxy.v1.SiteMetadata](#sitemetadata))
Site metadata for the URL.
##### is_media (optional  [protocol.mediaproxy.v1.MediaMetadata](#mediametadata))
Media metadata for the URL.

### InstantViewRequest
Used in the `InstantView` endpoint.

#### Fields


##### url (optional  `string`)
URL to get instant view for.

### InstantViewResponse
Used in the `InstantView` endpoint.

#### Fields


##### metadata (optional  [protocol.mediaproxy.v1.SiteMetadata](#sitemetadata))
Site metadata for the URL.
##### content (optional  `string`)
Instant view content.
##### is_valid (optional  `bool`)
Whether the instant view is valid.

### CanInstantViewRequest
Used in the `CanInstantView` endpoint.

#### Fields


##### url (optional  `string`)
URL to query if server can instant view the website.

### CanInstantViewResponse
Used in the `CanInstantView` endpoint.

#### Fields


##### can_instant_view (optional  `bool`)
Whether the server generate an instant view for the URL queried.

## Services 

### MediaProxyService

Harmony service for fetching metadata and generating instant view for URLs.
#### Methods

##### FetchLinkMetadata
[protocol.mediaproxy.v1.FetchLinkMetadataRequest](#fetchlinkmetadatarequest) -> [protocol.mediaproxy.v1.FetchLinkMetadataResponse](#fetchlinkmetadataresponse)

Endpoint to fetch metadata for a URL.
##### InstantView
[protocol.mediaproxy.v1.InstantViewRequest](#instantviewrequest) -> [protocol.mediaproxy.v1.InstantViewResponse](#instantviewresponse)

Endpoint to instant view a website URL.
##### CanInstantView
[protocol.mediaproxy.v1.CanInstantViewRequest](#caninstantviewrequest) -> [protocol.mediaproxy.v1.CanInstantViewResponse](#caninstantviewresponse)

Endpoint to query if the server can generate an instant view for a website URL.
