extends Node2D


var up_down_move = 120
var current_pos = 0
var move_speed = 10

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var center_pos = get_viewport().size.y/2
	position.y = position.y*(1-delta*move_speed) + ((current_pos*up_down_move)+center_pos)*delta*move_speed


func _input(event: InputEvent) -> void:
	if Input.is_action_just_pressed("down"):
		current_pos += 1
	if Input.is_action_just_pressed("up"):
		current_pos -= 1
	if (current_pos > 1):
		current_pos = 1
	if (current_pos < -1):
		current_pos = -1
		
