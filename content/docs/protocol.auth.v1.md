---
title: "Reference: protocol.auth.v1"
---
# Services 

## <span class="codicon codicon-symbol-class symbol-class"></span>AuthService

The service containing authorization/entication methods
<span class="h3" aria-level="3">Fields</span>
#### <span class="codicon codicon-symbol-method symbol-method"></span>Federate
[protocol.auth.v1.FederateRequest](#federaterequest) -> [protocol.auth.v1.FederateResponse](#federateresponse)

Federate with a foreignserver, obtaining a token
you can use to call LoginFederated on it

<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>FederateRequest
The request to federate with a foreign server.

<span class="h5" aria-level="5">Fields</span>
###### <span class="codicon codicon-symbol-field symbol-field"></span>server_id
Type: optional `string`

The server ID foreign server you want to federate with


<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>FederateResponse
The reply to a successful federation request,
containing the token you need to present to the
foreign server.

<span class="h5" aria-level="5">Fields</span>
###### <span class="codicon codicon-symbol-field symbol-field"></span>token
Type: optional [protocol.harmonytypes.v1.Token]({{< ref "protocol.harmonytypes.v1.md" >}}#token)

A `harmonytypes.v1.Token` whose `data` field is a serialized `TokenData` message.
It is signed with the homeserver's private key.

------
#### <span class="codicon codicon-symbol-method symbol-method"></span>LoginFederated
[protocol.auth.v1.LoginFederatedRequest](#loginfederatedrequest) -> [protocol.auth.v1.LoginFederatedResponse](#loginfederatedresponse)

Present a token to a foreignserver from a Federate call
on your homeserver in order to login

<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>LoginFederatedRequest
Log into a foreignserver using a token
from your homeserver, obtained through a FederateRequest

<span class="h5" aria-level="5">Fields</span>
###### <span class="codicon codicon-symbol-field symbol-field"></span>auth_token
Type: optional [protocol.harmonytypes.v1.Token]({{< ref "protocol.harmonytypes.v1.md" >}}#token)

A `harmonytypes.v1.Token` whose `data` field is a serialized `TokenData` message.
It is signed with the homeserver's private key.
###### <span class="codicon codicon-symbol-field symbol-field"></span>server_id
Type: optional `string`

The server ID of the homeserver that the auth token is from


<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>LoginFederatedResponse
Used in `LoginFederated` endpoint.

<span class="h5" aria-level="5">Fields</span>
###### <span class="codicon codicon-symbol-field symbol-field"></span>session
Type: optional [protocol.auth.v1.Session](#session)

The user's session.

------
#### <span class="codicon codicon-symbol-method symbol-method"></span>Key
[protocol.auth.v1.KeyRequest](#keyrequest) -> [protocol.auth.v1.KeyResponse](#keyresponse)

Returns the public key of this server

<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>KeyRequest
Used in `Key` endpoint.

This item has no fields.


<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>KeyResponse
Contains a key's bytes.

<span class="h5" aria-level="5">Fields</span>
###### <span class="codicon codicon-symbol-field symbol-field"></span>key
Type: optional `bytes`

key: the bytes of the public key.

------
#### <span class="codicon codicon-symbol-method symbol-method"></span>BeginAuth
[protocol.auth.v1.BeginAuthRequest](#beginauthrequest) -> [protocol.auth.v1.BeginAuthResponse](#beginauthresponse)

Begins an authentication session

<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>BeginAuthRequest
Used in `BeginAuth` endpoint.

This item has no fields.


<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>BeginAuthResponse
BeginAuthResponse
The return type of BeginAuth, containing the
auth_id that will be used for the authentication
section

<span class="h5" aria-level="5">Fields</span>
###### <span class="codicon codicon-symbol-field symbol-field"></span>auth_id
Type: optional `string`

auth_id: the ID of this auth session

------
#### <span class="codicon codicon-symbol-method symbol-method"></span>NextStep
[protocol.auth.v1.NextStepRequest](#nextsteprequest) -> [protocol.auth.v1.NextStepResponse](#nextstepresponse)

Goes to the next step of the authentication session,
possibly presenting user input
##### <span class="codicon codicon-symbol-structure symbol-structure"></span>NextStepResponse
Used in `NextStep` endpoint.

<span class="h5" aria-level="5">Fields</span>
###### <span class="codicon codicon-symbol-field symbol-field"></span>step
Type: optional [protocol.auth.v1.AuthStep](#authstep)

step: the next step in the authentication process

------
#### <span class="codicon codicon-symbol-method symbol-method"></span>StepBack
[protocol.auth.v1.StepBackRequest](#stepbackrequest) -> [protocol.auth.v1.StepBackResponse](#stepbackresponse)

Goes to the previous step of the authentication session
if possible

<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>StepBackRequest
StepBackRequest
A request to go back 1 step

<span class="h5" aria-level="5">Fields</span>
###### <span class="codicon codicon-symbol-field symbol-field"></span>auth_id
Type: optional `string`

auth_id: the authentication session the user
wants to go back in


<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>StepBackResponse
Used in `StepBack` endpoint.

<span class="h5" aria-level="5">Fields</span>
###### <span class="codicon codicon-symbol-field symbol-field"></span>step
Type: optional [protocol.auth.v1.AuthStep](#authstep)

step: the previous step in the authentication process

------
#### <span class="codicon codicon-symbol-method symbol-method"></span>StreamSteps
[protocol.auth.v1.StreamStepsRequest](#streamstepsrequest) -> streaming [protocol.auth.v1.StreamStepsResponse](#streamstepsresponse)

Consume the steps of an authentication session
as a stream

<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>StreamStepsRequest
StreamStepsRequest
Required to be initiated by all authenticating clients
Allows the server to send steps

<span class="h5" aria-level="5">Fields</span>
###### <span class="codicon codicon-symbol-field symbol-field"></span>auth_id
Type: optional `string`

auth_id: the authorization session
who's steps you want to stream


<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>StreamStepsResponse
Used in `StreamSteps` endpoint.

<span class="h5" aria-level="5">Fields</span>
###### <span class="codicon codicon-symbol-field symbol-field"></span>step
Type: optional [protocol.auth.v1.AuthStep](#authstep)

step: the next step in the authentication process

------
#### <span class="codicon codicon-symbol-method symbol-method"></span>CheckLoggedIn
[protocol.auth.v1.CheckLoggedInRequest](#checkloggedinrequest) -> [protocol.auth.v1.CheckLoggedInResponse](#checkloggedinresponse)

Check whether or not you're logged in and the session is valid

<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>CheckLoggedInRequest
Used in `CheckLoggedIn` endpoint.

This item has no fields.


<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>CheckLoggedInResponse
Used in `CheckLoggedIn` endpoint.

This item has no fields.

# Standalone Message Types 

## <span class="codicon codicon-symbol-structure symbol-structure"></span>Session
Session
Session contains the information for a new session;
the user_id you logged in as and the session_token
which should be passed to authorisation

<span class="h3" aria-level="3">Fields</span>
### <span class="codicon codicon-symbol-field symbol-field"></span>user_id
Type: optional `uint64`

user_id: the ID of the user you logged in as
### <span class="codicon codicon-symbol-field symbol-field"></span>session_token
Type: optional `string`

session_token: the session token to use in authorization

------
## <span class="codicon codicon-symbol-structure symbol-structure"></span>AuthStep
AuthStep
A step in the authentication process
Contains a variety of different types of views
It is recommended to have a fallback_url specified
For non-trivial authentication procedures (such as captchas)

<span class="h3" aria-level="3">Fields</span>
### <span class="codicon codicon-symbol-field symbol-field"></span>fallback_url
Type: optional `string`

fallback_url: unused
### <span class="codicon codicon-symbol-field symbol-field"></span>can_go_back
Type: optional `bool`

can_go_back: whether or not the client can request the
server to send the previous step
### <span class="codicon codicon-symbol-field symbol-field"></span>choice
Type: optional [protocol.auth.v1.AuthStep.Choice](#authstepchoice)

choice: the user must pick a thing out of a list of options
### <span class="codicon codicon-symbol-field symbol-field"></span>form
Type: optional [protocol.auth.v1.AuthStep.Form](#authstepform)

form: the user must complete a form
### <span class="codicon codicon-symbol-field symbol-field"></span>session
Type: optional [protocol.auth.v1.Session](#session)

session: you've completed auth, and have a session
### <span class="codicon codicon-symbol-field symbol-field"></span>waiting
Type: optional [protocol.auth.v1.AuthStep.Waiting](#authstepwaiting)

waiting: you're waiting on something

------
## <span class="codicon codicon-symbol-structure symbol-structure"></span>AuthStep.Choice


<span class="h3" aria-level="3">Fields</span>
### <span class="codicon codicon-symbol-field symbol-field"></span>title
Type: optional `string`


### <span class="codicon codicon-symbol-field symbol-field"></span>options
Type: repeated `string`



------
## <span class="codicon codicon-symbol-structure symbol-structure"></span>AuthStep.Form


<span class="h3" aria-level="3">Fields</span>
### <span class="codicon codicon-symbol-field symbol-field"></span>title
Type: optional `string`


### <span class="codicon codicon-symbol-field symbol-field"></span>fields
Type: repeated [protocol.auth.v1.AuthStep.Form.FormField](#authstepformformfield)



------
## <span class="codicon codicon-symbol-structure symbol-structure"></span>AuthStep.Form.FormField


<span class="h3" aria-level="3">Fields</span>
### <span class="codicon codicon-symbol-field symbol-field"></span>name
Type: optional `string`


### <span class="codicon codicon-symbol-field symbol-field"></span>type
Type: optional `string`



------
## <span class="codicon codicon-symbol-structure symbol-structure"></span>AuthStep.Waiting


<span class="h3" aria-level="3">Fields</span>
### <span class="codicon codicon-symbol-field symbol-field"></span>title
Type: optional `string`


### <span class="codicon codicon-symbol-field symbol-field"></span>description
Type: optional `string`



------
## <span class="codicon codicon-symbol-structure symbol-structure"></span>NextStepRequest
NextStepRequest
contains the client's response to the server's challenge
This needs to be called first with no arguments to
receive the first step

<span class="h3" aria-level="3">Fields</span>
### <span class="codicon codicon-symbol-field symbol-field"></span>auth_id
Type: optional `string`

auth_id: the authentication session you want
the next step of
### <span class="codicon codicon-symbol-field symbol-field"></span>choice
Type: optional [protocol.auth.v1.NextStepRequest.Choice](#nextsteprequestchoice)

choice: the choice the user picked
### <span class="codicon codicon-symbol-field symbol-field"></span>form
Type: optional [protocol.auth.v1.NextStepRequest.Form](#nextsteprequestform)

form: the form the user filled out

------
## <span class="codicon codicon-symbol-structure symbol-structure"></span>NextStepRequest.Choice


<span class="h3" aria-level="3">Fields</span>
### <span class="codicon codicon-symbol-field symbol-field"></span>choice
Type: optional `string`



------
## <span class="codicon codicon-symbol-structure symbol-structure"></span>NextStepRequest.FormFields


<span class="h3" aria-level="3">Fields</span>
### <span class="codicon codicon-symbol-field symbol-field"></span>bytes
Type: optional `bytes`


### <span class="codicon codicon-symbol-field symbol-field"></span>string
Type: optional `string`


### <span class="codicon codicon-symbol-field symbol-field"></span>number
Type: optional `int64`



------
## <span class="codicon codicon-symbol-structure symbol-structure"></span>NextStepRequest.Form


<span class="h3" aria-level="3">Fields</span>
### <span class="codicon codicon-symbol-field symbol-field"></span>fields
Type: repeated [protocol.auth.v1.NextStepRequest.FormFields](#nextsteprequestformfields)



------
## <span class="codicon codicon-symbol-structure symbol-structure"></span>TokenData
Information sent by a client's homeserver, in a `harmonytypes.v1.Token`.
It will be sent to a foreignserver by the client.

<span class="h3" aria-level="3">Fields</span>
### <span class="codicon codicon-symbol-field symbol-field"></span>user_id
Type: optional `uint64`

The client's user ID on the homeserver.
### <span class="codicon codicon-symbol-field symbol-field"></span>server_id
Type: optional `string`

The foreignserver's server ID.
### <span class="codicon codicon-symbol-field symbol-field"></span>username
Type: optional `string`

The username of the client.
### <span class="codicon codicon-symbol-field symbol-field"></span>avatar
Type: optional `string`

The avatar of the client.

------
