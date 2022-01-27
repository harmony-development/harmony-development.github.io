---
title: "Reference: protocol.bots.v1"
---
## Bot Invite Codes

Bot invite codes work similarly to HMC URLs.
They can either be server+code or just code,
to refer to a bot on the current homeserver.

The format for an invite code is:
> [url[:port]/]code

where `code` is a purely alphanumeric code.

# Services 

## <span class="codicon codicon-symbol-class symbol-class"></span>BotsService

The Bots service allows the management of bot accounts
<span class="h3" aria-level="3">Fields</span>
#### <span class="codicon codicon-symbol-method symbol-method"></span>MyBots
[protocol.bots.v1.MyBotsRequest](#mybotsrequest) -> [protocol.bots.v1.MyBotsResponse](#mybotsresponse)

Gets the list of bots that you own

<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>MyBotsRequest
Request type for MyBots

This item has no fields.


<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>MyBotsResponse
Response type for MyBots

<span class="h5" aria-level="5">Fields</span>
###### <span class="codicon codicon-symbol-field symbol-field"></span>bots
Type: repeated [protocol.bots.v1.Bot](#bot)

The list of owned bots

------
#### <span class="codicon codicon-symbol-method symbol-method"></span>GetBot
[protocol.bots.v1.GetBotRequest](#getbotrequest) -> [protocol.bots.v1.GetBotResponse](#getbotresponse)

Gets information on a given bot

<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>GetBotRequest
Request type for GetBot

<span class="h5" aria-level="5">Fields</span>
###### <span class="codicon codicon-symbol-field symbol-field"></span>bot_id
Type: optional `uint64`

The bot to get the information of


<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>GetBotResponse
Response type for GetBot

<span class="h5" aria-level="5">Fields</span>
###### <span class="codicon codicon-symbol-field symbol-field"></span>bot
Type: optional [protocol.bots.v1.Bot](#bot)

The requested bot

------
#### <span class="codicon codicon-symbol-method symbol-method"></span>CreateBot
[protocol.bots.v1.CreateBotRequest](#createbotrequest) -> [protocol.bots.v1.CreateBotResponse](#createbotresponse)

Creates a new bot account

<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>CreateBotRequest
Request type for CreateBot

<span class="h5" aria-level="5">Fields</span>
###### <span class="codicon codicon-symbol-field symbol-field"></span>display_name
Type: optional `string`

The bot's display name
###### <span class="codicon codicon-symbol-field symbol-field"></span>avatar_url
Type: optional `string`

The bot's avatar URL
###### <span class="codicon codicon-symbol-field symbol-field"></span>invite
Type: optional `string`

The bot's invite code, if it has one


<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>CreateBotResponse
Response type for CreateBot

<span class="h5" aria-level="5">Fields</span>
###### <span class="codicon codicon-symbol-field symbol-field"></span>bot_id
Type: optional `uint64`

The newly minted ID of the bot

------
#### <span class="codicon codicon-symbol-method symbol-method"></span>EditBot
[protocol.bots.v1.EditBotRequest](#editbotrequest) -> [protocol.bots.v1.EditBotResponse](#editbotresponse)

Modifies a bot account that you own

<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>EditBotRequest
Request type for EditBot

<span class="h5" aria-level="5">Fields</span>
###### <span class="codicon codicon-symbol-field symbol-field"></span>bot_id
Type: optional `uint64`

The ID of the bot to edit
###### <span class="codicon codicon-symbol-field symbol-field"></span>new_display_name
Type: optional `string`

The bot's new display name
###### <span class="codicon codicon-symbol-field symbol-field"></span>new_avatar_url
Type: optional `string`

The bot's new avatar URL
###### <span class="codicon codicon-symbol-field symbol-field"></span>invite
Type: optional `string`

The bot's new invite code


<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>EditBotResponse
Response type for EditBot

This item has no fields.

------
#### <span class="codicon codicon-symbol-method symbol-method"></span>DeleteBot
[protocol.bots.v1.DeleteBotRequest](#deletebotrequest) -> [protocol.bots.v1.DeleteBotResponse](#deletebotresponse)

Deletes a bot account that you own

<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>DeleteBotRequest
Request type for DeleteBot

<span class="h5" aria-level="5">Fields</span>
###### <span class="codicon codicon-symbol-field symbol-field"></span>bot_id
Type: optional `uint64`

The bot to delete


<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>DeleteBotResponse
Response type for DeleteBot

This item has no fields.

------
#### <span class="codicon codicon-symbol-method symbol-method"></span>Policies
[protocol.bots.v1.PoliciesRequest](#policiesrequest) -> [protocol.bots.v1.PoliciesResponse](#policiesresponse)

Server policies for bot accounts that the client
may display in its UI or restrict actions to prevent
request errors

<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>PoliciesRequest
Request type for Policies

This item has no fields.


<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>PoliciesResponse
Response type for Policies

<span class="h5" aria-level="5">Fields</span>
###### <span class="codicon codicon-symbol-field symbol-field"></span>max_bots
Type: optional `uint32`

How many bots an individual account is allowed to own

------
#### <span class="codicon codicon-symbol-method symbol-method"></span>AddBot
[protocol.bots.v1.AddBotRequest](#addbotrequest) -> [protocol.bots.v1.AddBotResponse](#addbotresponse)

Requests a bot to add itself to the guild.

For cross-server bots, this dispatches a UserInvited
request across sync, inviting the bot to the guild.

<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>AddBotRequest
Request type for AddBot

<span class="h5" aria-level="5">Fields</span>
###### <span class="codicon codicon-symbol-field symbol-field"></span>guild_id
Type: optional `uint64`

The guild to add the bot to
###### <span class="codicon codicon-symbol-field symbol-field"></span>invite_code
Type: optional `string`

The bot's invite code.


<br/>

##### <span class="codicon codicon-symbol-structure symbol-structure"></span>AddBotResponse
Response type for AddBot

This item has no fields.

# Standalone Message Types 

## <span class="codicon codicon-symbol-structure symbol-structure"></span>Bot
A description of a bot account

<span class="h3" aria-level="3">Fields</span>
### <span class="codicon codicon-symbol-field symbol-field"></span>bot_id
Type: optional `uint64`

The ID of the bot
### <span class="codicon codicon-symbol-field symbol-field"></span>display_name
Type: optional `string`

The bot's display name
### <span class="codicon codicon-symbol-field symbol-field"></span>avatar_url
Type: optional `string`

The bot's avatar URL
### <span class="codicon codicon-symbol-field symbol-field"></span>invite
Type: optional `string`

The bot's invite code, if it has one

------
