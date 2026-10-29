# Following
To follow some position or instance you can use one of the *follow_* methods.

---

```ts
function XijCamera.follow_position(target_x: number, target_y: number, [lookahead_x: number], [lookahead_y: number]);
```
Follows a specific position <br>
**Parameters**:
|      Name        |  Type  | Description                                        |
|:----------------:|:------:|----------------------------------------------------|
|     target_x     | number | The x position the camera should follow            |
|     target_y     | number | The y position the camera should follow            |
|  \[lookahead_x]  | number | An offset to the x position that ignores deadzones |
|  \[lookahead_y]  | number | An offset to the y position that ignores deadzones |

---

```ts
function XijCamera.follow_instance(inst: Instance, [lookahead_x: number], [lookahead_x: number]);
```
Follows a specific instance <br>
**Parameters**:
|      Name        |   Type   | Description                                        |
|:----------------:|:--------:|----------------------------------------------------|
|       inst       | instance | The instance the camera should follow          |
|  \[lookahead_x]  | number | An offset to the x position that ignores deadzones |
|  \[lookahead_y]  | number | An offset to the y position that ignores deadzones |

---

```ts
function XijCamera.follow_multiple(config: struct);
```
Follows multiple instances or multiple positions, trying to keep all of them inside the camera.
The *config* parameter needs to be a struct with the following possible fields:
|      Name      |   Type   | Description                                                                        |
|:--------------:|:--------:|------------------------------------------------------------------------------------|
|     obj        |  object  | The objects which should be followed                                               |
|    positions   | []number | A list of x and y pairs that represents the positions to follow                    |
|  aspect_ratio  |  number  | The aspect ratio the camera should have                                            |
|    padding     |  number  | How much space there should be between the instances and the corners of the camera |
|    max_width   |  number  | The largest width the camera is allowed to have                                    |
|   max_height   |  number  | The tallest height the camera is allowed to have                                   |

> [!WARNING]
> *obj* and *positions* should never be defined simultaneously in the same *follow_multiple* config struct.

## Related config fields
| Name       | Type   | Description                                                     |
|:----------:|--------|-----------------------------------------------------------------|
|  lerp_amt  | number | The lerp smoothing factor that should be used when following    |

## Related methods

```ts
function XijCamera.set_lerp(lerp_amt: number);
```
Sets the lerp amount of the camera
**Parameters**: <br>
|      Name      |   Type   | Description                       |
|:--------------:|:--------:|-----------------------------------|
|    lerp_amt    |  number  | The new lerp amount               |
