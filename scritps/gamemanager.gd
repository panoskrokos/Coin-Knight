extends Node

var sum = 0
@onready var score: Label = $Score
@onready var you_won: Label = $"You won"
@onready var you_won_2: Label = $"You won2"


func add_point():
	sum +=1
	score.text = "You collected " + str(sum) + " coins."
	
	if sum == 100:
		you_won.text = "All " + str(sum) + (" coins collected.")
		get_tree().change_scene_to_file("res://scenes/node_2d.tscn")
		
		
	if sum < 100:
		you_won.text = ("You need ") + str(100 -sum)  + (" coins.")
		
	if sum == 100:
		
		you_won_2.text = "All " + str(sum) + (" coins collected.")
		
	if sum < 100:
		you_won_2.text = ("You need ") + str(100-sum) + (" coins.")
	
