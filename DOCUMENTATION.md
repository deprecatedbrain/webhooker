# Webhooker Documentation
***TYPES***

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
