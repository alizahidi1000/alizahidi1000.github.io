extends Node3D


func _on_button_pressed() -> void:
	$ResourcePreloader/SubViewportContainer/SubViewport/AnimationPlayer.stop()
	$ResourcePreloader/SubViewportContainer/SubViewport/AnimationPlayer.play("new_animation")
	$ResourcePreloader/SubViewportContainer/SubViewport/AnimationPlayer.seek(0, true)
