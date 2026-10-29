# Room Clamping
To keep your cameras inside a specific area, you can add the `.clamp_type` field to `config`.
This field is an enum with the possible values of:
- `XIJCAM_Clamp.none`: The camera will not be clamped.
- `XIJCAM_Clamp.in_room`: The camera will be clamped, but screenshake may ignore it.

The clamping will be done in a rectangle specified by the
`.limit_x1`, `.limit_y1`, `.limit_x2` and `.limit_y2` fields to `config`.

**Example**:
```gml
var area = instance_place(x, y, obj_area);
if instance_exists(area) {
    camera.set_limit(area.bbox_left, area.bbox_top, area.bbox_right, area.bbox_bottom);
} else {
    camera.set_limit(0, 0, room_width, room_height);
}
```

> [!NOTE]
> The default value for `.clamp_type` is `XIJCAM_Clamp.in_room`

> [!NOTE]
> The default value for the limit is inside the size of the room at the time the camera was created.

## Related config fields:

| Name       | Type   | Description                                                     |
|:----------:|--------|-----------------------------------------------------------------|
| clamp_type | number | How the camera clamping should be done                          |
| limit_x1   | number | The x coordinate of the top left corner of the clamp limit      |
| limit_y1   | number | The y coordinate of the top left corner of the clamp limit      |
| limit_x2   | number | The x coordinate of the bottom right corner of the clamp limit  |
| limit_y2   | number | The y coordinate of the bottom right corner of the clamp limit  |

## Related methods:
```ts
function XijCamera.set_clamp_type(clamp_type: XIJCAM_Clamp);
```
Changes the camera's clamping type <br>
**Parameters**:
| Name       | Type         | Description       |
|------------|--------------|-------------------|
| clamp_type | XIJCAM_Clamp | Which type to use |

---

```ts
function XijCamera.set_limit(x1: number, y1: number, x2: number, y2: number);
```
Changes the limit at which the camera will be clamped in. <br>
**Parameters**:
| Name | Type   | Description                                                     |
|:----:|--------|-----------------------------------------------------------------|
| x1   | number | The x coordinate of the top left corner of the clamp limit      |
| y1   | number | The y coordinate of the top left corner of the clamp limit      |
| x2   | number | The x coordinate of the bottom right corner of the clamp limit  |
| y2   | number | The y coordinate of the bottom right corner of the clamp limit  |

---

```ts
XijCamera.lerp_limit(x1: number, y1: number, x2: number, y2: number)
```
Works like `set_limit` but does so with lerp smoothing. <br>
**Parameters**:
| Name | Type   | Description                                                     |
|:----:|--------|-----------------------------------------------------------------|
| x1   | number | The x coordinate of the top left corner of the clamp limit      |
| y1   | number | The y coordinate of the top left corner of the clamp limit      |
| x2   | number | The x coordinate of the bottom right corner of the clamp limit  |
| y2   | number | The y coordinate of the bottom right corner of the clamp limit  |

## Related enums:

**XIJCAM_Clamp**:
How the camera's position should be clamped inside the room
| Name    | Description                                                   |
|:-------:|---------------------------------------------------------------|
| none    | The camera will not clamp at all                              |
| in_room | Clamping is enabled, but screenshake may still cause clipping |

