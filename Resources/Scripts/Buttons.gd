extends Button

onready var new_minutes = 0;
#autoload 
#onready var Buttons = get_node("/root/Buttons");
#onready var GameMenu = get_node("/root/GameMenu");
onready var TimerApp = get_node("/root/TimerApp");  

#onready var _Background_Image =  get_node("/root/TimerNode/Viewport_Container/Viewport_Main/BG_Image"); 
#onready var _GetViewportNode = get_node("/root/TimerNode/Viewport_Container/Viewport_Main"); 
#onready var _TimerFrame =  get_node("/root/TimerNode/TimerFrame_Image");

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
	
func _on_tick(new_minutes):  
	print("Button: _on_tick: new_minutes: ",new_minutes);
	TimerApp.status = 0;
	print("Button: _on_tick: update_minutes: ",new_minutes);
	TimerApp.update_minutes(new_minutes);
	print("Button: _on_tick: switch_GameMenu: ",new_minutes);
	TimerApp.switch_GameMenu(); 
	print("Button: _on_tick: _Start_Timer: ",new_minutes);
	TimerApp._Start_Timer();
	pass;
 
func _on_Minutes_5_Button_pressed(): 
	new_minutes = 5; 
	_on_tick(new_minutes); 
	pass;
	
func _on_Minutes_10_Button_pressed():
	new_minutes = 10;     
	_on_tick(new_minutes); 
	pass;
	
func _on_Minutes_15_Button_pressed():
	new_minutes = 15;    
	_on_tick(new_minutes);    
	pass;
	
func _on_Minutes_20_Button_pressed():
	new_minutes = 20;     
	_on_tick(new_minutes);   
	pass;
	
func _on_Minutes_30_Button_pressed():
	new_minutes = 30;   
	_on_tick(new_minutes); 
	pass;
	
func _on_Minutes_45_Button_pressed():
	new_minutes = 45;   
	_on_tick(new_minutes);    
	pass;
	
func _on_Minutes_60_Button_pressed():
	new_minutes = 60;   
	_on_tick(new_minutes);    
	pass; 
