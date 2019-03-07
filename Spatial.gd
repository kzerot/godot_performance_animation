extends Spatial
var stop = true
var frames = 0
var smoothed_fps = 0

func _process(delta):
    smoothed_fps += delta
    if delta and frames > 200:
        $Panel/FPS.text = str(floor(200 *1.0/smoothed_fps))
        frames = 0
        smoothed_fps = 0
    frames += 1
        

func _input(event: InputEvent):
    if event.is_action_pressed("ui_select"):
        print("Stop ", stop)
        for i in $Golems.get_children():
            if i is Unit:
                if not stop:
                    (i.get_node("AnimationPlayer") as AnimationPlayer).stop(true)
                else:
                    (i.get_node("AnimationPlayer") as AnimationPlayer).play("Idle")
        stop = !stop
