/// systemAsyncGetGamepad - Returns gamepad id

show_debug_message("Event = " + async_load[? "event_type"]);
show_debug_message("Pad = " + string(async_load[? "pad_index"]));

if (async_load[? "event_type"] == "gamepad discovered"){
    var pad = async_load[? "pad_index"];       // Get the pad index value from the async_load map
    gamepad_set_axis_deadzone(pad, 0.05);       // Set the "deadzone" for the axis
    gamepad_set_button_threshold(pad, 0.1);    // Set the "threshold" for the triggers
	return pad;
    
}
else if (async_load[? "event_type"] == "gamepad lost"){
    var pad = async_load[? "pad_index"];
	return noone;
	
} else {
	show_debug_message(string(async_load[? "event_type"]));
	return noone;
}