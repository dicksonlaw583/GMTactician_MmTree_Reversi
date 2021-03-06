{
  "spriteId": {
    "name": "spr_white",
    "path": "sprites/spr_white/spr_white.yy",
  },
  "solid": false,
  "visible": true,
  "spriteMaskId": null,
  "persistent": false,
  "parentObjectId": null,
  "physicsObject": false,
  "physicsSensor": false,
  "physicsShape": 1,
  "physicsGroup": 1,
  "physicsDensity": 0.5,
  "physicsRestitution": 0.1,
  "physicsLinearDamping": 0.1,
  "physicsAngularDamping": 0.1,
  "physicsFriction": 0.2,
  "physicsStartAwake": true,
  "physicsKinematic": false,
  "physicsShapePoints": [],
  "eventList": [
    {"isDnD":false,"eventNum":0,"eventType":0,"collisionObjectId":null,"parent":{"name":"obj_player_manager","path":"objects/obj_player_manager/obj_player_manager.yy",},"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMEvent",},
    {"isDnD":false,"eventNum":0,"eventType":8,"collisionObjectId":null,"parent":{"name":"obj_player_manager","path":"objects/obj_player_manager/obj_player_manager.yy",},"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMEvent",},
  ],
  "properties": [
    {"varType":6,"value":"0","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":[
        "0",
        "1",
      ],"multiselect":false,"filters":[],"resourceVersion":"1.0","name":"user","tags":[],"resourceType":"GMObjectProperty",},
    {"varType":6,"value":"-1","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":[
        "-1",
        "1",
      ],"multiselect":false,"filters":[],"resourceVersion":"1.0","name":"player","tags":[],"resourceType":"GMObjectProperty",},
    {"varType":4,"value":"global.userName[user]","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":[],"multiselect":false,"filters":[],"resourceVersion":"1.0","name":"label","tags":[],"resourceType":"GMObjectProperty",},
    {"varType":7,"value":"$FFCCCCCC","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":[],"multiselect":false,"filters":[],"resourceVersion":"1.0","name":"colour","tags":[],"resourceType":"GMObjectProperty",},
    {"varType":5,"value":"fnt_text","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":[],"multiselect":false,"filters":[
        "GMFont",
      ],"resourceVersion":"1.0","name":"font","tags":[],"resourceType":"GMObjectProperty",},
  ],
  "overriddenProperties": [],
  "parent": {
    "name": "Reversi_ingame",
    "path": "folders/Reversi_ingame.yy",
  },
  "resourceVersion": "1.0",
  "name": "obj_player_manager",
  "tags": [],
  "resourceType": "GMObject",
}