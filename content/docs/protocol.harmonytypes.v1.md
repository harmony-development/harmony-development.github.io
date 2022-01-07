---
title: "Reference: protocol.harmonytypes.v1"
---
## Message Types 

### HarmonyMethodMetadata
Metadata for methods. These are set in individual RPC endpoints and are
typically used by servers.

#### Fields


##### requires_authentication (optional  `bool`)
whether the method requires authentication.
##### requires_local (optional  `bool`)
whether the method allows federation or not.
##### requires_permission_node (optional  `string`)
the permission nodes required to invoke the method.
##### requires_owner (optional  `bool`)
whether the method requires owner

### Anything
Anything holds anything

#### Fields


##### kind (optional  `string`)
Kind is the kind of the message
##### body (optional  `bytes`)
Body is the serialised bytes

### Metadata
Metadata type used by many messages.

#### Fields


##### kind (optional  `string`)
Kind of this metadata.
##### extension (repeated  [protocol.harmonytypes.v1.Metadata.ExtensionEntry](#metadataextensionentry))
A map containing information.

### Metadata.ExtensionEntry


#### Fields


##### key (optional  `string`)

##### value (optional  [protocol.harmonytypes.v1.Anything](#anything))


### Error
Error type that will be returned by servers.

#### Fields


##### identifier (optional  `string`)
The identifier of this error, can be used as an i18n key.
##### human_message (optional  `string`)
A (usually english) human message for this error.
##### more_details (optional  `bytes`)
More details about this message. Is dependent on the endpoint.

### Token
Token that will be used for authentication.

#### Fields


##### sig (optional  `bytes`)
Ed25519 signature of the following serialized protobuf data, signed
with a private key. Which private key used to sign will be described
in the documentation.

Has to be 64 bytes long, otherwise it will be rejected.
##### data (optional  `bytes`)
Serialized protobuf data.
The protobuf type of this serialized data is dependent on the API endpoint
used.

### Empty
An empty message

This item has no fields.

### ItemPosition
An object representing an item position between two other items.

#### Fields


##### item_id (optional  `uint64`)
The ID of the item the position is relative to
##### position (UNHANDLED | TYPE)
Whether the position is before or after the given ID

## Enums 

### Position


#### POSITION_BEFORE_UNSPECIFIED


#### POSITION_AFTER


