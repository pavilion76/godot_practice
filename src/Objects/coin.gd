extends Area2D


onready var anim_player: = get_node("AnimationPlayer")

func _on_body_entered(body: PhysicsBody2D) -> void:
	anim_player.play("fade out")
