extends Node3D

@onready var audiostreamplayer = $ResourcePreloader/SubViewportContainer2/SubViewport2/AudioStreamPlayer2D
@onready var animationplayer = $ResourcePreloader/SubViewportContainer/SubViewport/AnimationPlayer
@onready var animationplayer2 = $AnimationPlayer

func _ready():
	$ResourcePreloader/SubViewportContainer/SubViewport/ColorRect3.visible = true
	audiostreamplayer.playing = false
	animationplayer.play ("new_animation")
	animationplayer.speed_scale = 10
	animationplayer2.speed_scale = 10
	await get_tree().create_timer(5).timeout
	animationplayer.stop()
	animationplayer.speed_scale = 1.0
	animationplayer2.speed_scale = 1.0
	animationplayer.play("title")
	$ResourcePreloader/SubViewportContainer/SubViewport/ColorRect3.visible = false
	audiostreamplayer.playing = false
	await get_tree().create_timer(1).timeout
	animationplayer.stop()
	animationplayer.seek (1, true)

func _on_button_pressed() -> void:
	animationplayer.stop()
	animationplayer.seek (0, true)
	animationplayer.play("new_animation")
