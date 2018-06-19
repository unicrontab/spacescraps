setupGlobals();
window_set_cursor(cr_none);
cursor_sprite = sCursor;


enemyDelay = 5 * room_speed;
enemyCount = 0;
enemyHp = 5;
enemyHpMultiplier = 1.2;
maxEnemyCount = 20;
currentInterval = 0;
currentLevel = 1;
levels = 3;

starTilemapLayerId = layer_get_id("StarTiles");
starTilemapId = layer_tilemap_get_id(starTilemapLayerId);

var lay_id = layer_get_id("Background");
var back_id = layer_background_get_id(lay_id);
layer_background_xscale(back_id, 4);
layer_background_yscale(back_id, 4);