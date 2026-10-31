# Inicialização

Você pode criar a câmera com o constructor `XijCamera()`.
Esse constructor pode levar uma struct `config` como parâmetro.

**Por exemplo**:
```gml
// Create
camera = new XijCamera();

// Step
camera.update();

// Clean Up
delete camera;
```

# Configuração
A configuração é feita mudando os macros na seção *USER CONFIGURATION* do script XijCAM. Esses macros são:
|    Nome          |    Tipo    | Valor padrão                     | Descrição                                                                      |
|:----------------:|:-------------------:|:---------------------------------:|----------------------------------------------------------------------------------|
|XIJCAM_DEBUG      | booleano             | Ativo quando está rodando do IDE | Habilita a verificação de segurança para evitar erros do usuário (pode afetar a performance) |
|XIJCAM_LOG_LEVEL  | XIJCAM_LogLevel     | .all                              | O quão grave um problema deve ser para aparecer no console output      |

## Enums relacionados:

**XIJCAM_LogLevel**:
O quão importante a mensagem é
| Nome    | Descrição                                                                              |
|:-------:|------------------------------------------------------------------------------------------|
| all    | Apenas usado no macro XIJCAM_LOG_LEVEL, faz a biblioteca mostrar todas mensagens      |
| none    | Apenas usado no macro XIJCAM_LOG_LEVEL, faz a biblioteca mostrar nenhuma mensagem |
| error   | Um erro crítico                                                                         |
| warn    | Um aviso para um erro não crítico                                                        |
| info    | Uma informação útil para o usuário                                                        |

# Manipulação de câmera básica

## Campos de configuração básicos
|   Nome    |   Tipo    | Descrição                                         |
|:---------:|:---------:|-----------------------------------------------------|
| width     | número    | A largura da câmera                             |
| height    | número  | A altura da câmera                           |
| camera_id | câmera    | Qual câmera o XijCAM deve manipular (-1 para nenhuma) |

## Métodos básicos
```ts
function XijCamera.update();
```
Atualiza a câmera. Normalmente, isso deve ser feito a todo frame (No evento step). <br>

---

```ts
function XijCamera.get_x(): number;
```
Retorna a posição x da câmera. <br>
**Return Type**: número

---

```ts
function XijCamera.get_y(): number;
```
Retorna a posição y da câmera. <br>
**Return Type**: número

---

```ts
function XijCamera.get_pos_juice(): [number, number];
```
Retorna a posição da câmera, *incluindo efeitos de game juice*, sendo uma array de dois elementos, x e y. <br>
**Return Type**: \[número, número]

--- 

```ts
function XijCamera.get_x_juice(): number;
```
Retorna a posição x da câmera *com efeitos de game juice*. <br>
**Return Type**: número

---

```ts
function XijCamera.get_y_juice(): number;
```
Retorna a posição y da câmera *com efeitos de game juice*. <br>
**Return Type**: número

---

```ts
function XijCamera.get_size_juice(): [number, number];
```
Retorna o tamanho da câmera, *incluindo efeitos de game juice*, sendo uma array de dois elementos, largura e altura. <br>
**Return Type**: \[número, número]

---

```ts
function XijCamera.get_width(): number;
```
Retorna a largura da câmera. <br>
**Return Type**: número

---

```ts
function XijCamera.get_height(): number;
```
Retorna a altura da câmera. <br>
**Return Type**: número

---

```ts
function XijCamera.get_width_juice(): number;
```
Retorna a largura da câmera *com efeitos de game juice*. <br>
**Return Type**: número

---

```ts
function XijCamera.get_height_juice(): number;
```
Retorna a altura da câmera *com efeitos de game juice*. <br>
**Return Type**: número

---

```ts
function XijCamera.set_pos(x: number, y: number);
```
Define a posição da câmera (vai considerar o limite da room) <br>
**Parameters**:
| Name |  Type  | Description        |
|:----:|:------:|--------------------|
|  x   | número | A nova posição x |
|  y   | número | A nova posição y |

---

```ts
function XijCamera.move(hsp: number, vsp: number);
```
Move a posição da câmera com base em uma velocidade horizontal e outra vertical. <br>
**Parameters**:
|  Name  |  Type  | Description                                         |
|:------:|:------:|-----------------------------------------------------|
|  hsp   | número | Velocidade horizontal em pixels |
|  vsp   | número | Velocidade vertical em pixels   |


---

```ts
function XijCamera.set_size(width: number, height: number);
```
Define o tamanho da câmera (vai considerar o limite da room) <br>
**Parameters**: <br>
| Name   |  Type  | Description    |
|:------:|:------:|----------------|
|  width | número | A nova largura  |
| height | número | A nova altura |

---

