selectBlock(instance_id);
show_debug_message("Selected" + string(localSelected));

if (localSelected) with (blockMenu) { instance_destroy() };
blockMenu = noone;
if (!localSelected) blockMenu = instance_create_layer(x, y, "Menu", oMove);

localSelected = !localSelected;


