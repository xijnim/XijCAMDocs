# Zoom
To do something like zooming with the scroll wheel, you can do something like this:
```gml
var force = (mouse_wheel_up()-mouse_wheel_down())*.05;
camera.zoom_into(force, mouse_x, mouse_y);
```
Or to scroll using some variable:
```gml
var force = (mouse_wheel_up()-mouse_wheel_down())*.05;
current_zoom += force;
camera.set_zoom(current_zoom, mouse_x, mouse_y);
```

## Related methods:

```ts
function XijCamera.zoom_into(force: number, zoom_x: number, zoom_y: number);
```
Zooms the camera into the given position with the given force. <br>
**Parameters**:
|  Name  |  Type  | Description                                         |
|:------:|:------:|-----------------------------------------------------|
| force  | number | How much the camera should zoom                     |
| zoom_x | number | The x coordinate of where the camera should zoom in |
| zoom_y | number | The y coordinate of where the camera should zoom in |

---

```ts
function XijCamera.set_zoom(zoom: number, zoom_x: number, zoom_y: number);
```
Zooms the camera into the given position, but it uses as a base the base size of the camera <br>
**Parameters**:
|  Name  |  Type  | Description                                         |
|:------:|:------:|-----------------------------------------------------|
|  zoom  | number | The new zoom value                                  |
| zoom_x | number | The x coordinate of where the camera should zoom in |
| zoom_y | number | The y coordinate of where the camera should zoom in |

---

```ts
function XijCamera.set_base_size(base_width: number, base_height: number);
```
Sets the base size that will be used by the *set_zoom* method <br>
**Parameters**:
| Name   |  Type  | Description         |
|:------:|:------:|---------------------|
|  width | number | The new base width  |
| height | number | The new base height |
