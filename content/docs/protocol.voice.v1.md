---
title: "Reference: protocol.voice.v1"
---
## Message Types 

### UserConsumerOptions
Data containing all the necessary information to
create a consumer for a user in a voice channel

This corresponds to https://mediasoup.org/documentation/v3/mediasoup-client/api/#ConsumerOptions on client:
- `consumer_id` -> `id`
- `producer_id` -> `producerId`
- `rtp_parameters` -> `rtpParameters`
- and `kind` should be set to "audio".

#### Fields


##### user_id (optional  `uint64`)
User ID of the user.
##### producer_id (optional  `string`)
Producer ID of the producer being consumed.
##### consumer_id (optional  `string`)
Consumer ID for the user's producer consumer.
##### rtp_parameters (optional  `string`)
RTP paramaters for the user's audio track. Corresponds to `RtpParameters` in mediasoup's TypeScript API.

### TransportOptions
Object containing all the necessary information about transport options required
from the server to establish transport connection on the client

This corresponds to https://mediasoup.org/documentation/v3/mediasoup-client/api/#TransportOptions on client:
- `id` -> `id`
- `ice_parameters` -> `iceParameters`
- `dtls_parameters` -> `dtlsParameters`
- `ice_candidates` -> `iceCandidates`

#### Fields


##### id (optional  `string`)
The transport ID.
##### dtls_parameters (optional  `string`)
DTLS paramaters in JSON. Corresponds to `DtlsParameters` in mediasoup's TypeScript API.
##### ice_candidates (repeated  `string`)
ICE candidates in JSON. Corresponds to `IceCandidate` in mediasoup's TypeScript API.
##### ice_parameters (optional  `string`)
ICE paramaters in JSON. Corresponds to `IceParameters` in mediasoup's TypeScript API.

### StreamMessageRequest
Used in `StreamMessage` endpoint.

#### Fields


##### initialize (optional  [protocol.voice.v1.StreamMessageRequest.Initialize](#streammessagerequestinitialize))
Sent to initialize the WS and receive necessary information
##### prepare_for_join_channel (optional  [protocol.voice.v1.StreamMessageRequest.PrepareForJoinChannel](#streammessagerequestprepareforjoinchannel))
Sent to prepare for joining channel
##### join_channel (optional  [protocol.voice.v1.StreamMessageRequest.JoinChannel](#streammessagerequestjoinchannel))
Sent to join a channel
##### resume_consumer (optional  [protocol.voice.v1.StreamMessageRequest.ResumeConsumer](#streammessagerequestresumeconsumer))
Sent to resume a consumer

### StreamMessageRequest.Initialize


#### Fields


##### guild_id (optional  `uint64`)

##### channel_id (optional  `uint64`)


### StreamMessageRequest.PrepareForJoinChannel


#### Fields


##### rtp_capabilities (optional  `string`)


### StreamMessageRequest.JoinChannel


#### Fields


##### rtp_paramaters (optional  `string`)

##### producer_dtls_paramaters (optional  `string`)

##### consumer_dtls_paramaters (optional  `string`)


### StreamMessageRequest.ResumeConsumer


#### Fields


##### consumer_id (optional  `string`)


### StreamMessageResponse
Used in `StreamMessage` endpoint.

#### Fields


##### initialized (optional  [protocol.voice.v1.StreamMessageResponse.Initialized](#streammessageresponseinitialized))
Sent when connection is started
##### prepared_for_join_channel (optional  [protocol.voice.v1.StreamMessageResponse.PreparedForJoinChannel](#streammessageresponsepreparedforjoinchannel))
Sent when preparing to join a channel is successful
##### joined_channel (optional  [protocol.voice.v1.StreamMessageResponse.JoinedChannel](#streammessageresponsejoinedchannel))
Sent when joining a channel is successful
##### user_joined (optional  [protocol.voice.v1.StreamMessageResponse.UserJoined](#streammessageresponseuserjoined))
Sent when another user joins the channel
##### user_left (optional  [protocol.voice.v1.StreamMessageResponse.UserLeft](#streammessageresponseuserleft))
Sent when another user leaves the channel

### StreamMessageResponse.Initialized


#### Fields


##### rtp_capabilities (optional  `string`)


### StreamMessageResponse.PreparedForJoinChannel


#### Fields


##### consumer_transport_options (optional  [protocol.voice.v1.TransportOptions](#transportoptions))

##### producer_transport_options (optional  [protocol.voice.v1.TransportOptions](#transportoptions))


### StreamMessageResponse.JoinedChannel


#### Fields


##### other_users (repeated  [protocol.voice.v1.UserConsumerOptions](#userconsumeroptions))


### StreamMessageResponse.UserJoined


#### Fields


##### data (optional  [protocol.voice.v1.UserConsumerOptions](#userconsumeroptions))


### StreamMessageResponse.UserLeft


#### Fields


##### user_id (optional  `uint64`)


## Services 

### VoiceService

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
#### Methods

##### StreamMessage
streaming [protocol.voice.v1.StreamMessageRequest](#streammessagerequest) -> streaming [protocol.voice.v1.StreamMessageResponse](#streammessageresponse)

Endpoint to stream messages between client and server.

- One StreamMessage stream corresponds to being in one voice channel.
- It's recommended that users should not be able to be in more than one voice channel,
but this limitation is left up to the server implementation.
