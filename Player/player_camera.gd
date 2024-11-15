extends Node

@export var camera: Camera2D
@export var zoom_increment: float
@export var min_zoom: float
@export var max_zoom: float

func globalZoomIn():
	camera.zoom.x += zoom_increment
	camera.zoom.x = clamp(camera.zoom.x, min_zoom, max_zoom)
	camera.zoom.y += zoom_increment
	camera.zoom.y = clamp(camera.zoom.y, min_zoom, max_zoom)

func globalZoomOut():
	camera.zoom.x -= zoom_increment
	camera.zoom.x = clamp(camera.zoom.x, min_zoom, max_zoom)
	camera.zoom.y -= zoom_increment
	camera.zoom.y = clamp(camera.zoom.y, min_zoom, max_zoom)
