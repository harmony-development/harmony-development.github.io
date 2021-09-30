---
title: "Reference: protocol.auth.v1"
---
## Message Types 

### BeginAuthRequest

Fields

| Name | Type |
| ---- | ---- |

### BeginAuthResponse

Fields

| Name | Type |
| ---- | ---- |
| auth_id | `string` |

### Session

Fields

| Name | Type |
| ---- | ---- |
| user_id | `uint64` |
| session_token | `string` |

### AuthStep

Fields

| Name | Type |
| ---- | ---- |
| fallback_url | `string` |
| can_go_back | `bool` |
| choice | [protocol.auth.v1.AuthStep.Choice](#authstep-choice) |
| form | [protocol.auth.v1.AuthStep.Form](#authstep-form) |
| session | [protocol.auth.v1.Session](#session) |
| waiting | [protocol.auth.v1.AuthStep.Waiting](#authstep-waiting) |

### NextStepRequest

Fields

| Name | Type |
| ---- | ---- |
| auth_id | `string` |
| choice | [protocol.auth.v1.NextStepRequest.Choice](#nextsteprequest-choice) |
| form | [protocol.auth.v1.NextStepRequest.Form](#nextsteprequest-form) |

### NextStepResponse

Fields

| Name | Type |
| ---- | ---- |
| step | [protocol.auth.v1.AuthStep](#authstep) |

### StepBackRequest

Fields

| Name | Type |
| ---- | ---- |
| auth_id | `string` |

### StepBackResponse

Fields

| Name | Type |
| ---- | ---- |
| step | [protocol.auth.v1.AuthStep](#authstep) |

### StreamStepsRequest

Fields

| Name | Type |
| ---- | ---- |
| auth_id | `string` |

### StreamStepsResponse

Fields

| Name | Type |
| ---- | ---- |
| step | [protocol.auth.v1.AuthStep](#authstep) |

### FederateRequest

Fields

| Name | Type |
| ---- | ---- |
| server_id | `string` |

### FederateResponse

Fields

| Name | Type |
| ---- | ---- |
| token | [protocol.harmonytypes.v1.Token]({{< ref "protocol.harmonytypes.v1.md" >}}#token) |

### KeyRequest

Fields

| Name | Type |
| ---- | ---- |

### KeyResponse

Fields

| Name | Type |
| ---- | ---- |
| key | `bytes` |

### LoginFederatedRequest

Fields

| Name | Type |
| ---- | ---- |
| auth_token | [protocol.harmonytypes.v1.Token]({{< ref "protocol.harmonytypes.v1.md" >}}#token) |
| server_id | `string` |

### LoginFederatedResponse

Fields

| Name | Type |
| ---- | ---- |
| session | [protocol.auth.v1.Session](#session) |

### TokenData

Fields

| Name | Type |
| ---- | ---- |
| user_id | `uint64` |
| server_id | `string` |
| username | `string` |
| avatar | `string` |

### CheckLoggedInRequest

Fields

| Name | Type |
| ---- | ---- |

### CheckLoggedInResponse

Fields

| Name | Type |
| ---- | ---- |

### AuthStep.Choice

Fields

| Name | Type |
| ---- | ---- |
| title | `string` |
| options | `string` |

### AuthStep.Form

Fields

| Name | Type |
| ---- | ---- |
| title | `string` |
| fields | [protocol.auth.v1.AuthStep.Form.FormField](#authstep-form-formfield) |

### AuthStep.Waiting

Fields

| Name | Type |
| ---- | ---- |
| title | `string` |
| description | `string` |

### AuthStep.Form.FormField

Fields

| Name | Type |
| ---- | ---- |
| name | `string` |
| type | `string` |

### NextStepRequest.Choice

Fields

| Name | Type |
| ---- | ---- |
| choice | `string` |

### NextStepRequest.FormFields

Fields

| Name | Type |
| ---- | ---- |
| bytes | `bytes` |
| string | `string` |
| number | `int64` |

### NextStepRequest.Form

Fields

| Name | Type |
| ---- | ---- |
| fields | [protocol.auth.v1.NextStepRequest.FormFields](#nextsteprequest-formfields) |

## Services 

### AuthService

#### Unary Methods

| Name | Request | Response |
| ---- | ------- | -------- |
|Federate|[protocol.auth.v1.FederateRequest](#federaterequest)|[protocol.auth.v1.FederateResponse](#federateresponse)|
|LoginFederated|[protocol.auth.v1.LoginFederatedRequest](#loginfederatedrequest)|[protocol.auth.v1.LoginFederatedResponse](#loginfederatedresponse)|
|Key|[protocol.auth.v1.KeyRequest](#keyrequest)|[protocol.auth.v1.KeyResponse](#keyresponse)|
|BeginAuth|[protocol.auth.v1.BeginAuthRequest](#beginauthrequest)|[protocol.auth.v1.BeginAuthResponse](#beginauthresponse)|
|NextStep|[protocol.auth.v1.NextStepRequest](#nextsteprequest)|[protocol.auth.v1.NextStepResponse](#nextstepresponse)|
|StepBack|[protocol.auth.v1.StepBackRequest](#stepbackrequest)|[protocol.auth.v1.StepBackResponse](#stepbackresponse)|
|CheckLoggedIn|[protocol.auth.v1.CheckLoggedInRequest](#checkloggedinrequest)|[protocol.auth.v1.CheckLoggedInResponse](#checkloggedinresponse)|

#### Streaming Methods

| Name | Client Streams | Server Streams |
| ---- | -------------- | -------------- |
