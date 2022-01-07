---
title: "Reference: protocol.auth.v1"
---
## Message Types 

### BeginAuthRequest
Used in `BeginAuth` endpoint.

This item has no fields.

### BeginAuthResponse
BeginAuthResponse
The return type of BeginAuth, containing the
auth_id that will be used for the authentication
section

#### Fields


##### auth_id (optional  `string`)
auth_id: the ID of this auth session

### Session
Session
Session contains the information for a new session;
the user_id you logged in as and the session_token
which should be passed to authorisation

#### Fields


##### user_id (optional  `uint64`)
user_id: the ID of the user you logged in as
##### session_token (optional  `string`)
session_token: the session token to use in authorization

### AuthStep
AuthStep
A step in the authentication process
Contains a variety of different types of views
It is recommended to have a fallback_url specified
For non-trivial authentication procedures (such as captchas)

#### Fields


##### fallback_url (optional  `string`)
fallback_url: unused
##### can_go_back (optional  `bool`)
can_go_back: whether or not the client can request the
server to send the previous step
##### choice (optional  [protocol.auth.v1.AuthStep.Choice](#authstepchoice))
choice: the user must pick a thing out of a list of options
##### form (optional  [protocol.auth.v1.AuthStep.Form](#authstepform))
form: the user must complete a form
##### session (optional  [protocol.auth.v1.Session](#session))
session: you've completed auth, and have a session
##### waiting (optional  [protocol.auth.v1.AuthStep.Waiting](#authstepwaiting))
waiting: you're waiting on something

### AuthStep.Choice


#### Fields


##### title (optional  `string`)

##### options (repeated  `string`)


### AuthStep.Form


#### Fields


##### title (optional  `string`)

##### fields (repeated  [protocol.auth.v1.AuthStep.Form.FormField](#authstepformformfield))


### AuthStep.Form.FormField


#### Fields


##### name (optional  `string`)

##### type (optional  `string`)


### AuthStep.Waiting


#### Fields


##### title (optional  `string`)

##### description (optional  `string`)


### NextStepRequest
NextStepRequest
contains the client's response to the server's challenge
This needs to be called first with no arguments to
receive the first step

#### Fields


##### auth_id (optional  `string`)
auth_id: the authentication session you want
the next step of
##### choice (optional  [protocol.auth.v1.NextStepRequest.Choice](#nextsteprequestchoice))
choice: the choice the user picked
##### form (optional  [protocol.auth.v1.NextStepRequest.Form](#nextsteprequestform))
form: the form the user filled out

### NextStepRequest.Choice


#### Fields


##### choice (optional  `string`)


### NextStepRequest.FormFields


#### Fields


##### bytes (optional  `bytes`)

##### string (optional  `string`)

##### number (optional  `int64`)


### NextStepRequest.Form


#### Fields


##### fields (repeated  [protocol.auth.v1.NextStepRequest.FormFields](#nextsteprequestformfields))


### NextStepResponse
Used in `NextStep` endpoint.

#### Fields


##### step (optional  [protocol.auth.v1.AuthStep](#authstep))
step: the next step in the authentication process

### StepBackRequest
StepBackRequest
A request to go back 1 step

#### Fields


##### auth_id (optional  `string`)
auth_id: the authentication session the user
wants to go back in

### StepBackResponse
Used in `StepBack` endpoint.

#### Fields


##### step (optional  [protocol.auth.v1.AuthStep](#authstep))
step: the previous step in the authentication process

### StreamStepsRequest
StreamStepsRequest
Required to be initiated by all authenticating clients
Allows the server to send steps

#### Fields


##### auth_id (optional  `string`)
auth_id: the authorization session
who's steps you want to stream

### StreamStepsResponse
Used in `StreamSteps` endpoint.

#### Fields


##### step (optional  [protocol.auth.v1.AuthStep](#authstep))
step: the next step in the authentication process

### FederateRequest
The request to federate with a foreign server.

#### Fields


##### server_id (optional  `string`)
The server ID foreign server you want to federate with

### FederateResponse
The reply to a successful federation request,
containing the token you need to present to the
foreign server.

#### Fields


##### token (optional  [protocol.harmonytypes.v1.Token]({{< ref "protocol.harmonytypes.v1.md" >}}#token))
A `harmonytypes.v1.Token` whose `data` field is a serialized `TokenData` message.
It is signed with the homeserver's private key.

### KeyRequest
Used in `Key` endpoint.

This item has no fields.

### KeyResponse
Contains a key's bytes.

#### Fields


##### key (optional  `bytes`)
key: the bytes of the public key.

### LoginFederatedRequest
Log into a foreignserver using a token
from your homeserver, obtained through a FederateRequest

#### Fields


##### auth_token (optional  [protocol.harmonytypes.v1.Token]({{< ref "protocol.harmonytypes.v1.md" >}}#token))
A `harmonytypes.v1.Token` whose `data` field is a serialized `TokenData` message.
It is signed with the homeserver's private key.
##### server_id (optional  `string`)
The server ID of the homeserver that the auth token is from

### LoginFederatedResponse
Used in `LoginFederated` endpoint.

#### Fields


##### session (optional  [protocol.auth.v1.Session](#session))
The user's session.

### TokenData
Information sent by a client's homeserver, in a `harmonytypes.v1.Token`.
It will be sent to a foreignserver by the client.

#### Fields


##### user_id (optional  `uint64`)
The client's user ID on the homeserver.
##### server_id (optional  `string`)
The foreignserver's server ID.
##### username (optional  `string`)
The username of the client.
##### avatar (optional  `string`)
The avatar of the client.

### CheckLoggedInRequest
Used in `CheckLoggedIn` endpoint.

This item has no fields.

### CheckLoggedInResponse
Used in `CheckLoggedIn` endpoint.

This item has no fields.

## Services 

### AuthService

The service containing authorization/entication methods
#### Methods

##### Federate
[protocol.auth.v1.FederateRequest](#federaterequest) -> [protocol.auth.v1.FederateResponse](#federateresponse)

Federate with a foreignserver, obtaining a token
you can use to call LoginFederated on it
##### LoginFederated
[protocol.auth.v1.LoginFederatedRequest](#loginfederatedrequest) -> [protocol.auth.v1.LoginFederatedResponse](#loginfederatedresponse)

Present a token to a foreignserver from a Federate call
on your homeserver in order to login
##### Key
[protocol.auth.v1.KeyRequest](#keyrequest) -> [protocol.auth.v1.KeyResponse](#keyresponse)

Returns the public key of this server
##### BeginAuth
[protocol.auth.v1.BeginAuthRequest](#beginauthrequest) -> [protocol.auth.v1.BeginAuthResponse](#beginauthresponse)

Begins an authentication session
##### NextStep
[protocol.auth.v1.NextStepRequest](#nextsteprequest) -> [protocol.auth.v1.NextStepResponse](#nextstepresponse)

Goes to the next step of the authentication session,
possibly presenting user input
##### StepBack
[protocol.auth.v1.StepBackRequest](#stepbackrequest) -> [protocol.auth.v1.StepBackResponse](#stepbackresponse)

Goes to the previous step of the authentication session
if possible
##### StreamSteps
[protocol.auth.v1.StreamStepsRequest](#streamstepsrequest) -> streaming [protocol.auth.v1.StreamStepsResponse](#streamstepsresponse)

Consume the steps of an authentication session
as a stream
##### CheckLoggedIn
[protocol.auth.v1.CheckLoggedInRequest](#checkloggedinrequest) -> [protocol.auth.v1.CheckLoggedInResponse](#checkloggedinresponse)

Check whether or not you're logged in and the session is valid
