export type embed_footer = {
	text: string,
	icon_url: string?,
	proxy_icon_url: string?
}

export type embed_image = {
	url: string?,
	proxy_url: string?,
	height: number?,
	width: number?
}

export type embed_thumbnail = {
	url: string?,
	proxy_url: string?,
	height: number?,
	width: number?
}

export type embed_video = {
	url: string?,
	proxy_url: string?,
	height: number?,
	width: number?
}

export type embed_provider = {
	name: string?,
	url: string?
}

export type embed_author = {
	name: string,
	url: string?,
	icon_url: string?,
	proxy_icon_url: string?
}

export type embed_field = {
	name: string,
	value: string,
	inline: boolean?
}

export type embed = {
	title: string?,
	description: string?,
	url: string?,
	timestamp: number?,
	footer: embed_footer?,
	image: embed_image?,
	thumbnail: embed_thumbnail?,
	video: embed_video?,
	provider: embed_provider?,
	author: embed_author?,
	fields: {}?
}

export type webhook_payload = {
	content: string?,
	username: string?,
	avatar_url: string?,
	tts: boolean?,
	embeds: {}?,
	thread_name: string?
}

return nil
