extends ItemIcon
class_name CurrencyIcon

@export var value: int
func _ready() -> void:
	super()
	stat_label.text = "+" + str(value)