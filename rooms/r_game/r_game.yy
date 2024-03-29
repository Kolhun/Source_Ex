{
  "resourceType": "GMRoom",
  "resourceVersion": "1.0",
  "name": "r_game",
  "isDnd": false,
  "volume": 1.0,
  "parentRoom": null,
  "views": [
    {"inherit":false,"visible":true,"xview":0,"yview":0,"wview":1024,"hview":768,"xport":0,"yport":0,"wport":1024,"hport":768,"hborder":32,"vborder":32,"hspeed":-1,"vspeed":-1,"objectId":null,},
    {"inherit":false,"visible":false,"xview":0,"yview":0,"wview":1366,"hview":768,"xport":0,"yport":0,"wport":1366,"hport":768,"hborder":32,"vborder":32,"hspeed":-1,"vspeed":-1,"objectId":null,},
    {"inherit":false,"visible":false,"xview":0,"yview":0,"wview":1366,"hview":768,"xport":0,"yport":0,"wport":1366,"hport":768,"hborder":32,"vborder":32,"hspeed":-1,"vspeed":-1,"objectId":null,},
    {"inherit":false,"visible":false,"xview":0,"yview":0,"wview":1366,"hview":768,"xport":0,"yport":0,"wport":1366,"hport":768,"hborder":32,"vborder":32,"hspeed":-1,"vspeed":-1,"objectId":null,},
    {"inherit":false,"visible":false,"xview":0,"yview":0,"wview":1366,"hview":768,"xport":0,"yport":0,"wport":1366,"hport":768,"hborder":32,"vborder":32,"hspeed":-1,"vspeed":-1,"objectId":null,},
    {"inherit":false,"visible":false,"xview":0,"yview":0,"wview":1366,"hview":768,"xport":0,"yport":0,"wport":1366,"hport":768,"hborder":32,"vborder":32,"hspeed":-1,"vspeed":-1,"objectId":null,},
    {"inherit":false,"visible":false,"xview":0,"yview":0,"wview":1366,"hview":768,"xport":0,"yport":0,"wport":1366,"hport":768,"hborder":32,"vborder":32,"hspeed":-1,"vspeed":-1,"objectId":null,},
    {"inherit":false,"visible":false,"xview":0,"yview":0,"wview":1366,"hview":768,"xport":0,"yport":0,"wport":1366,"hport":768,"hborder":32,"vborder":32,"hspeed":-1,"vspeed":-1,"objectId":null,},
  ],
  "layers": [
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Controller","instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_6FF5B11","properties":[],"isDnd":false,"objectId":{"name":"o_input_controller","path":"objects/o_input_controller/o_input_controller.yy",},"inheritCode":false,"hasCreationCode":false,"colour":4294967295,"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"imageIndex":0,"imageSpeed":1.0,"inheritedItemId":null,"frozen":false,"ignore":false,"inheritItemSettings":false,"x":576.0,"y":256.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_F1864AD","properties":[],"isDnd":false,"objectId":{"name":"o_translate_controller","path":"objects/o_translate_controller/o_translate_controller.yy",},"inheritCode":false,"hasCreationCode":false,"colour":4294967295,"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"imageIndex":0,"imageSpeed":1.0,"inheritedItemId":null,"frozen":false,"ignore":false,"inheritItemSettings":false,"x":608.0,"y":288.0,},
      ],"visible":true,"depth":0,"userdefinedDepth":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"gridX":32,"gridY":32,"layers":[],"hierarchyFrozen":false,"effectEnabled":true,"effectType":null,"properties":[],},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Instances","instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_761ED2A6","properties":[],"isDnd":false,"objectId":{"name":"o_init","path":"objects/o_init/o_init.yy",},"inheritCode":false,"hasCreationCode":false,"colour":4294967295,"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"imageIndex":0,"imageSpeed":1.0,"inheritedItemId":null,"frozen":false,"ignore":false,"inheritItemSettings":false,"x":0.0,"y":0.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_5B9090BC","properties":[],"isDnd":false,"objectId":{"name":"o_player","path":"objects/o_player/o_player.yy",},"inheritCode":false,"hasCreationCode":false,"colour":4294967295,"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"imageIndex":0,"imageSpeed":1.0,"inheritedItemId":null,"frozen":false,"ignore":false,"inheritItemSettings":false,"x":608.0,"y":512.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_3DE5D552","properties":[],"isDnd":false,"objectId":{"name":"o_enemy_test","path":"objects/o_enemy_test/o_enemy_test.yy",},"inheritCode":false,"hasCreationCode":false,"colour":4294967295,"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"imageIndex":0,"imageSpeed":1.0,"inheritedItemId":null,"frozen":false,"ignore":false,"inheritItemSettings":false,"x":800.0,"y":480.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_3EC4E865","properties":[],"isDnd":false,"objectId":{"name":"o_single","path":"objects/o_single/o_single.yy",},"inheritCode":false,"hasCreationCode":false,"colour":4294967295,"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"imageIndex":0,"imageSpeed":1.0,"inheritedItemId":null,"frozen":false,"ignore":false,"inheritItemSettings":false,"x":32.0,"y":0.0,},
      ],"visible":true,"depth":100,"userdefinedDepth":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"gridX":32,"gridY":32,"layers":[],"hierarchyFrozen":false,"effectEnabled":true,"effectType":null,"properties":[],},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Spawn_item","instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_1D26D588","properties":[],"isDnd":false,"objectId":{"name":"o_item","path":"objects/o_item/o_item.yy",},"inheritCode":false,"hasCreationCode":true,"colour":4294967295,"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"imageIndex":0,"imageSpeed":1.0,"inheritedItemId":null,"frozen":false,"ignore":false,"inheritItemSettings":false,"x":832.0,"y":224.0,},
      ],"visible":true,"depth":200,"userdefinedDepth":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"gridX":32,"gridY":32,"layers":[],"hierarchyFrozen":false,"effectEnabled":true,"effectType":null,"properties":[],},
    {"resourceType":"GMRTileLayer","resourceVersion":"1.1","name":"Tiles_1","tilesetId":{"name":"TileSet1","path":"tilesets/TileSet1/TileSet1.yy",},"x":0,"y":0,"tiles":{"TileDataFormat":1,"SerialiseWidth":157,"SerialiseHeight":157,"TileCompressedData":[
-31,1,-126,-2147483648,-31,1,-126,-2147483648,-9,1,2,40,41,-23,1,-123,-2147483648,-9,1,2,56,57,-15,1,2,106,107,-6,1,-123,-2147483648,-21,1,2,40,41,-3,1,2,122,123,-6,1,-123,-2147483648,-6,1,2,40,41,-7,1,2,76,77,-4,1,2,56,57,-11,1,-123,-2147483648,-6,1,2,56,57,-7,1,2,92,93,-18,1,-122,-2147483648,-3,1,2,76,77,-13,1,2,106,107,-15,1,-122,-2147483648,-3,1,2,92,93,-13,1,2,122,123,-15,1,-122,-2147483648,-9,1,1,131,-25,1,-122,-2147483648,-26,1,2,76,77,-7,1,-122,-2147483648,-26,1,2,92,93,-7,1,-122,-2147483648,-2,1,2,76,77,-9,1,1,131,-5,1,2,40,41,-14,1,-122,-2147483648,-2,1,2,92,93,-15,1,
2,56,57,-17,1,-119,-2147483648,-17,1,2,106,107,-19,1,-119,-2147483648,-17,1,2,122,123,-19,1,-119,-2147483648,-9,1,2,40,41,-11,1,2,76,77,-14,1,-119,-2147483648,-9,1,2,56,57,-11,1,2,92,93,-14,1,-119,-2147483648,-15,1,2,76,77,-21,1,-119,-2147483648,-3,1,2,106,107,-10,1,2,92,93,-21,1,-119,-2147483648,-3,1,2,122,123,-27,1,-125,-2147483648,-32,1,-125,-2147483648,-32,1,-125,-2147483648,-32,1,-125,-2147483648,-30,1,-127,-2147483648,-30,1,-127,-2147483648,-24,1,-20543,-2147483648,],},"visible":true,"depth":300,"userdefinedDepth":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"gridX":32,"gridY":32,"layers":[],"hierarchyFrozen":false,"effectEnabled":true,"effectType":null,"properties":[],},
    {"resourceType":"GMRBackgroundLayer","resourceVersion":"1.0","name":"Background","spriteId":null,"colour":4294564863,"x":0,"y":0,"htiled":false,"vtiled":false,"hspeed":0.0,"vspeed":0.0,"stretch":false,"animationFPS":15.0,"animationSpeedType":0,"userdefinedAnimFPS":false,"visible":true,"depth":400,"userdefinedDepth":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"gridX":32,"gridY":32,"layers":[],"hierarchyFrozen":false,"effectEnabled":true,"effectType":null,"properties":[],},
  ],
  "inheritLayers": false,
  "creationCodeFile": "",
  "inheritCode": false,
  "instanceCreationOrder": [
    {"name":"inst_5B9090BC","path":"rooms/r_game/r_game.yy",},
    {"name":"inst_3EC4E865","path":"rooms/r_game/r_game.yy",},
    {"name":"inst_761ED2A6","path":"rooms/r_game/r_game.yy",},
    {"name":"inst_6FF5B11","path":"rooms/r_game/r_game.yy",},
    {"name":"inst_F1864AD","path":"rooms/r_game/r_game.yy",},
    {"name":"inst_3DE5D552","path":"rooms/r_game/r_game.yy",},
    {"name":"inst_1D26D588","path":"rooms/r_game/r_game.yy",},
  ],
  "inheritCreationOrder": false,
  "sequenceId": null,
  "roomSettings": {
    "inheritRoomSettings": false,
    "Width": 5000,
    "Height": 5000,
    "persistent": false,
  },
  "viewSettings": {
    "inheritViewSettings": false,
    "enableViews": true,
    "clearViewBackground": false,
    "clearDisplayBuffer": true,
  },
  "physicsSettings": {
    "inheritPhysicsSettings": false,
    "PhysicsWorld": false,
    "PhysicsWorldGravityX": 0.0,
    "PhysicsWorldGravityY": 10.0,
    "PhysicsWorldPixToMetres": 0.1,
  },
  "parent": {
    "name": "Rooms",
    "path": "folders/Rooms.yy",
  },
}