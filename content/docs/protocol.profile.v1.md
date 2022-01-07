---
title: "Reference: protocol.profile.v1"
---
# Standalone Message Types 

## <span class="codicon codicon-symbol-structure symbol-structure"></span>OverrideTag
A tag for an override. This is used as a
standard shorthand for sending a message with
an override. If a message starts with before and
ends with after, clients should send a message
with the override the tag belongs to, stripping
the tag indicators.

<span class="h3" aria-level="3">Fields</span>
### <span class="codicon codicon-symbol-field symbol-field"></span>before
Type: optional `string`

The portion of the tag before the messge.
### <span class="codicon codicon-symbol-field symbol-field"></span>after
Type: optional `string`

The portion of the tag after the messge.

------
## <span class="codicon codicon-symbol-structure symbol-structure"></span>ProfileOverride
An individual override

<span class="h3" aria-level="3">Fields</span>
### <span class="codicon codicon-symbol-field symbol-field"></span>username
Type: optional `string`

The username for this override
### <span class="codicon codicon-symbol-field symbol-field"></span>avatar
Type: optional `string`

The avatar for this override
### <span class="codicon codicon-symbol-field symbol-field"></span>tags
Type: repeated [protocol.profile.v1.OverrideTag](#overridetag)

The tags for this override.
### <span class="codicon codicon-symbol-field symbol-field"></span>user_defined
Type: optional `string`

a custom reason in case the builtin ones don't fit
### <span class="codicon codicon-symbol-field symbol-field"></span>system_plurality
Type: optional [protocol.harmonytypes.v1.Empty]({{< ref "protocol.harmonytypes.v1.md" >}}#empty)

plurality, not system as in computer

------
## <span class="codicon codicon-symbol-structure symbol-structure"></span>AppDataOverrides
The message used for the 'h.overrides' key
of appdata.

<span class="h3" aria-level="3">Fields</span>
### <span class="codicon codicon-symbol-field symbol-field"></span>overrides
Type: repeated [protocol.profile.v1.ProfileOverride](#profileoverride)

The list of overrides.

------
## <span class="codicon codicon-symbol-structure symbol-structure"></span>Profile
Data for a single profile, without the user's ID.

<span class="h3" aria-level="3">Fields</span>
### <span class="codicon codicon-symbol-field symbol-field"></span>user_name
Type: optional `string`

the name of the user.
### <span class="codicon codicon-symbol-field symbol-field"></span>user_avatar
Type: optional `string`

the user's avatar.
### <span class="codicon codicon-symbol-field symbol-field"></span>user_status
Type: UNHANDLED | TYPE

the status of the user.
### <span class="codicon codicon-symbol-field symbol-field"></span>is_bot
Type: optional `bool`

whether the user is a bot or not.

------
## <span class="codicon codicon-symbol-structure symbol-structure"></span>ProfileUpdated
Event sent when a user's profile is updated.

Servers should sent this event only to users that can "see" (eg. they are
in the same guild) the user this event was triggered by.

<span class="h3" aria-level="3">Fields</span>
### <span class="codicon codicon-symbol-field symbol-field"></span>user_id
Type: optional `uint64`

User ID of the user that had it's profile updated.
### <span class="codicon codicon-symbol-field symbol-field"></span>new_username
Type: optional `string`

New username for this user.
### <span class="codicon codicon-symbol-field symbol-field"></span>new_avatar
Type: optional `string`

New avatar for this user.
### <span class="codicon codicon-symbol-field symbol-field"></span>new_status
Type: UNHANDLED | TYPE

New status for this user.
### <span class="codicon codicon-symbol-field symbol-field"></span>new_is_bot
Type: optional `bool`

New is bot or not for this user.

------
## <span class="codicon codicon-symbol-structure symbol-structure"></span>StreamEvent
Describes an emote service event.

<span class="h3" aria-level="3">Fields</span>
### <span class="codicon codicon-symbol-field symbol-field"></span>profile_updated
Type: optional [protocol.profile.v1.ProfileUpdated](#profileupdated)

Send the profile updated event.

# Enums 

## <span class="codicon codicon-symbol-enum symbol-enum"></span>UserStatus

The possible statuses a user can have.
### <span class="codicon codicon-symbol-enum-member symbol-enum-member"></span>USER_STATUS_OFFLINE_UNSPECIFIED
User is offline (not connected to the server).

### <span class="codicon codicon-symbol-enum-member symbol-enum-member"></span>USER_STATUS_ONLINE
User is online (this is the default value if ommitted).

### <span class="codicon codicon-symbol-enum-member symbol-enum-member"></span>USER_STATUS_IDLE
User is away.

### <span class="codicon codicon-symbol-enum-member symbol-enum-member"></span>USER_STATUS_DO_NOT_DISTURB
User does not want to be disturbed.

### <span class="codicon codicon-symbol-enum-member symbol-enum-member"></span>USER_STATUS_MOBILE
User is on mobile.

### <span class="codicon codicon-symbol-enum-member symbol-enum-member"></span>USER_STATUS_STREAMING
User is streaming

# Services 

## <span class="codicon codicon-symbol-class symbol-class"></span>ProfileService

Harmony's Profile service manages the profiles of the users.
<span class="h3" aria-level="3">Fields</span>
#### <span class="codicon codicon-symbol-method symbol-method"></span>GetProfile
[protocol.profile.v1.GetProfileRequest](#getprofilerequest) -> [protocol.profile.v1.GetProfileResponse](#getprofileresponse)

Gets a user's profile.

<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>GetProfileRequest
Used in `GetProfile` endpoint.

<span class="h5" aria-level="5">Fields</span>
###### <span class="codicon codicon-symbol-field symbol-field"></span>user_id
Type: optional `uint64`

The id of the user to get.


<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>GetProfileResponse
Used in `GetProfile` endpoint.

<span class="h5" aria-level="5">Fields</span>
###### <span class="codicon codicon-symbol-field symbol-field"></span>profile
Type: optional [protocol.profile.v1.Profile](#profile)

The user's profile

------
#### <span class="codicon codicon-symbol-method symbol-method"></span>UpdateProfile
[protocol.profile.v1.UpdateProfileRequest](#updateprofilerequest) -> [protocol.profile.v1.UpdateProfileResponse](#updateprofileresponse)

Updates the user's profile.

<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>UpdateProfileRequest
Used in `UpdateProfile` endpoint.

<span class="h5" aria-level="5">Fields</span>
###### <span class="codicon codicon-symbol-field symbol-field"></span>new_user_name
Type: optional `string`

new name of the user.
###### <span class="codicon codicon-symbol-field symbol-field"></span>new_user_avatar
Type: optional `string`

new user avatar. The avatar will be removed if the string is empty.
###### <span class="codicon codicon-symbol-field symbol-field"></span>new_user_status
Type: UNHANDLED | TYPE

new status of the user.
###### <span class="codicon codicon-symbol-field symbol-field"></span>new_is_bot
Type: optional `bool`

new whether the user is a bot or not.


<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>UpdateProfileResponse
Used in `UpdateProfile` endpoint.

This item has no fields.

------
#### <span class="codicon codicon-symbol-method symbol-method"></span>GetAppData
[protocol.profile.v1.GetAppDataRequest](#getappdatarequest) -> [protocol.profile.v1.GetAppDataResponse](#getappdataresponse)

Gets app data for a user (this can be used to store user preferences which
is synchronized across devices).

<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>GetAppDataRequest
Used in `GetAppData` endpoint.

<span class="h5" aria-level="5">Fields</span>
###### <span class="codicon codicon-symbol-field symbol-field"></span>app_id
Type: optional `string`

the app id.


<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>GetAppDataResponse
Used in `GetAppData` endpoint.

<span class="h5" aria-level="5">Fields</span>
###### <span class="codicon codicon-symbol-field symbol-field"></span>app_data
Type: optional `bytes`

the app data.

------
#### <span class="codicon codicon-symbol-method symbol-method"></span>SetAppData
[protocol.profile.v1.SetAppDataRequest](#setappdatarequest) -> [protocol.profile.v1.SetAppDataResponse](#setappdataresponse)

Sets the app data for a user.

<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>SetAppDataRequest
Used in `SetAppData` endpoint.

<span class="h5" aria-level="5">Fields</span>
###### <span class="codicon codicon-symbol-field symbol-field"></span>app_id
Type: optional `string`

the app id.
###### <span class="codicon codicon-symbol-field symbol-field"></span>app_data
Type: optional `bytes`

the app data.


<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>SetAppDataResponse
Used in `SetAppData` endpoint.

This item has no fields.

