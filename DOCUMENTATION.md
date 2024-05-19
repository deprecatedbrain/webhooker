# Webhooker Documentation

## Constructor

`webhooker.new(webhook_url: string)`

Creates a new instance of the webhooker with the specified webhook URL.

**PARAMATERS**

`webhook_url` (string): The URL to which the webhook messages will be sent.

**RETURNS**

A new "webhook" instance

**USAGE**
```lua
local webhooker = require(path.to.webhooker)
local myWebhooker = webhooker.new("https://example.com/webhook")
```

## Methods

`webhooker:sendMessage(payload: webhook_payload)`

Sends a message to the webhook URL with the specified payload.

**PARAMATERS**

`payload` (webhook_payload): The data to be sent to the webhook in JSON format.

**RETURNS**

`success` (boolean): true if the request was successful, false otherwise.

`response` (any): The response from the request if successful, or the error message if the request failed.

## Types

All types are from Discord's API.

*webhook_payload*
```
content:     string?,
username:    string?,
avatar_url:  string?,
tts:         boolean?,
embeds:      {embed}?,
thread_name: string?
```

*embed*
```
title:       string?,
description: string?,
url:         string?,
timestamp:   number?,
footer:      embed_footer?,
image:       embed_image?,
thumbnail:   embed_thumbnail?,
video:       embed_video?,
provider:    embed_provider?,
author:      embed_author?,
fields:      table of `embed_field`s?
```

*embed_footer*
```
text:           string,
icon_url:       string?,
proxy_icon_url: string?
```

*embed_field*
```
name:   string,
value:  string,
inline: boolean?
```

*embed_author*
```
name:           string,
url:            string?,
icon_url:       string?,
proxy_icon_url: string?
```

*embed_image, embed_thumbnail, embed_video*
```
url:       string?,
proxy_url: string?,
height:    number?,
width:     number?
```

*embed_provider*
```
name: string?,
url:  string?
```
