extends CharacterBody2D

@export var speed = 300.0

func _physics_process(delta):
	var direction = Input.get_vector(
		"ui_left",
		"ui_right",
		"ui_up",
		"ui_down"
	)

	velocity = direction * speed
	move_and_slide()

	# Horizontal wrapping
	if position.x < -100:
		position.x = 1252

	if position.x > 1252:
		position.x = -100

	# Vertical wrapping
	if position.y < -100:
		position.y = 748

	if position.y > 748:
		position.y = -100
