extends KinematicBody2D
class_name Actor

const FLOOR_NORMAL: = Vector2.UP

export var speed: = Vector2(300.0,1000.0)
export var gravity: = 3000.0

var _velocity: = Vector2.ZERO

#var _velocity = Vector2(300,0) #move 300 pixels on the x axis
#func _physics_process(delta: float) -> void: #updates every frame
#	_velocity.y +=gravity*delta#delta is the time between frames. Use to avoid weirdness if the framerate fluctuates
#	if _velocity.y > speed.y:
#		_velocity.y=speed.y
#	_velocity = move_and_slide(_velocity)
	