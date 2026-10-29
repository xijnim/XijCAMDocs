# Renderer
To make your camera cover all of the screen or make split cameras.
You can use a `XijCameraRenderer` constructor.

**For example**, to make the camera cover all of the window:
```gml
// Create
renderer = new XijCameraRenderer();
renderer.add_camera({
    limit_x1: -infinity,
    limit_y1: -infinity,
    limit_x2: infinity,
    limit_y2: infinity,
});

// Step
renderer.update();

// Post Draw
renderer.post_draw();

// Clean Up
renderer.deinit();
delete renderer;
```

**For example**, to make split cameras:
```gml
// Create
renderer = new XijCameraRenderer();

// Step
if (keyboard_check_pressed(vk_space)) renderer.add_camera_default_layout();

// Post Draw
renderer.post_draw();

// Clean Up
renderer.deinit();
delete renderer;
```

## Related renderer methods

```ts
function XijCameraRenderer.update();
```
Updates the renderer. Usually it should be called each frame. (in the Step Event) <br>

---

```ts
function XijCameraRenderer.post_draw();
```
Draws the renderer's cameras. It should be called in the Post Draw Event.

---

```ts
function XijCameraRenderer.deinit();
```
Frees up the renderer's resources. Should be followed by deleting the renderer.

---

```ts
function XijCameraRenderer.add_camera([config: struct], [camera_dir: XIJCAM_SpawnDirection], [camera_origin: integer]);
```
Creates a new camera in the renderer in the given layout position. <br>
**Parameters**:
|    Name       |         Type          | Description                                             |
|:-------------:|:---------------------:|---------------------------------------------------------|
|     config    |         struct        | The config struct that will be passed to the camera     |
|  camera_dir   | XIJCAM_SpawnDirection | To which direction the camera should be spawned at      |
| camera_origin |        integer        | Which camera will be used as the origin for the new one |

---

```ts
function XijCameraRenderer.add_camera_default_layout([config: struct]);
```
Same as `XijCameraRenderer.add_camera`, but with a pre-defined layout. <br>
**Parameters**:
|    Name       |         Type          | Description                                             |
|:-------------:|:---------------------:|---------------------------------------------------------|
|     config    |         struct        | The config struct that will be passed to the camera     |

---

```ts
function XijCameraRenderer.get_surface(index: integer);
```
Gets the surface of the camera of thet specified index. <br>
**Parameters**:
|  Name  |   Type  | Description                           |
|:------:|:-------:|---------------------------------------|
| index  | integer | The index of the camera               |

---

```ts
function XijCamera.fit_to_size(width: number, height: number);
```
Fits the camera into a specific area. <br>
**Parameters**:
|  Name  |  Type  | Description                           |
|:------:|:------:|---------------------------------------|
| width  | number | The width to fit in                   |
| height | number | The height to fit in                  |

## Related enums

**XIJCAM_SpawnDirection**:
Represents a direction, possible values are:
- left
- right
- up
- down

