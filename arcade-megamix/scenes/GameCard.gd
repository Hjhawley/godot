extends Control
class_name GameCard

@export var game: GameDef

@onready var panel: Panel = $Panel
@onready var icon: TextureRect = $Panel/MarginContainer/Icon
@onready var title_label: Label = $Title

func _ready():
	if game:
		icon.texture = game.logo
		title_label.text = game.title
	set_selected(false)

func set_selected(sel: bool) -> void:
	# tiny pop + slight brightness when selected
	var tw = create_tween()
	tw.tween_property(self, "scale", sel ? Vector2(1.12, 1.12) : Vector2.ONE, 0.08)\
		.set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_OUT)
	panel.modulate = sel ? Color(1,1,1,1) : Color(0.9,0.9,0.9,1)
