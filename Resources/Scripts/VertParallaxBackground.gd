extends ParallaxBackground


export var camera_velocity: Vector2 = Vector2( 0, 20 );
export var original_offset: Vector2 = get_scroll_offset()
export var switch_it = 0

func _ready():
	pass # Replace with function body.

func _process(delta: float) -> void:
	var new_offset: Vector2 = get_scroll_offset() + camera_velocity * delta
	set_scroll_offset( new_offset ); 
	if(new_offset.direction_to(original_offset) ): 
		if(new_offset >= Vector2(0,8350) ):
			camera_velocity = Vector2( 0, -20 )
			switch_it = -1; 
		elif(new_offset <= Vector2(0,100) ):
			switch_it = 1
			camera_velocity = Vector2( 0, 20 ) 
		else:
			if (switch_it >=0):
				camera_velocity = Vector2( 0, 20 )				
			if (switch_it <0):
				camera_velocity = Vector2( 0, -20 )			 
	pass;

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
