{
    "id": "9ff4441e-e750-4249-a530-625348415861",
    "modelName": "GMObject",
    "mvc": "1.0",
    "name": "o_ObstacleSpawner",
    "eventList": [
        {
            "id": "afbdf675-f46b-4b63-83d7-a5070e265247",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 4,
            "eventtype": 7,
            "m_owner": "9ff4441e-e750-4249-a530-625348415861"
        },
        {
            "id": "25a0a10e-ade2-4bdd-a6fc-d699bd3816a6",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 1,
            "eventtype": 3,
            "m_owner": "9ff4441e-e750-4249-a530-625348415861"
        },
        {
            "id": "11220d5e-7a06-466a-a1ed-f27e3b5b90d2",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 3,
            "m_owner": "9ff4441e-e750-4249-a530-625348415861"
        }
    ],
    "maskSpriteId": "00000000-0000-0000-0000-000000000000",
    "overriddenProperties": null,
    "parentObjectId": "00000000-0000-0000-0000-000000000000",
    "persistent": false,
    "physicsAngularDamping": 0.1,
    "physicsDensity": 0.5,
    "physicsFriction": 0.2,
    "physicsGroup": 0,
    "physicsKinematic": false,
    "physicsLinearDamping": 0.1,
    "physicsObject": false,
    "physicsRestitution": 0.1,
    "physicsSensor": false,
    "physicsShape": 1,
    "physicsShapePoints": null,
    "physicsStartAwake": true,
    "properties": [
        {
            "id": "8fb8b365-6eba-420f-9f9e-1cbbc54add48",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "activeSpikes",
            "varType": 1
        },
        {
            "id": "65f3e087-5054-4bed-bc7b-7ceddb3986d7",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "averageSpikeDistance",
            "varType": 1
        },
        {
            "id": "27b7b709-fd02-41b4-a693-bb8c0f78604c",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "fallingSpikeChance",
            "varType": 1
        },
        {
            "id": "6df9155d-8021-4006-adc2-db1710f29a2c",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "Dirt",
            "varName": "biome",
            "varType": 2
        },
        {
            "id": "637c0a1a-1cc8-4c6a-b239-4e48fe350d15",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "gameProgressionLevel",
            "varType": 1
        },
        {
            "id": "f35aba9c-e079-4042-a647-d2dd98f0a1b2",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "Top",
            "varName": "lastCreatedSpike",
            "varType": 2
        },
        {
            "id": "b131ad21-6c01-4bcf-a9fd-7353c8e82874",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "floorCount",
            "varType": 1
        },
        {
            "id": "b7293256-20b4-40fa-94e3-75e272f12df2",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "5",
            "varName": "roomSpeed",
            "varType": 1
        },
        {
            "id": "802afb39-16e4-46a8-8772-b48a99b3ba04",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "lastGroundX",
            "varType": 1
        }
    ],
    "solid": false,
    "spriteId": "00000000-0000-0000-0000-000000000000",
    "visible": true
}