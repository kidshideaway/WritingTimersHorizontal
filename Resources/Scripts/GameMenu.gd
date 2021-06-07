extends Control

func _ready(): 
	pass  
 
func make_visible():
	print ("Menu (self): ", self) 
	self.show();
	var check = self.check_visiblity(); 
	print ("make_visible check (self): ", check) 
	pass 
	
func make_invisible(): 
	print ("Menu (self): ", self) 
	self.hide();	
	var check = self.check_visiblity(); 
	print ("make_invisible check (self): ", check) 
	pass  
	
func check_visiblity():
	if self.visible:
		return(1)
	else:
		return(0)
	pass;