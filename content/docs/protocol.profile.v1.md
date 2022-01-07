---
title: "Reference: protocol.profile.v1"
---
## Message Types 

### OverrideTag

Fields

| Name | Type |
| ---- | ---- |
| before | `string` |
| after | `string` |

### ProfileOverride

Fields

| Name | Type |
| ---- | ---- |
| username | `string` |
| avatar | `string` |
| tags | [protocol.profile.v1.OverrideTag](#overridetag) |
| user_defined | `string` |
| system_plurality | [protocol.harmonytypes.v1.Empty]({{< ref "protocol.harmonytypes.v1.md" >}}#empty) |

### AppDataOverrides

Fields

| Name | Type |
| ---- | ---- |
| overrides | [protocol.profile.v1.ProfileOverride](#profileoverride) |

### Profile

Fields

| Name | Type |
| ---- | ---- |
| user_name | `string` |
| user_avatar | `string` |
| UNHANDLED | TYPE |
| is_bot | `bool` |

### GetProfileRequest

Fields

| Name | Type |
| ---- | ---- |
| user_id | `uint64` |

### GetProfileResponse

Fields

| Name | Type |
| ---- | ---- |
| profile | [protocol.profile.v1.Profile](#profile) |

### UpdateProfileRequest

Fields

| Name | Type |
| ---- | ---- |
| new_user_name | `string` |
| new_user_avatar | `string` |
| UNHANDLED | TYPE |
| new_is_bot | `bool` |

### UpdateProfileResponse

Fields

| Name | Type |
| ---- | ---- |

### GetAppDataRequest

Fields

| Name | Type |
| ---- | ---- |
| app_id | `string` |

### GetAppDataResponse

Fields

| Name | Type |
| ---- | ---- |
| app_data | `bytes` |

### SetAppDataRequest

Fields

| Name | Type |
| ---- | ---- |
| app_id | `string` |
| app_data | `bytes` |

### SetAppDataResponse

Fields

| Name | Type |
| ---- | ---- |

### ProfileUpdated

Fields

| Name | Type |
| ---- | ---- |
| user_id | `uint64` |
| new_username | `string` |
| new_avatar | `string` |
| UNHANDLED | TYPE |
| new_is_bot | `bool` |

### StreamEvent

Fields

| Name | Type |
| ---- | ---- |
| profile_updated | [protocol.profile.v1.ProfileUpdated](#profileupdated) |

## Services 

### ProfileService

#### Unary Methods

| Name | Request | Response |
| ---- | ------- | -------- |
|GetProfile|[protocol.profile.v1.GetProfileRequest](#getprofilerequest)|[protocol.profile.v1.GetProfileResponse](#getprofileresponse)|
|UpdateProfile|[protocol.profile.v1.UpdateProfileRequest](#updateprofilerequest)|[protocol.profile.v1.UpdateProfileResponse](#updateprofileresponse)|
|GetAppData|[protocol.profile.v1.GetAppDataRequest](#getappdatarequest)|[protocol.profile.v1.GetAppDataResponse](#getappdataresponse)|
|SetAppData|[protocol.profile.v1.SetAppDataRequest](#setappdatarequest)|[protocol.profile.v1.SetAppDataResponse](#setappdataresponse)|

#### Streaming Methods

| Name | Client Streams | Server Streams |
| ---- | -------------- | -------------- |
