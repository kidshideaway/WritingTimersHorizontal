extends ParallaxBackground
 

export var camera_velocity_layer3: Vector2 = Vector2( -40, 0 );
 
func _ready():
	pass # Replace with function body.

func _process(delta: float) -> void:
	var new_offset: Vector2 = get_scroll_offset() + camera_velocity_layer3 * delta
	set_scroll_offset( new_offset )
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
