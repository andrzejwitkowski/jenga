extends RigidBody3D

var cnt: int = 0
var p: int = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.
#
func _integrate_forces(state: PhysicsDirectBodyState3D) -> void:
	if Input.is_action_just_pressed("drop"):
		state.linear_velocity = Vector3(20.0, 0 , 10.5)

func _physics_process(delta: float) -> void:
	if Input.is_action_just_pressed("freeze"):
		freeze = !freeze

func _on_sleeping_state_changed() -> void:
	print("Sleeping: ", sleeping)
