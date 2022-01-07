---
title: "Reference: protocol.profile.v1"
---
## Message Types 

### <span class="codicon codicon-symbol-structure symbol-structure"></span>OverrideTag
A tag for an override. This is used as a
standard shorthand for sending a message with
an override. If a message starts with before and
ends with after, clients should send a message
with the override the tag belongs to, stripping
the tag indicators.

#### Fields


##### <span class="codicon codicon-symbol-field symbol-field"></span>before (optional  `string`)
The portion of the tag before the messge.
##### <span class="codicon codicon-symbol-field symbol-field"></span>after (optional  `string`)
The portion of the tag after the messge.

### <span class="codicon codicon-symbol-structure symbol-structure"></span>ProfileOverride
An individual override

#### Fields


##### <span class="codicon codicon-symbol-field symbol-field"></span>username (optional  `string`)
The username for this override
##### <span class="codicon codicon-symbol-field symbol-field"></span>avatar (optional  `string`)
The avatar for this override
##### <span class="codicon codicon-symbol-field symbol-field"></span>tags (repeated  [protocol.profile.v1.OverrideTag](#overridetag))
The tags for this override.
##### <span class="codicon codicon-symbol-field symbol-field"></span>user_defined (optional  `string`)
a custom reason in case the builtin ones don't fit
##### <span class="codicon codicon-symbol-field symbol-field"></span>system_plurality (optional  [protocol.harmonytypes.v1.Empty]({{< ref "protocol.harmonytypes.v1.md" >}}#empty))
plurality, not system as in computer

### <span class="codicon codicon-symbol-structure symbol-structure"></span>AppDataOverrides
The message used for the 'h.overrides' key
of appdata.

#### Fields


##### <span class="codicon codicon-symbol-field symbol-field"></span>overrides (repeated  [protocol.profile.v1.ProfileOverride](#profileoverride))
The list of overrides.

### <span class="codicon codicon-symbol-structure symbol-structure"></span>Profile
Data for a single profile, without the user's ID.

#### Fields


##### <span class="codicon codicon-symbol-field symbol-field"></span>user_name (optional  `string`)
the name of the user.
##### <span class="codicon codicon-symbol-field symbol-field"></span>user_avatar (optional  `string`)
the user's avatar.
##### <span class="codicon codicon-symbol-field symbol-field"></span>user_status (UNHANDLED | TYPE)
the status of the user.
##### <span class="codicon codicon-symbol-field symbol-field"></span>is_bot (optional  `bool`)
whether the user is a bot or not.

### <span class="codicon codicon-symbol-structure symbol-structure"></span>GetProfileRequest
Used in `GetProfile` endpoint.

#### Fields


##### <span class="codicon codicon-symbol-field symbol-field"></span>user_id (optional  `uint64`)
The id of the user to get.

### <span class="codicon codicon-symbol-structure symbol-structure"></span>GetProfileResponse
Used in `GetProfile` endpoint.

#### Fields


##### <span class="codicon codicon-symbol-field symbol-field"></span>profile (optional  [protocol.profile.v1.Profile](#profile))
The user's profile

### <span class="codicon codicon-symbol-structure symbol-structure"></span>UpdateProfileRequest
Used in `UpdateProfile` endpoint.

#### Fields


##### <span class="codicon codicon-symbol-field symbol-field"></span>new_user_name (optional  `string`)
new name of the user.
##### <span class="codicon codicon-symbol-field symbol-field"></span>new_user_avatar (optional  `string`)
new user avatar. The avatar will be removed if the string is empty.
##### <span class="codicon codicon-symbol-field symbol-field"></span>new_user_status (UNHANDLED | TYPE)
new status of the user.
##### <span class="codicon codicon-symbol-field symbol-field"></span>new_is_bot (optional  `bool`)
new whether the user is a bot or not.

### <span class="codicon codicon-symbol-structure symbol-structure"></span>UpdateProfileResponse
Used in `UpdateProfile` endpoint.

This item has no fields.

### <span class="codicon codicon-symbol-structure symbol-structure"></span>GetAppDataRequest
Used in `GetAppData` endpoint.

#### Fields


##### <span class="codicon codicon-symbol-field symbol-field"></span>app_id (optional  `string`)
the app id.

### <span class="codicon codicon-symbol-structure symbol-structure"></span>GetAppDataResponse
Used in `GetAppData` endpoint.

#### Fields


##### <span class="codicon codicon-symbol-field symbol-field"></span>app_data (optional  `bytes`)
the app data.

### <span class="codicon codicon-symbol-structure symbol-structure"></span>SetAppDataRequest
Used in `SetAppData` endpoint.

#### Fields


##### <span class="codicon codicon-symbol-field symbol-field"></span>app_id (optional  `string`)
the app id.
##### <span class="codicon codicon-symbol-field symbol-field"></span>app_data (optional  `bytes`)
the app data.

### <span class="codicon codicon-symbol-structure symbol-structure"></span>SetAppDataResponse
Used in `SetAppData` endpoint.

This item has no fields.

### <span class="codicon codicon-symbol-structure symbol-structure"></span>ProfileUpdated
Event sent when a user's profile is updated.

Servers should sent this event only to users that can "see" (eg. they are
in the same guild) the user this event was triggered by.

#### Fields


##### <span class="codicon codicon-symbol-field symbol-field"></span>user_id (optional  `uint64`)
User ID of the user that had it's profile updated.
##### <span class="codicon codicon-symbol-field symbol-field"></span>new_username (optional  `string`)
New username for this user.
##### <span class="codicon codicon-symbol-field symbol-field"></span>new_avatar (optional  `string`)
New avatar for this user.
##### <span class="codicon codicon-symbol-field symbol-field"></span>new_status (UNHANDLED | TYPE)
New status for this user.
##### <span class="codicon codicon-symbol-field symbol-field"></span>new_is_bot (optional  `bool`)
New is bot or not for this user.

### <span class="codicon codicon-symbol-structure symbol-structure"></span>StreamEvent
Describes an emote service event.

#### Fields


##### <span class="codicon codicon-symbol-field symbol-field"></span>profile_updated (optional  [protocol.profile.v1.ProfileUpdated](#profileupdated))
Send the profile updated event.

## Enums 

### <span class="codicon codicon-symbol-enum symbol-enum"></span>UserStatus

The possible statuses a user can have.
#### <span class="codicon codicon-symbol-enum-member symbol-enum-member"></span>USER_STATUS_OFFLINE_UNSPECIFIED
User is offline (not connected to the server).

#### <span class="codicon codicon-symbol-enum-member symbol-enum-member"></span>USER_STATUS_ONLINE
User is online (this is the default value if ommitted).

#### <span class="codicon codicon-symbol-enum-member symbol-enum-member"></span>USER_STATUS_IDLE
User is away.

#### <span class="codicon codicon-symbol-enum-member symbol-enum-member"></span>USER_STATUS_DO_NOT_DISTURB
User does not want to be disturbed.

#### <span class="codicon codicon-symbol-enum-member symbol-enum-member"></span>USER_STATUS_MOBILE
User is on mobile.

#### <span class="codicon codicon-symbol-enum-member symbol-enum-member"></span>USER_STATUS_STREAMING
User is streaming

## Services 

### <span class="codicon codicon-symbol-class symbol-class"></span>ProfileService

Harmony's Profile service manages the profiles of the users.
#### Methods

##### <span class="codicon codicon-symbol-method symbol-method"></span>GetProfile
[protocol.profile.v1.GetProfileRequest](#getprofilerequest) -> [protocol.profile.v1.GetProfileResponse](#getprofileresponse)

Gets a user's profile.
##### <span class="codicon codicon-symbol-method symbol-method"></span>UpdateProfile
[protocol.profile.v1.UpdateProfileRequest](#updateprofilerequest) -> [protocol.profile.v1.UpdateProfileResponse](#updateprofileresponse)

Updates the user's profile.
##### <span class="codicon codicon-symbol-method symbol-method"></span>GetAppData
[protocol.profile.v1.GetAppDataRequest](#getappdatarequest) -> [protocol.profile.v1.GetAppDataResponse](#getappdataresponse)

Gets app data for a user (this can be used to store user preferences which
is synchronized across devices).
##### <span class="codicon codicon-symbol-method symbol-method"></span>SetAppData
[protocol.profile.v1.SetAppDataRequest](#setappdatarequest) -> [protocol.profile.v1.SetAppDataResponse](#setappdataresponse)

Sets the app data for a user.
