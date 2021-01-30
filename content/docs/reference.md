# Protocol Documentation
<a name="top"></a>

## Table of Contents

- [voice/v1/voice.proto](#voice/v1/voice.proto)
    - [ClientSignal](#protocol.voice.v1.ClientSignal)
    - [ClientSignal.Answer](#protocol.voice.v1.ClientSignal.Answer)
    - [ClientSignal.Candidate](#protocol.voice.v1.ClientSignal.Candidate)
    - [Signal](#protocol.voice.v1.Signal)
    - [Signal.ICECandidate](#protocol.voice.v1.Signal.ICECandidate)
    - [Signal.Offer](#protocol.voice.v1.Signal.Offer)
  
    - [VoiceService](#protocol.voice.v1.VoiceService)
  
- [Scalar Value Types](#scalar-value-types)



<a name="voice/v1/voice.proto"></a>
<p align="right"><a href="#top">Top</a></p>

## voice/v1/voice.proto



<a name="protocol.voice.v1.ClientSignal"></a>

### ClientSignal



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| answer | [ClientSignal.Answer](#protocol.voice.v1.ClientSignal.Answer) |  |  |
| candidate | [ClientSignal.Candidate](#protocol.voice.v1.ClientSignal.Candidate) |  |  |






<a name="protocol.voice.v1.ClientSignal.Answer"></a>

### ClientSignal.Answer



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| answer | [string](#string) |  |  |






<a name="protocol.voice.v1.ClientSignal.Candidate"></a>

### ClientSignal.Candidate



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| candidate | [string](#string) |  |  |






<a name="protocol.voice.v1.Signal"></a>

### Signal



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| candidate | [Signal.ICECandidate](#protocol.voice.v1.Signal.ICECandidate) |  |  |
| offer | [Signal.Offer](#protocol.voice.v1.Signal.Offer) |  |  |






<a name="protocol.voice.v1.Signal.ICECandidate"></a>

### Signal.ICECandidate



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| candidate | [string](#string) |  |  |






<a name="protocol.voice.v1.Signal.Offer"></a>

### Signal.Offer



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| offer | [string](#string) |  |  |





 

 

 


<a name="protocol.voice.v1.VoiceService"></a>

### VoiceService


| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| Connect | [ClientSignal](#protocol.voice.v1.ClientSignal) stream | [Signal](#protocol.voice.v1.Signal) stream |  |

 



## Scalar Value Types

| .proto Type | Notes | C++ | Java | Python | Go | C# | PHP | Ruby |
| ----------- | ----- | --- | ---- | ------ | -- | -- | --- | ---- |
| <a name="double" /> double |  | double | double | float | float64 | double | float | Float |
| <a name="float" /> float |  | float | float | float | float32 | float | float | Float |
| <a name="int32" /> int32 | Uses variable-length encoding. Inefficient for encoding negative numbers – if your field is likely to have negative values, use sint32 instead. | int32 | int | int | int32 | int | integer | Bignum or Fixnum (as required) |
| <a name="int64" /> int64 | Uses variable-length encoding. Inefficient for encoding negative numbers – if your field is likely to have negative values, use sint64 instead. | int64 | long | int/long | int64 | long | integer/string | Bignum |
| <a name="uint32" /> uint32 | Uses variable-length encoding. | uint32 | int | int/long | uint32 | uint | integer | Bignum or Fixnum (as required) |
| <a name="uint64" /> uint64 | Uses variable-length encoding. | uint64 | long | int/long | uint64 | ulong | integer/string | Bignum or Fixnum (as required) |
| <a name="sint32" /> sint32 | Uses variable-length encoding. Signed int value. These more efficiently encode negative numbers than regular int32s. | int32 | int | int | int32 | int | integer | Bignum or Fixnum (as required) |
| <a name="sint64" /> sint64 | Uses variable-length encoding. Signed int value. These more efficiently encode negative numbers than regular int64s. | int64 | long | int/long | int64 | long | integer/string | Bignum |
| <a name="fixed32" /> fixed32 | Always four bytes. More efficient than uint32 if values are often greater than 2^28. | uint32 | int | int | uint32 | uint | integer | Bignum or Fixnum (as required) |
| <a name="fixed64" /> fixed64 | Always eight bytes. More efficient than uint64 if values are often greater than 2^56. | uint64 | long | int/long | uint64 | ulong | integer/string | Bignum |
| <a name="sfixed32" /> sfixed32 | Always four bytes. | int32 | int | int | int32 | int | integer | Bignum or Fixnum (as required) |
| <a name="sfixed64" /> sfixed64 | Always eight bytes. | int64 | long | int/long | int64 | long | integer/string | Bignum |
| <a name="bool" /> bool |  | bool | boolean | boolean | bool | bool | boolean | TrueClass/FalseClass |
| <a name="string" /> string | A string must always contain UTF-8 encoded or 7-bit ASCII text. | string | String | str/unicode | string | string | string | String (UTF-8) |
| <a name="bytes" /> bytes | May contain any arbitrary sequence of bytes. | string | ByteString | str | []byte | ByteString | string | String (ASCII-8BIT) |

