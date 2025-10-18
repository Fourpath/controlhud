extends MarginContainer
class_name ControlHUDButton

@export var text: String = "btn"
@export var action: StringName = &"ui_accept"

@export var stylebox_normal = load("res://addons/controlhud/resources/stylebox_chbtn_normal.tres")
@export var stylebox_pressed = load("res://addons/controlhud/resources/stylebox_chbtn_pressed.tres")

func _ready():
	$PanelContainer/Label.text = text

func _process(delta: float) -> void:
	if Input.is_action_pressed(action):
		$PanelContainer.add_theme_stylebox_override("panel", stylebox_pressed)
	else:
		$PanelContainer.add_theme_stylebox_override("panel", stylebox_normal)
