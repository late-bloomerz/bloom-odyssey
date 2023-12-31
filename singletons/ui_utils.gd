extends Node

var popup = preload("res://ui/notification/notification.tscn")

func show_info(info: String, with_icon: bool = true, position: Vector2 = get_tree().current_scene.get_viewport().get_mouse_position()) -> void:
  var popup_instance = popup.instantiate()
  get_tree().current_scene.add_child(popup_instance)
  popup_instance.pop_info(info,  position, with_icon)
