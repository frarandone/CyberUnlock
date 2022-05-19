extends LineEdit

var code
var prefix
var msg
var prefixes = ['tec', 'sys', 'cyb', 'hac', 'ufo', 'squ', 'non', 'cob', 'boo', 'wor', 'cod']

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
	prefix = code.substr(0,3)
	msg = code.substr(3,-1)
	check_message(prefix, msg)
	
	
func check_message(prefix, msg):
	if prefixes.has(prefix) and msg=='3784':
		get_tree().get_root().get_node("/root/Node2D/Background/Panels/Panel8021").set_visible(true)
	if prefixes.has(prefix) and msg=='2022':
		get_tree().get_root().get_node("/root/Node2D/Background/Panels/Panel0473").set_visible(true)
	if prefixes.has(prefix) and msg=='off_on_on_off_off':
		get_tree().get_root().get_node("/root/Node2D/Background/Panels/Panel4785").set_visible(true)
	if prefixes.has(prefix) and msg=='4058':
		return_letter(prefix)
	if msg=='137':
		get_tree().get_root().get_node("/root/Node2D/Background/Panels/Final").set_visible(true)
		
func return_letter(prefix):
	get_tree().get_root().get_node("/root/Node2D/Background/Panels/Panel4060").set_visible(true)
	if prefix == 'tec':
		get_tree().get_root().get_node("/root/Node2D/Background/Panels/Panel4060/U").set_visible(true)
	if prefix == 'sys':
		get_tree().get_root().get_node("/root/Node2D/Background/Panels/Panel4060/N").set_visible(true)
	if prefix == 'cyb':
		get_tree().get_root().get_node("/root/Node2D/Background/Panels/Panel4060/O").set_visible(true)		
	if prefix == 'hac' or prefix=='boo' or prefix=='wor':
		get_tree().get_root().get_node("/root/Node2D/Background/Panels/Panel4060/T").set_visible(true)		
	if prefix == 'ufo':
		get_tree().get_root().get_node("/root/Node2D/Background/Panels/Panel4060/R").set_visible(true)		
	if prefix == 'squ' or prefix=='cob' or prefix=='cod':
		get_tree().get_root().get_node("/root/Node2D/Background/Panels/Panel4060/E").set_visible(true)		
	if prefix == 'non':
		get_tree().get_root().get_node("/root/Node2D/Background/Panels/Panel4060/S").set_visible(true)		
		



func _on_TextureButton_pressed():
	get_tree().get_root().get_node("/root/Node2D/Background/LineEdit")._on_LineEdit_text_entered()
		
