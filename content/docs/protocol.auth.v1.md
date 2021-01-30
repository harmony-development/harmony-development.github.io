---
title: "Reference: protocol.auth.v1"
---
## Message Types 

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

### StepBackRequest

Fields

| Name | Type |
| ---- | ---- |
| auth_id | `string` |

### StreamStepsRequest

Fields

| Name | Type |
| ---- | ---- |
| auth_id | `string` |

### FederateRequest

Fields

| Name | Type |
| ---- | ---- |
| target | `string` |

### FederateReply

Fields

| Name | Type |
| ---- | ---- |
| token | `string` |
| nonce | `string` |

### KeyReply

Fields

| Name | Type |
| ---- | ---- |
| key | `string` |

### LoginFederatedRequest

Fields

| Name | Type |
| ---- | ---- |
| auth_token | `string` |
| domain | `string` |

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
|Federate|[protocol.auth.v1.FederateRequest](#federaterequest)|[protocol.auth.v1.FederateReply](#federatereply)|
|LoginFederated|[protocol.auth.v1.LoginFederatedRequest](#loginfederatedrequest)|[protocol.auth.v1.Session](#session)|
|Key|[google.protobuf.Empty]({{< ref "google.protobuf.md" >}}#empty)|[protocol.auth.v1.KeyReply](#keyreply)|
|BeginAuth|[google.protobuf.Empty]({{< ref "google.protobuf.md" >}}#empty)|[protocol.auth.v1.BeginAuthResponse](#beginauthresponse)|
|NextStep|[protocol.auth.v1.NextStepRequest](#nextsteprequest)|[protocol.auth.v1.AuthStep](#authstep)|
|StepBack|[protocol.auth.v1.StepBackRequest](#stepbackrequest)|[protocol.auth.v1.AuthStep](#authstep)|

#### Streaming Methods

| Name | Client Streams | Server Streams |
| ---- | -------------- | -------------- |
