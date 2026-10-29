# Screenshake
To notify a screenshake to the camera, you can use the *screenshake* method. <br>
**Example**:
```gml
camera.screenshake(10);
```

And you can configure the screenshake setting with the *set_screenshake_options* method. <br>
**Example**:
```gml
// These are the default values
camera.set_screenshake_options({
    pos_factor: 1,
    angle_factor: 0,
});
```

## Related config fields:

|            Name            |  Type  | Description                                                 |
|:--------------------------:|:------:|-------------------------------------------------------------|
|   screenshake_pos_factor   | number | How much the *force* should influence the camera's position |
|  screenshake_angle_factor  | number | How much the *force* should influence the camera's angle    |

## Related methods:
```ts
function XijCamera.screenshake(force: number);
```
Does screenshake to the camera with the specified force <br>
**Parameters**:
|  Name  |  Type  | Description                                    |
|:------:|:------:|------------------------------------------------|
| force  | number | How much the camera should shake               |

---

```ts
function XijCamera.set_screenshake_options(config: struct);
```
Changes the camera's screenshake settings. <br>
The *config* parameter needs to be a struct with the following possible fields:
|     Name     |  Type  | Description                                 |
|:------------:|:------:|---------------------------------------------|
|  pos_factor  | number | How much the *force* should influence the camera's position |
| angle_factor | number | How much the *force* should influence the camera's angle    |

