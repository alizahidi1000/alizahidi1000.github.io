extends Node3D

@onready var audiostreamplayer = $ResourcePreloader/SubViewportContainer2/SubViewport2/AudioStreamPlayer2D
@onready var animationplayer = $ResourcePreloader/SubViewportContainer/SubViewport/AnimationPlayer
@onready var animationplayer2 = $AnimationPlayer

func _ready():
	$ResourcePreloader/SubViewportContainer/SubViewport/ColorRect3.visible = true
	$ResourcePreloader/SubViewportContainer2/SubViewport2/AudioStreamPlayer2D.playing = false
	animationplayer.play ("new_animation")
	animationplayer.speed_scale = 10
	animationplayer2.speed_scale = 10

func _on_animation_player_animation_finished(_anim_name = "new_animation"):
	$ResourcePreloader/SubViewportContainer/SubViewport/ColorRect3.visible = false
	animationplayer.speed_scale = 1.0
	animationplayer2.speed_scale = 1.0
	animationplayer.play("title")
	await get_tree().create_timer(1).timeout
	animationplayer.stop()
	animationplayer.seek (1, true)

func _on_button_pressed() -> void:
	animationplayer.stop()
	animationplayer.play("new_animation")
