# Quick Start

You can create a camera with the `XijCamera()` constructor.
That constructor may take a `config` struct as a parameter.

**For example**:
```gml
// Create
camera = new XijCamera();

// Step
camera.update();

// Clean Up
delete camera;
```

# Configuration
The configuration is done by changing the macros is the *USER CONFIGURATION*
section of the XijCAM script. These macros are:
|    Name          |    Expected Type    | Default Value                     | Description                                                                      |
|:----------------:|:-------------------:|:---------------------------------:|----------------------------------------------------------------------------------|
|XIJCAM_DEBUG      | boolean             | Enabled when running from the IDE | Enables safety checking to avoid mistakes from the user (may affect performance) |
|XIJCAM_LOG_LEVEL  | XIJCAM_LogLevel     | .all                              | How serious the issue needs to be for it to be showed in the console output      |

## Related enums:

**XIJCAM_LogLevel**:
How important a message is
| Name    | Description                                                                              |
|:-------:|------------------------------------------------------------------------------------------|
| all    | Only used in the XIJCAM_LOG_LEVEL macro, telling the library to display all messages      |
| none    | Only used in the XIJCAM_LOG_LEVEL macro, telling the library to not display any messages |
| error   | A critical error                                                                         |
| warn    | A warning to a non critical error                                                        |
| info    | A useful information for the user                                                        |

# Basic Camera Manipulation

## Basic config fields
|   Name    |   Type    | Description                                         |
|:---------:|:---------:|-----------------------------------------------------|
| width     | number    | The width of the camera                             |
| height    | number    | The height of the camera                            |
| camera_id | camera    | Which camera XijCAM should manipulate (-1 for none) |

## Basic methods
```ts
function XijCamera.update();
```
Updates the camera. Usually it should be called each frame. (in the Step Event) <br>

---

```ts
function XijCamera.get_x(): number;
```
Gets the x position of the camera. <br>
**Return Type**: number

---

```ts
function XijCamera.get_y(): number;
```
Gets the y position of the camera. <br>
**Return Type**: number

---

```ts
function XijCamera.get_pos_juice(): [number, number];
```
Gets the position of the camera, *including game juice effects*, as an array of two elements, x and y. <br>
**Return Type**: \[number, number]

--- 

```ts
function XijCamera.get_x_juice(): number;
```
Gets the juice x position of the camera. <br>
**Return Type**: number

---

```ts
function XijCamera.get_y_juice(): number;
```
Gets the juice y position of the camera. <br>
**Return Type**: number

---

```ts
function XijCamera.get_width(): number;
```
Gets the width of the camera. <br>
**Return Type**: number

---

```ts
function XijCamera.get_height(): number;
```
Gets the height of the camera. <br>
**Return Type**: number

---

```ts
function XijCamera.get_size_juice(): [number, number];
```
Gets the size of the camera, *including game juice effects*, as an array of two elements, width and height. <br>
**Return Type**: \[number, number]

--- 

```ts
function XijCamera.get_width_juice(): number;
```
Gets the juice width of the camera. <br>
**Return Type**: number

---

```ts
function XijCamera.get_height_juice(): number;
```
Gets the juice height of the camera. <br>
**Return Type**: number

---

```ts
function XijCamera.set_pos(x: number, y: number);
```
Sets the position of the camera (will consider room clamping) <br>
**Parameters**:
| Name |  Type  | Description        |
|:----:|:------:|--------------------|
|  x   | number | The new x position |
|  y   | number | The new y position |

---

```ts
function XijCamera.move(hsp: number, vsp: number);
```
Moves the position of the camera by the specified horizontal and vertical velocities. <br>
**Parameters**:
|  Name  |  Type  | Description                                         |
|:------:|:------:|-----------------------------------------------------|
|  hsp   | number | How many pixels the camera should move horizontally |
|  vsp   | number | How many pixels the camera should move vertically   |


---

```ts
function XijCamera.set_size(width: number, height: number);
```
Sets the size of the camera (will consider room clamping) <br>
**Parameters**: <br>
| Name   |  Type  | Description    |
|:------:|:------:|----------------|
|  width | number | The new width  |
| height | number | The new height |

---

