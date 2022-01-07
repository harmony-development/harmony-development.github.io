---
title: "Reference: protocol.auth.v1"
---
## Message Types 

### <span class="codicon codicon-symbol-structure symbol-structure"></span>BeginAuthRequest
Used in `BeginAuth` endpoint.

This item has no fields.

### <span class="codicon codicon-symbol-structure symbol-structure"></span>BeginAuthResponse
BeginAuthResponse
The return type of BeginAuth, containing the
auth_id that will be used for the authentication
section

#### Fields


##### <span class="codicon codicon-symbol-field symbol-field"></span>auth_id (optional  `string`)
auth_id: the ID of this auth session

### <span class="codicon codicon-symbol-structure symbol-structure"></span>Session
Session
Session contains the information for a new session;
the user_id you logged in as and the session_token
which should be passed to authorisation

#### Fields


##### <span class="codicon codicon-symbol-field symbol-field"></span>user_id (optional  `uint64`)
user_id: the ID of the user you logged in as
##### <span class="codicon codicon-symbol-field symbol-field"></span>session_token (optional  `string`)
session_token: the session token to use in authorization

### <span class="codicon codicon-symbol-structure symbol-structure"></span>AuthStep
AuthStep
A step in the authentication process
Contains a variety of different types of views
It is recommended to have a fallback_url specified
For non-trivial authentication procedures (such as captchas)

#### Fields


##### <span class="codicon codicon-symbol-field symbol-field"></span>fallback_url (optional  `string`)
fallback_url: unused
##### <span class="codicon codicon-symbol-field symbol-field"></span>can_go_back (optional  `bool`)
can_go_back: whether or not the client can request the
server to send the previous step
##### <span class="codicon codicon-symbol-field symbol-field"></span>choice (optional  [protocol.auth.v1.AuthStep.Choice](#authstepchoice))
choice: the user must pick a thing out of a list of options
##### <span class="codicon codicon-symbol-field symbol-field"></span>form (optional  [protocol.auth.v1.AuthStep.Form](#authstepform))
form: the user must complete a form
##### <span class="codicon codicon-symbol-field symbol-field"></span>session (optional  [protocol.auth.v1.Session](#session))
session: you've completed auth, and have a session
##### <span class="codicon codicon-symbol-field symbol-field"></span>waiting (optional  [protocol.auth.v1.AuthStep.Waiting](#authstepwaiting))
waiting: you're waiting on something

### <span class="codicon codicon-symbol-structure symbol-structure"></span>AuthStep.Choice


#### Fields


##### <span class="codicon codicon-symbol-field symbol-field"></span>title (optional  `string`)

##### <span class="codicon codicon-symbol-field symbol-field"></span>options (repeated  `string`)


### <span class="codicon codicon-symbol-structure symbol-structure"></span>AuthStep.Form


#### Fields


##### <span class="codicon codicon-symbol-field symbol-field"></span>title (optional  `string`)

##### <span class="codicon codicon-symbol-field symbol-field"></span>fields (repeated  [protocol.auth.v1.AuthStep.Form.FormField](#authstepformformfield))


### <span class="codicon codicon-symbol-structure symbol-structure"></span>AuthStep.Form.FormField


#### Fields


##### <span class="codicon codicon-symbol-field symbol-field"></span>name (optional  `string`)

##### <span class="codicon codicon-symbol-field symbol-field"></span>type (optional  `string`)


### <span class="codicon codicon-symbol-structure symbol-structure"></span>AuthStep.Waiting


#### Fields


##### <span class="codicon codicon-symbol-field symbol-field"></span>title (optional  `string`)

##### <span class="codicon codicon-symbol-field symbol-field"></span>description (optional  `string`)


### <span class="codicon codicon-symbol-structure symbol-structure"></span>NextStepRequest
NextStepRequest
contains the client's response to the server's challenge
This needs to be called first with no arguments to
receive the first step

#### Fields


##### <span class="codicon codicon-symbol-field symbol-field"></span>auth_id (optional  `string`)
auth_id: the authentication session you want
the next step of
##### <span class="codicon codicon-symbol-field symbol-field"></span>choice (optional  [protocol.auth.v1.NextStepRequest.Choice](#nextsteprequestchoice))
choice: the choice the user picked
##### <span class="codicon codicon-symbol-field symbol-field"></span>form (optional  [protocol.auth.v1.NextStepRequest.Form](#nextsteprequestform))
form: the form the user filled out

### <span class="codicon codicon-symbol-structure symbol-structure"></span>NextStepRequest.Choice


#### Fields


##### <span class="codicon codicon-symbol-field symbol-field"></span>choice (optional  `string`)


### <span class="codicon codicon-symbol-structure symbol-structure"></span>NextStepRequest.FormFields


#### Fields


##### <span class="codicon codicon-symbol-field symbol-field"></span>bytes (optional  `bytes`)

##### <span class="codicon codicon-symbol-field symbol-field"></span>string (optional  `string`)

##### <span class="codicon codicon-symbol-field symbol-field"></span>number (optional  `int64`)


### <span class="codicon codicon-symbol-structure symbol-structure"></span>NextStepRequest.Form


#### Fields


##### <span class="codicon codicon-symbol-field symbol-field"></span>fields (repeated  [protocol.auth.v1.NextStepRequest.FormFields](#nextsteprequestformfields))


### <span class="codicon codicon-symbol-structure symbol-structure"></span>NextStepResponse
Used in `NextStep` endpoint.

#### Fields


##### <span class="codicon codicon-symbol-field symbol-field"></span>step (optional  [protocol.auth.v1.AuthStep](#authstep))
step: the next step in the authentication process

### <span class="codicon codicon-symbol-structure symbol-structure"></span>StepBackRequest
StepBackRequest
A request to go back 1 step

#### Fields


##### <span class="codicon codicon-symbol-field symbol-field"></span>auth_id (optional  `string`)
auth_id: the authentication session the user
wants to go back in

### <span class="codicon codicon-symbol-structure symbol-structure"></span>StepBackResponse
Used in `StepBack` endpoint.

#### Fields


##### <span class="codicon codicon-symbol-field symbol-field"></span>step (optional  [protocol.auth.v1.AuthStep](#authstep))
step: the previous step in the authentication process

### <span class="codicon codicon-symbol-structure symbol-structure"></span>StreamStepsRequest
StreamStepsRequest
Required to be initiated by all authenticating clients
Allows the server to send steps

#### Fields


##### <span class="codicon codicon-symbol-field symbol-field"></span>auth_id (optional  `string`)
auth_id: the authorization session
who's steps you want to stream

### <span class="codicon codicon-symbol-structure symbol-structure"></span>StreamStepsResponse
Used in `StreamSteps` endpoint.

#### Fields


##### <span class="codicon codicon-symbol-field symbol-field"></span>step (optional  [protocol.auth.v1.AuthStep](#authstep))
step: the next step in the authentication process

### <span class="codicon codicon-symbol-structure symbol-structure"></span>FederateRequest
The request to federate with a foreign server.

#### Fields


##### <span class="codicon codicon-symbol-field symbol-field"></span>server_id (optional  `string`)
The server ID foreign server you want to federate with

### <span class="codicon codicon-symbol-structure symbol-structure"></span>FederateResponse
The reply to a successful federation request,
containing the token you need to present to the
foreign server.

#### Fields


##### <span class="codicon codicon-symbol-field symbol-field"></span>token (optional  [protocol.harmonytypes.v1.Token]({{< ref "protocol.harmonytypes.v1.md" >}}#token))
A `harmonytypes.v1.Token` whose `data` field is a serialized `TokenData` message.
It is signed with the homeserver's private key.

### <span class="codicon codicon-symbol-structure symbol-structure"></span>KeyRequest
Used in `Key` endpoint.

This item has no fields.

### <span class="codicon codicon-symbol-structure symbol-structure"></span>KeyResponse
Contains a key's bytes.

#### Fields


##### <span class="codicon codicon-symbol-field symbol-field"></span>key (optional  `bytes`)
key: the bytes of the public key.

### <span class="codicon codicon-symbol-structure symbol-structure"></span>LoginFederatedRequest
Log into a foreignserver using a token
from your homeserver, obtained through a FederateRequest

#### Fields


##### <span class="codicon codicon-symbol-field symbol-field"></span>auth_token (optional  [protocol.harmonytypes.v1.Token]({{< ref "protocol.harmonytypes.v1.md" >}}#token))
A `harmonytypes.v1.Token` whose `data` field is a serialized `TokenData` message.
It is signed with the homeserver's private key.
##### <span class="codicon codicon-symbol-field symbol-field"></span>server_id (optional  `string`)
The server ID of the homeserver that the auth token is from

### <span class="codicon codicon-symbol-structure symbol-structure"></span>LoginFederatedResponse
Used in `LoginFederated` endpoint.

#### Fields


##### <span class="codicon codicon-symbol-field symbol-field"></span>session (optional  [protocol.auth.v1.Session](#session))
The user's session.

### <span class="codicon codicon-symbol-structure symbol-structure"></span>TokenData
Information sent by a client's homeserver, in a `harmonytypes.v1.Token`.
It will be sent to a foreignserver by the client.

#### Fields


##### <span class="codicon codicon-symbol-field symbol-field"></span>user_id (optional  `uint64`)
The client's user ID on the homeserver.
##### <span class="codicon codicon-symbol-field symbol-field"></span>server_id (optional  `string`)
The foreignserver's server ID.
##### <span class="codicon codicon-symbol-field symbol-field"></span>username (optional  `string`)
The username of the client.
##### <span class="codicon codicon-symbol-field symbol-field"></span>avatar (optional  `string`)
The avatar of the client.

### <span class="codicon codicon-symbol-structure symbol-structure"></span>CheckLoggedInRequest
Used in `CheckLoggedIn` endpoint.

This item has no fields.

### <span class="codicon codicon-symbol-structure symbol-structure"></span>CheckLoggedInResponse
Used in `CheckLoggedIn` endpoint.

This item has no fields.

## Services 

### <span class="codicon codicon-symbol-class symbol-class"></span>AuthService

The service containing authorization/entication methods
#### Methods

##### <span class="codicon codicon-symbol-method symbol-method"></span>Federate
[protocol.auth.v1.FederateRequest](#federaterequest) -> [protocol.auth.v1.FederateResponse](#federateresponse)

Federate with a foreignserver, obtaining a token
you can use to call LoginFederated on it
##### <span class="codicon codicon-symbol-method symbol-method"></span>LoginFederated
[protocol.auth.v1.LoginFederatedRequest](#loginfederatedrequest) -> [protocol.auth.v1.LoginFederatedResponse](#loginfederatedresponse)

Present a token to a foreignserver from a Federate call
on your homeserver in order to login
##### <span class="codicon codicon-symbol-method symbol-method"></span>Key
[protocol.auth.v1.KeyRequest](#keyrequest) -> [protocol.auth.v1.KeyResponse](#keyresponse)

Returns the public key of this server
##### <span class="codicon codicon-symbol-method symbol-method"></span>BeginAuth
[protocol.auth.v1.BeginAuthRequest](#beginauthrequest) -> [protocol.auth.v1.BeginAuthResponse](#beginauthresponse)

Begins an authentication session
##### <span class="codicon codicon-symbol-method symbol-method"></span>NextStep
[protocol.auth.v1.NextStepRequest](#nextsteprequest) -> [protocol.auth.v1.NextStepResponse](#nextstepresponse)

Goes to the next step of the authentication session,
possibly presenting user input
##### <span class="codicon codicon-symbol-method symbol-method"></span>StepBack
[protocol.auth.v1.StepBackRequest](#stepbackrequest) -> [protocol.auth.v1.StepBackResponse](#stepbackresponse)

Goes to the previous step of the authentication session
if possible
##### <span class="codicon codicon-symbol-method symbol-method"></span>StreamSteps
[protocol.auth.v1.StreamStepsRequest](#streamstepsrequest) -> streaming [protocol.auth.v1.StreamStepsResponse](#streamstepsresponse)

Consume the steps of an authentication session
as a stream
##### <span class="codicon codicon-symbol-method symbol-method"></span>CheckLoggedIn
[protocol.auth.v1.CheckLoggedInRequest](#checkloggedinrequest) -> [protocol.auth.v1.CheckLoggedInResponse](#checkloggedinresponse)

Check whether or not you're logged in and the session is valid
