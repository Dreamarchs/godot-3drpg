extends TextureButton
class_name ItemIcon

signal interact(item)

@onready var stat_label = $MarginContainer/StatLabel
@onready var item_label = $MarginContainer/ItemLabel
@onready var item_icon: ItemIcon = $"."

func _ready() -> void:
	item_icon.gui_input.connect(_on_item_label_gui_input)

func _on_item_label_gui_input(event: InputEvent) -> void:
	if event.is_action("click"):
		interact.emit(self)