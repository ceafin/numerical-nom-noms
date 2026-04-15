extends Node2D
class_name GameBoard

@onready var grid_container : GridContainer = $GridContainer

func _ready() -> void:
	var numbers : Array = range( 1, 31 )
	numbers.shuffle()
	for i in grid_container.get_child_count():
		var cell : CenterContainer = grid_container.get_child( i )
		var label : Label = cell.get_node( "CellText" )
		label.text = str( numbers[i] )
