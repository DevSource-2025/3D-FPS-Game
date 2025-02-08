extends Area3D

func _on_body_entered(body):
	# Check if the collided body is the player
	if body.is_in_group("player"):
		$AudioStreamPlayer.play()
		Global.last_weapon = "gun"
		Global.current_weapon = "gun"
		set_deferred("monitoring", false)


func _on_audio_stream_player_finished():
	queue_free()
