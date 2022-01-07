---
title: "Reference: protocol.harmonytypes.v1"
---
# Standalone Message Types 

## <span class="codicon codicon-symbol-structure symbol-structure"></span>HarmonyMethodMetadata
Metadata for methods. These are set in individual RPC endpoints and are
typically used by servers.

<span class="h3" aria-level="3">Fields</span>
### <span class="codicon codicon-symbol-field symbol-field"></span>requires_authentication
Type: optional `bool`

whether the method requires authentication.
### <span class="codicon codicon-symbol-field symbol-field"></span>requires_local
Type: optional `bool`

whether the method allows federation or not.
### <span class="codicon codicon-symbol-field symbol-field"></span>requires_permission_node
Type: optional `string`

the permission nodes required to invoke the method.
### <span class="codicon codicon-symbol-field symbol-field"></span>requires_owner
Type: optional `bool`

whether the method requires owner

------
## <span class="codicon codicon-symbol-structure symbol-structure"></span>Anything
Anything holds anything

<span class="h3" aria-level="3">Fields</span>
### <span class="codicon codicon-symbol-field symbol-field"></span>kind
Type: optional `string`

Kind is the kind of the message
### <span class="codicon codicon-symbol-field symbol-field"></span>body
Type: optional `bytes`

Body is the serialised bytes

------
## <span class="codicon codicon-symbol-structure symbol-structure"></span>Metadata
Metadata type used by many messages.

<span class="h3" aria-level="3">Fields</span>
### <span class="codicon codicon-symbol-field symbol-field"></span>kind
Type: optional `string`

Kind of this metadata.
### <span class="codicon codicon-symbol-field symbol-field"></span>extension
Type: repeated [protocol.harmonytypes.v1.Metadata.ExtensionEntry](#metadataextensionentry)

A map containing information.

------
## <span class="codicon codicon-symbol-structure symbol-structure"></span>Metadata.ExtensionEntry


<span class="h3" aria-level="3">Fields</span>
### <span class="codicon codicon-symbol-field symbol-field"></span>key
Type: optional `string`


### <span class="codicon codicon-symbol-field symbol-field"></span>value
Type: optional [protocol.harmonytypes.v1.Anything](#anything)



------
## <span class="codicon codicon-symbol-structure symbol-structure"></span>Error
Error type that will be returned by servers.

<span class="h3" aria-level="3">Fields</span>
### <span class="codicon codicon-symbol-field symbol-field"></span>identifier
Type: optional `string`

The identifier of this error, can be used as an i18n key.
### <span class="codicon codicon-symbol-field symbol-field"></span>human_message
Type: optional `string`

A (usually english) human message for this error.
### <span class="codicon codicon-symbol-field symbol-field"></span>more_details
Type: optional `bytes`

More details about this message. Is dependent on the endpoint.

------
## <span class="codicon codicon-symbol-structure symbol-structure"></span>Token
Token that will be used for authentication.

<span class="h3" aria-level="3">Fields</span>
### <span class="codicon codicon-symbol-field symbol-field"></span>sig
Type: optional `bytes`

Ed25519 signature of the following serialized protobuf data, signed
with a private key. Which private key used to sign will be described
in the documentation.

Has to be 64 bytes long, otherwise it will be rejected.
### <span class="codicon codicon-symbol-field symbol-field"></span>data
Type: optional `bytes`

Serialized protobuf data.
The protobuf type of this serialized data is dependent on the API endpoint
used.

------
## <span class="codicon codicon-symbol-structure symbol-structure"></span>Empty
An empty message

This item has no fields.

------
## <span class="codicon codicon-symbol-structure symbol-structure"></span>ItemPosition
An object representing an item position between two other items.

<span class="h3" aria-level="3">Fields</span>
### <span class="codicon codicon-symbol-field symbol-field"></span>item_id
Type: optional `uint64`

The ID of the item the position is relative to
### <span class="codicon codicon-symbol-field symbol-field"></span>position
Type: UNHANDLED | TYPE

Whether the position is before or after the given ID

# Enums 

## <span class="codicon codicon-symbol-enum symbol-enum"></span>Position


### <span class="codicon codicon-symbol-enum-member symbol-enum-member"></span>POSITION_BEFORE_UNSPECIFIED


### <span class="codicon codicon-symbol-enum-member symbol-enum-member"></span>POSITION_AFTER


