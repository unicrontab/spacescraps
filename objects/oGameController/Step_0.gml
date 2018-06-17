if (currentInterval >= enemyDelay && enemyCount <= maxEnemyCount) {
	with(instance_create_layer(enemyPath.x, enemyPath.y, "Enemy", enemy)){
		hp = other.enemyHp;	
	}
	enemyCount += 1;
	enemyHp = enemyHpMultiplier * (enemyHp + 1);
	currentInterval = 0;
} else {
	currentInterval += 1;	
}