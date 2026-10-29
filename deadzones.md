# Deadzones
The `config` struct accept a `.deadzone` field, that specifies how
much the player needs to move away from the center of the camera for the camera
to start moving. Such deadzones can be created with the `xij_deadzone_` functions

> [!NOTE]
> The default value for `.deadzone` is `xij_deadzone_rectangle(32, 32)`

Example:
```gml
// Create
camera = new XijCamera({
    deadzone: xij_deadzone_circle(32),
});

// Step
camera.follow_instance(id);
```

## Related config fields:
| Name       | Type    | Description                                                  |
|:----------:|:-------:|--------------------------------------------------------------|
| deadzone   | DeadZone| Which deadzone the camera should use                         |

## Related functions
```ts
function xij_deadzone_rectangle(width: number, height: number): DeadZone;
```
Creates a rectangle deadzone with the specified size. <br>
**Return Type**: DeadZone <br>
**Parameters**: <br>
| Name         | Type     | Description                            |
|:------------:|:--------:|----------------------------------------|
| width        | number   | The width of the deadzone              |
| height       | number   | The height of the deadzone             |

---

```ts
function xij_deadzone_circle(radius: number): DeadZone;
```
Creates a circle deadzone with the specified radius. <br>
**Return Type**: DeadZone <br>
**Parameters**: <br>
| Name         | Type     | Description                            |
|:------------:|:--------:|----------------------------------------|
| radius       | number   | The radius of the deadzone             |

## Related methods:
**.set_deadzone_rectangle**: Just forwards the arguments to **xij_deadzone_rectangle** and puts the new deadzone into the camera <br>

---

**.set_deadzone_circle**: Just forwards the arguments to **xij_deadzone_circle** and puts the new deadzone into the camera <br>

