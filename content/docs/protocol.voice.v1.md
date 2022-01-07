---
title: "Reference: protocol.voice.v1"
---
# Standalone Message Types 

## <span class="codicon codicon-symbol-structure symbol-structure"></span>UserConsumerOptions
Data containing all the necessary information to
create a consumer for a user in a voice channel

This corresponds to https://mediasoup.org/documentation/v3/mediasoup-client/api/#ConsumerOptions on client:
- `consumer_id` -> `id`
- `producer_id` -> `producerId`
- `rtp_parameters` -> `rtpParameters`
- and `kind` should be set to "audio".

<span class="h3" aria-level="3">Fields</span>
### <span class="codicon codicon-symbol-field symbol-field"></span>user_id
Type: optional `uint64`

User ID of the user.
### <span class="codicon codicon-symbol-field symbol-field"></span>producer_id
Type: optional `string`

Producer ID of the producer being consumed.
### <span class="codicon codicon-symbol-field symbol-field"></span>consumer_id
Type: optional `string`

Consumer ID for the user's producer consumer.
### <span class="codicon codicon-symbol-field symbol-field"></span>rtp_parameters
Type: optional `string`

RTP paramaters for the user's audio track. Corresponds to `RtpParameters` in mediasoup's TypeScript API.

------
## <span class="codicon codicon-symbol-structure symbol-structure"></span>TransportOptions
Object containing all the necessary information about transport options required
from the server to establish transport connection on the client

This corresponds to https://mediasoup.org/documentation/v3/mediasoup-client/api/#TransportOptions on client:
- `id` -> `id`
- `ice_parameters` -> `iceParameters`
- `dtls_parameters` -> `dtlsParameters`
- `ice_candidates` -> `iceCandidates`

<span class="h3" aria-level="3">Fields</span>
### <span class="codicon codicon-symbol-field symbol-field"></span>id
Type: optional `string`

The transport ID.
### <span class="codicon codicon-symbol-field symbol-field"></span>dtls_parameters
Type: optional `string`

DTLS paramaters in JSON. Corresponds to `DtlsParameters` in mediasoup's TypeScript API.
### <span class="codicon codicon-symbol-field symbol-field"></span>ice_candidates
Type: repeated `string`

ICE candidates in JSON. Corresponds to `IceCandidate` in mediasoup's TypeScript API.
### <span class="codicon codicon-symbol-field symbol-field"></span>ice_parameters
Type: optional `string`

ICE paramaters in JSON. Corresponds to `IceParameters` in mediasoup's TypeScript API.

------
## <span class="codicon codicon-symbol-structure symbol-structure"></span>StreamMessageRequest
Used in `StreamMessage` endpoint.

<span class="h3" aria-level="3">Fields</span>
### <span class="codicon codicon-symbol-field symbol-field"></span>initialize
Type: optional [protocol.voice.v1.StreamMessageRequest.Initialize](#streammessagerequestinitialize)

Sent to initialize the WS and receive necessary information
### <span class="codicon codicon-symbol-field symbol-field"></span>prepare_for_join_channel
Type: optional [protocol.voice.v1.StreamMessageRequest.PrepareForJoinChannel](#streammessagerequestprepareforjoinchannel)

Sent to prepare for joining channel
### <span class="codicon codicon-symbol-field symbol-field"></span>join_channel
Type: optional [protocol.voice.v1.StreamMessageRequest.JoinChannel](#streammessagerequestjoinchannel)

Sent to join a channel
### <span class="codicon codicon-symbol-field symbol-field"></span>resume_consumer
Type: optional [protocol.voice.v1.StreamMessageRequest.ResumeConsumer](#streammessagerequestresumeconsumer)

Sent to resume a consumer

------
## <span class="codicon codicon-symbol-structure symbol-structure"></span>StreamMessageRequest.Initialize


<span class="h3" aria-level="3">Fields</span>
### <span class="codicon codicon-symbol-field symbol-field"></span>guild_id
Type: optional `uint64`


### <span class="codicon codicon-symbol-field symbol-field"></span>channel_id
Type: optional `uint64`



------
## <span class="codicon codicon-symbol-structure symbol-structure"></span>StreamMessageRequest.PrepareForJoinChannel


<span class="h3" aria-level="3">Fields</span>
### <span class="codicon codicon-symbol-field symbol-field"></span>rtp_capabilities
Type: optional `string`



------
## <span class="codicon codicon-symbol-structure symbol-structure"></span>StreamMessageRequest.JoinChannel


<span class="h3" aria-level="3">Fields</span>
### <span class="codicon codicon-symbol-field symbol-field"></span>rtp_paramaters
Type: optional `string`


### <span class="codicon codicon-symbol-field symbol-field"></span>producer_dtls_paramaters
Type: optional `string`


### <span class="codicon codicon-symbol-field symbol-field"></span>consumer_dtls_paramaters
Type: optional `string`



------
## <span class="codicon codicon-symbol-structure symbol-structure"></span>StreamMessageRequest.ResumeConsumer


<span class="h3" aria-level="3">Fields</span>
### <span class="codicon codicon-symbol-field symbol-field"></span>consumer_id
Type: optional `string`



------
## <span class="codicon codicon-symbol-structure symbol-structure"></span>StreamMessageResponse
Used in `StreamMessage` endpoint.

<span class="h3" aria-level="3">Fields</span>
### <span class="codicon codicon-symbol-field symbol-field"></span>initialized
Type: optional [protocol.voice.v1.StreamMessageResponse.Initialized](#streammessageresponseinitialized)

Sent when connection is started
### <span class="codicon codicon-symbol-field symbol-field"></span>prepared_for_join_channel
Type: optional [protocol.voice.v1.StreamMessageResponse.PreparedForJoinChannel](#streammessageresponsepreparedforjoinchannel)

Sent when preparing to join a channel is successful
### <span class="codicon codicon-symbol-field symbol-field"></span>joined_channel
Type: optional [protocol.voice.v1.StreamMessageResponse.JoinedChannel](#streammessageresponsejoinedchannel)

Sent when joining a channel is successful
### <span class="codicon codicon-symbol-field symbol-field"></span>user_joined
Type: optional [protocol.voice.v1.StreamMessageResponse.UserJoined](#streammessageresponseuserjoined)

Sent when another user joins the channel
### <span class="codicon codicon-symbol-field symbol-field"></span>user_left
Type: optional [protocol.voice.v1.StreamMessageResponse.UserLeft](#streammessageresponseuserleft)

Sent when another user leaves the channel

------
## <span class="codicon codicon-symbol-structure symbol-structure"></span>StreamMessageResponse.Initialized


<span class="h3" aria-level="3">Fields</span>
### <span class="codicon codicon-symbol-field symbol-field"></span>rtp_capabilities
Type: optional `string`



------
## <span class="codicon codicon-symbol-structure symbol-structure"></span>StreamMessageResponse.PreparedForJoinChannel


<span class="h3" aria-level="3">Fields</span>
### <span class="codicon codicon-symbol-field symbol-field"></span>consumer_transport_options
Type: optional [protocol.voice.v1.TransportOptions](#transportoptions)


### <span class="codicon codicon-symbol-field symbol-field"></span>producer_transport_options
Type: optional [protocol.voice.v1.TransportOptions](#transportoptions)



------
## <span class="codicon codicon-symbol-structure symbol-structure"></span>StreamMessageResponse.JoinedChannel


<span class="h3" aria-level="3">Fields</span>
### <span class="codicon codicon-symbol-field symbol-field"></span>other_users
Type: repeated [protocol.voice.v1.UserConsumerOptions](#userconsumeroptions)



------
## <span class="codicon codicon-symbol-structure symbol-structure"></span>StreamMessageResponse.UserJoined


<span class="h3" aria-level="3">Fields</span>
### <span class="codicon codicon-symbol-field symbol-field"></span>data
Type: optional [protocol.voice.v1.UserConsumerOptions](#userconsumeroptions)



------
## <span class="codicon codicon-symbol-structure symbol-structure"></span>StreamMessageResponse.UserLeft


<span class="h3" aria-level="3">Fields</span>
### <span class="codicon codicon-symbol-field symbol-field"></span>user_id
Type: optional `uint64`



# Services 

## <span class="codicon codicon-symbol-class symbol-class"></span>VoiceService

Harmony service for facilitating voice operations using WebRTC.

# Usage (for client)

0. Call StreamMessage to be able to send RTC commands to server
1. Send Initialize over stream with guild_id and channel_id of the request set to the channel you want to join
2. Init device by using the RTP capabilities sent in the response message, which should be Initialized
3. Send PrepareForJoinChannel over stream with client rtp capabilities
4. Wait for PreparedForJoinChannel, which contains transport options
5. Connect both transports using the transport options on client
6. Send JoinChannel over stream containing RTP paramaters for your Audio track
and DTLS paramaters for both consumer and producer
7. Wait for JoinedChannel, which confirms you have successfully joined the voice channel;
handle other_users which will be described in 8 (UserJoined handling)
8. Handle UserJoined and UserLeft events appropiately
  - For UserJoined; use the received consumer ID, producer ID and RTP parameters on your
    consumer transport to consume the producer, afterwards send ResumeConsumer message
    with the consumer ID, then if that's successful add the track to a `user ID -> Track` map
  - For UserLeft, remove the user track from the `user ID -> Track` map 

## How this looks for servers

0. Receives StreamMessage, starts the socket
1. Waits for Initialize
2. Sends Initialized over stream with it's RTP capabilities
3. Receives PrepareForJoinChannel with client RTP capabilities
4. Sends PreparedForJoinChannel over stream with consumer and producer transport options
5. Receives JoinChannel, checks for DTLS parameters for consumer and producer transports
and uses the RTP paramaters to create a producer for the client
6. Sends JoinedChannel over stream with the created producer ID and all other users' data (UserData)
7. When another user does 1 to 7, sends UserJoined over stream to all other users;
when a user leaves the channel (when their stream ends), sends UserLeft to all other users
8. When receiving a ResumeConsumer message, unpauses the consumer corresponding to the consumer ID
<span class="h3" aria-level="3">Fields</span>
#### <span class="codicon codicon-symbol-method symbol-method"></span>StreamMessage
streaming [protocol.voice.v1.StreamMessageRequest](#streammessagerequest) -> streaming [protocol.voice.v1.StreamMessageResponse](#streammessageresponse)

Endpoint to stream messages between client and server.

- One StreamMessage stream corresponds to being in one voice channel.
- It's recommended that users should not be able to be in more than one voice channel,
but this limitation is left up to the server implementation.
