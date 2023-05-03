extends Label
@onready var timer = $Timer
var num = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	timer.start()




func _on_timer_timeout():    # Every time the timer runs (1 second)
	num+=1
	text=str(num)
	if num >= 10:
		await get_tree().create_timer(1).timeout     #wait 1 second
		text="Done"
		timer.stop()
	
