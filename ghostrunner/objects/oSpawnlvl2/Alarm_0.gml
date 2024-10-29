if (global.countdown > 0) {
    global.countdown--;
} else {
    if (spawn_count_homelander < spawn_amount_homelander) {
        instance_create_depth(x, y, -1, oEnemyHomelander);
        spawn_count_homelander++;
    }
    if (!global.message_set) {
        oPlayer.message = "The Green Ghost Has Spawned";
        oPlayer.alarm[0] = room_speed * 3;
        show_debug_message("Message set: " + oPlayer.message);
        global.message_set = true;
    }
}
alarm[0] = spawn_rate_homelander;