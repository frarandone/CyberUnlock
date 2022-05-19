extends TextureButton


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_OkButton_pressed():
	self.get_parent().set_visible(false)
	if self.get_parent().name == 'Panel4060':
		for letter in ['U', 'N', 'O', 'T', 'R', 'E', 'S']:
			self.get_parent().get_node('/root/Node2D/Background/Panels/Panel4060/'+letter).set_visible(false)
	
