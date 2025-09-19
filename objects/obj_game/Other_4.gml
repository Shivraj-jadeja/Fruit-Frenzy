function spawn_many(_obj, _n) {
    repeat(_n) {
        var inst = instance_create_layer(
            irandom_range(64, room_width-64),
            irandom_range(64, room_height-64),
            "Instances", _obj
        );
    }
}

// tweak numbers for balance
spawn_many(obj_apple, 4);
spawn_many(obj_strawberry, 3);
spawn_many(obj_cherry, 3);
spawn_many(obj_banana, 2);
spawn_many(obj_bomb, 4);
