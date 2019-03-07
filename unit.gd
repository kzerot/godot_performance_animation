extends Node
class_name Unit
# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
    $AnimationPlayer.get_animation("Idle").loop = true

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#    pass
