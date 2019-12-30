extends "res://src/Actors/Actor.gd"

func _ready() -> void: #setup
	set_physics_process(false) #don't run unless you can see it.
	_velocity.x = -speed.x #start by moving left

func _on_stompDetector_body_entered(body: PhysicsBody2D) -> void:
	if body.global_position.y>get_node("stompDetector").global_position.y: #if player is below stomp detector
		return
	get_node("CollisionShape2D").disabled = true
	queue_free() #delete enemy
	


func _physics_process(delta: float) -> void:
	_velocity.y +=gravity*delta
	if is_on_wall():
		_velocity.x *= -1
	_velocity.y = move_and_slide(_velocity, FLOOR_NORMAL).y


