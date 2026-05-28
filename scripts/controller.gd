extends Node2D

@export var player: CharacterBody2D
var inputHorizontalDirection : float
 # Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	inputHorizontalDirection = Input.get_axis("left", "right")
	if Input.is_action_just_pressed("jump"):
		player.jump()

	player.moveDirection.x = inputHorizontalDirection
	pass
