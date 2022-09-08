extends LineEdit

var code
var prefix
var msg
#var prefixes = ['tec', 'sys', 'cyb', 'hac', 'ufo', 'squ', 'non', 'cob', 'boo', 'wor', 'cod']

func _ready():
	connect("focus_entered", self, "js_text_entry")

func js_text_entry():
	text = JavaScript.eval(
			"prompt('%s', '%s');" % ["Inserisci il codice qua:", text], 
			true
			)
	release_focus()

func _on_LineEdit_text_entered():
	code = text
	code = code.replace(' ', '')
	code = code.to_lower()
	#prefix = code.substr(0,3)
	#msg = code.substr(3,-1)
	check_message(code)
	
	
func check_message(msg):
	if msg=='3784':
		get_tree().get_root().get_node("/root/Node2D/Background/Panels/Panel8021").set_visible(true)
	elif msg=='2002':
		get_tree().get_root().get_node("/root/Node2D/Background/Panels/Panel0473").set_visible(true)
	elif msg=='off_on_on_off_off':
		get_tree().get_root().get_node("/root/Node2D/Background/Panels/Panel4785").set_visible(true)
	elif msg=='4058':
		get_tree().get_root().get_node("/root/Node2D/Background/Panels/Panel4060").set_visible(true)
	else:
		get_tree().get_root().get_node("/root/Node2D/Background/Panels/PanelError").set_visible(true)
		
		
func _on_TextureButton_pressed():
	get_tree().get_root().get_node("/root/Node2D/Background/LineEdit")._on_LineEdit_text_entered()
		
