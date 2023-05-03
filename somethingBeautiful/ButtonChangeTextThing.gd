extends Node2D
@onready var line = $LineEdit
@onready var label = $Label3

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.





#gets what's in text edit
#assignes it to label 3

func _on_button_pressed():     #Press button
	change()

func _on_line_edit_text_submitted(_new_text):
	change()

func change():
	if line.text.is_valid_int():
		label.text = line.get_text() #Label.text is a variable, line.get_text is a method, so it needs ()
	else:
		label.text = "NaN"
	line.clear()
