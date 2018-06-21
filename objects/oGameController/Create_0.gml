setupGlobals();
window_set_cursor(cr_none);
cursor_sprite = sCursor;

// Config
enemyDelay = 2 * room_speed;
enemyHp = 10;
enemyHpMultiplier = 1.01;
maxEnemyCount = 15;
levels = 5;
gunCost = 5;


// Ephem
enemyCount = 0;
currentInterval = 0;
currentLevel = 1;

// Background stuff
starTilemapLayerId = layer_get_id("StarTiles");
starTilemapId = layer_tilemap_get_id(starTilemapLayerId);
var lay_id = layer_get_id("Background");
var back_id = layer_background_get_id(lay_id);
layer_background_xscale(back_id, 4);
layer_background_yscale(back_id, 4);