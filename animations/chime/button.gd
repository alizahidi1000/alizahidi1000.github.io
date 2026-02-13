extends Node3D


func _on_button_pressed() -> void:
	$SubViewportContainer/SubViewport/AnimationPlayer.stop()
	$SubViewportContainer/SubViewport/AnimationPlayer.play("new_animation")
	$SubViewportContainer/SubViewport/AnimationPlayer.seek(0, true)
