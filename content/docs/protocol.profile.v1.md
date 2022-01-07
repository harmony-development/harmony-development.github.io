---
title: "Reference: protocol.profile.v1"
---
## Message Types 

### OverrideTag
A tag for an override. This is used as a
standard shorthand for sending a message with
an override. If a message starts with before and
ends with after, clients should send a message
with the override the tag belongs to, stripping
the tag indicators.

#### Fields


##### before (optional  `string`)
The portion of the tag before the messge.
##### after (optional  `string`)
The portion of the tag after the messge.

### ProfileOverride
An individual override

#### Fields


##### username (optional  `string`)
The username for this override
##### avatar (optional  `string`)
The avatar for this override
##### tags (repeated  [protocol.profile.v1.OverrideTag](#overridetag))
The tags for this override.
##### user_defined (optional  `string`)
a custom reason in case the builtin ones don't fit
##### system_plurality (optional  [protocol.harmonytypes.v1.Empty]({{< ref "protocol.harmonytypes.v1.md" >}}#empty))
plurality, not system as in computer

### AppDataOverrides
The message used for the 'h.overrides' key
of appdata.

#### Fields


##### overrides (repeated  [protocol.profile.v1.ProfileOverride](#profileoverride))
The list of overrides.

### Profile
Data for a single profile, without the user's ID.

#### Fields


##### user_name (optional  `string`)
the name of the user.
##### user_avatar (optional  `string`)
the user's avatar.
##### user_status (UNHANDLED | TYPE)
the status of the user.
##### is_bot (optional  `bool`)
whether the user is a bot or not.

### GetProfileRequest
Used in `GetProfile` endpoint.

#### Fields


##### user_id (optional  `uint64`)
The id of the user to get.

### GetProfileResponse
Used in `GetProfile` endpoint.

#### Fields


##### profile (optional  [protocol.profile.v1.Profile](#profile))
The user's profile

### UpdateProfileRequest
Used in `UpdateProfile` endpoint.

#### Fields


##### new_user_name (optional  `string`)
new name of the user.
##### new_user_avatar (optional  `string`)
new user avatar. The avatar will be removed if the string is empty.
##### new_user_status (UNHANDLED | TYPE)
new status of the user.
##### new_is_bot (optional  `bool`)
new whether the user is a bot or not.

### UpdateProfileResponse
Used in `UpdateProfile` endpoint.

This item has no fields.

### GetAppDataRequest
Used in `GetAppData` endpoint.

#### Fields


##### app_id (optional  `string`)
the app id.

### GetAppDataResponse
Used in `GetAppData` endpoint.

#### Fields


##### app_data (optional  `bytes`)
the app data.

### SetAppDataRequest
Used in `SetAppData` endpoint.

#### Fields


##### app_id (optional  `string`)
the app id.
##### app_data (optional  `bytes`)
the app data.

### SetAppDataResponse
Used in `SetAppData` endpoint.

This item has no fields.

### ProfileUpdated
Event sent when a user's profile is updated.

Servers should sent this event only to users that can "see" (eg. they are
in the same guild) the user this event was triggered by.

#### Fields


##### user_id (optional  `uint64`)
User ID of the user that had it's profile updated.
##### new_username (optional  `string`)
New username for this user.
##### new_avatar (optional  `string`)
New avatar for this user.
##### new_status (UNHANDLED | TYPE)
New status for this user.
##### new_is_bot (optional  `bool`)
New is bot or not for this user.

### StreamEvent
Describes an emote service event.

#### Fields


##### profile_updated (optional  [protocol.profile.v1.ProfileUpdated](#profileupdated))
Send the profile updated event.

## Enums 

### UserStatus

The possible statuses a user can have.
#### USER_STATUS_OFFLINE_UNSPECIFIED
User is offline (not connected to the server).

#### USER_STATUS_ONLINE
User is online (this is the default value if ommitted).

#### USER_STATUS_IDLE
User is away.

#### USER_STATUS_DO_NOT_DISTURB
User does not want to be disturbed.

#### USER_STATUS_MOBILE
User is on mobile.

#### USER_STATUS_STREAMING
User is streaming

## Services 

### ProfileService

Harmony's Profile service manages the profiles of the users.
#### Methods

##### GetProfile
[protocol.profile.v1.GetProfileRequest](#getprofilerequest) -> [protocol.profile.v1.GetProfileResponse](#getprofileresponse)

Gets a user's profile.
##### UpdateProfile
[protocol.profile.v1.UpdateProfileRequest](#updateprofilerequest) -> [protocol.profile.v1.UpdateProfileResponse](#updateprofileresponse)

Updates the user's profile.
##### GetAppData
[protocol.profile.v1.GetAppDataRequest](#getappdatarequest) -> [protocol.profile.v1.GetAppDataResponse](#getappdataresponse)

Gets app data for a user (this can be used to store user preferences which
is synchronized across devices).
##### SetAppData
[protocol.profile.v1.SetAppDataRequest](#setappdatarequest) -> [protocol.profile.v1.SetAppDataResponse](#setappdataresponse)

Sets the app data for a user.
