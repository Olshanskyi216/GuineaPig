extends CharacterBody2D

var moveDirection: Vector2
@export var walkSpeed: float = 500
@export var jumpVelocity: float = -500
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass 

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func jump() -> void:
	if is_on_floor():
		velocity.y = jumpVelocity

func _physics_process(delta: float) -> void:
	velocity.x = moveDirection.x * walkSpeed
	velocity += get_gravity() * delta
	
	move_and_slide()
