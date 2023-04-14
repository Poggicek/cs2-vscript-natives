---@meta

---@class CDebugOverlayScriptHelper
CDebugOverlayScriptHelper = {}

---Draws an axis. Specify origin + orientation in world space.
---@param Vector_1 Vector
---@param Quaternion_2 Quaternion
---@param float_3 number
---@param bool_4 boolean
---@param float_5 number
function CDebugOverlayScriptHelper:Axis(Vector_1, Quaternion_2, float_3, bool_4, float_5) end

---Draws a world-space axis-aligned box. Specify bounds in world space.
---@param Vector_1 Vector
---@param Vector_2 Vector
---@param int_3 number
---@param int_4 number
---@param int_5 number
---@param int_6 number
---@param bool_7 boolean
---@param float_8 number
function CDebugOverlayScriptHelper:Box(Vector_1, Vector_2, int_3, int_4, int_5, int_6, bool_7, float_8) end

---Draws an oriented box at the origin. Specify bounds in local space.
---@param Vector_1 Vector
---@param Vector_2 Vector
---@param Vector_3 Vector
---@param Quaternion_4 Quaternion
---@param int_5 number
---@param int_6 number
---@param int_7 number
---@param int_8 number
---@param bool_9 boolean
---@param float_10 number
function CDebugOverlayScriptHelper:BoxAngles(Vector_1, Vector_2, Vector_3, Quaternion_4, int_5, int_6, int_7, int_8, bool_9, float_10) end

---Draws a capsule. Specify base in world space.
---@param Vector_1 Vector
---@param Quaternion_2 Quaternion
---@param float_3 number
---@param float_4 number
---@param int_5 number
---@param int_6 number
---@param int_7 number
---@param int_8 number
---@param bool_9 boolean
---@param float_10 number
function CDebugOverlayScriptHelper:Capsule(Vector_1, Quaternion_2, float_3, float_4, int_5, int_6, int_7, int_8, bool_9, float_10) end

---Draws a circle. Specify center in world space.
---@param Vector_1 Vector
---@param Quaternion_2 Quaternion
---@param float_3 number
---@param int_4 number
---@param int_5 number
---@param int_6 number
---@param int_7 number
---@param bool_8 boolean
---@param float_9 number
function CDebugOverlayScriptHelper:Circle(Vector_1, Quaternion_2, float_3, int_4, int_5, int_6, int_7, bool_8, float_9) end

---Draws a circle oriented to the screen. Specify center in world space.
---@param Vector_1 Vector
---@param float_2 number
---@param int_3 number
---@param int_4 number
---@param int_5 number
---@param int_6 number
---@param bool_7 boolean
---@param float_8 number
function CDebugOverlayScriptHelper:CircleScreenOriented(Vector_1, float_2, int_3, int_4, int_5, int_6, bool_7, float_8) end

---Draws a wireframe cone. Specify endpoint and direction in world space.
---@param Vector_1 Vector
---@param Vector_2 Vector
---@param float_3 number
---@param float_4 number
---@param int_5 number
---@param int_6 number
---@param int_7 number
---@param int_8 number
---@param bool_9 boolean
---@param float_10 number
function CDebugOverlayScriptHelper:Cone(Vector_1, Vector_2, float_3, float_4, int_5, int_6, int_7, int_8, bool_9, float_10) end

---Draws a screen-aligned cross. Specify origin in world space.
---@param Vector_1 Vector
---@param float_2 number
---@param int_3 number
---@param int_4 number
---@param int_5 number
---@param int_6 number
---@param bool_7 boolean
---@param float_8 number
function CDebugOverlayScriptHelper:Cross(Vector_1, float_2, int_3, int_4, int_5, int_6, bool_7, float_8) end

---Draws a world-aligned cross. Specify origin in world space.
---@param Vector_1 Vector
---@param float_2 number
---@param int_3 number
---@param int_4 number
---@param int_5 number
---@param int_6 number
---@param bool_7 boolean
---@param float_8 number
function CDebugOverlayScriptHelper:Cross3D(Vector_1, float_2, int_3, int_4, int_5, int_6, bool_7, float_8) end

---Draws an oriented cross. Specify origin in world space.
---@param Vector_1 Vector
---@param Quaternion_2 Quaternion
---@param float_3 number
---@param int_4 number
---@param int_5 number
---@param int_6 number
---@param int_7 number
---@param bool_8 boolean
---@param float_9 number
function CDebugOverlayScriptHelper:Cross3DOriented(Vector_1, Quaternion_2, float_3, int_4, int_5, int_6, int_7, bool_8, float_9) end

---Draws a dashed line. Specify endpoints in world space.
---@param Vector_1 Vector
---@param Vector_2 Vector
---@param float_3 number
---@param int_4 number
---@param int_5 number
---@param int_6 number
---@param int_7 number
---@param int_8 number
---@param bool_9 boolean
---@param float_10 number
function CDebugOverlayScriptHelper:DrawTickMarkedLine(Vector_1, Vector_2, float_3, int_4, int_5, int_6, int_7, int_8, bool_9, float_10) end

---Draws the attachments of the entity
---@param ehandle_1 ehandle
---@param float_2 number
---@param float_3 number
function CDebugOverlayScriptHelper:EntityAttachments(ehandle_1, float_2, float_3) end

---Draws the axis of the entity origin
---@param ehandle_1 ehandle
---@param float_2 number
---@param bool_3 boolean
---@param float_4 number
function CDebugOverlayScriptHelper:EntityAxis(ehandle_1, float_2, bool_3, float_4) end

---Draws bounds of an entity
---@param ehandle_1 ehandle
---@param int_2 number
---@param int_3 number
---@param int_4 number
---@param int_5 number
---@param bool_6 boolean
---@param float_7 number
function CDebugOverlayScriptHelper:EntityBounds(ehandle_1, int_2, int_3, int_4, int_5, bool_6, float_7) end

---Draws the skeleton of the entity
---@param ehandle_1 ehandle
---@param float_2 number
function CDebugOverlayScriptHelper:EntitySkeleton(ehandle_1, float_2) end

---Draws text on an entity
---@param ehandle_1 ehandle
---@param int_2 number
---@param string_3 string
---@param int_4 number
---@param int_5 number
---@param int_6 number
---@param int_7 number
---@param float_8 number
function CDebugOverlayScriptHelper:EntityText(ehandle_1, int_2, string_3, int_4, int_5, int_6, int_7, float_8) end

---Draws a screen-space filled 2D rectangle. Coordinates are in pixels.
---@param Vector2D_1 Vector2D
---@param Vector2D_2 Vector2D
---@param int_3 number
---@param int_4 number
---@param int_5 number
---@param int_6 number
---@param float_7 number
function CDebugOverlayScriptHelper:FilledRect2D(Vector2D_1, Vector2D_2, int_3, int_4, int_5, int_6, float_7) end

---Draws a horizontal arrow. Specify endpoints in world space.
---@param Vector_1 Vector
---@param Vector_2 Vector
---@param float_3 number
---@param int_4 number
---@param int_5 number
---@param int_6 number
---@param int_7 number
---@param bool_8 boolean
---@param float_9 number
function CDebugOverlayScriptHelper:HorzArrow(Vector_1, Vector_2, float_3, int_4, int_5, int_6, int_7, bool_8, float_9) end

---Draws a line between two points
---@param Vector_1 Vector
---@param Vector_2 Vector
---@param int_3 number
---@param int_4 number
---@param int_5 number
---@param int_6 number
---@param bool_7 boolean
---@param float_8 number
function CDebugOverlayScriptHelper:Line(Vector_1, Vector_2, int_3, int_4, int_5, int_6, bool_7, float_8) end

---Draws a line between two points in screenspace
---@param Vector2D_1 Vector2D
---@param Vector2D_2 Vector2D
---@param int_3 number
---@param int_4 number
---@param int_5 number
---@param int_6 number
---@param float_7 number
function CDebugOverlayScriptHelper:Line2D(Vector2D_1, Vector2D_2, int_3, int_4, int_5, int_6, float_7) end

---Pops the identifier used to group overlays. Overlays marked with this identifier can be deleted in a big batch.
function CDebugOverlayScriptHelper:PopDebugOverlayScope() end

---Pushes an identifier used to group overlays. Deletes all existing overlays using this overlay id.
---@param utlstringtoken_1 utlstringtoken
function CDebugOverlayScriptHelper:PushAndClearDebugOverlayScope(utlstringtoken_1) end

---Pushes an identifier used to group overlays. Overlays marked with this identifier can be deleted in a big batch.
---@param utlstringtoken_1 utlstringtoken
function CDebugOverlayScriptHelper:PushDebugOverlayScope(utlstringtoken_1) end

---Removes all overlays marked with a specific identifier, regardless of their lifetime.
---@param utlstringtoken_1 utlstringtoken
function CDebugOverlayScriptHelper:RemoveAllInScope(utlstringtoken_1) end

---Draws a solid cone. Specify endpoint and direction in world space.
---@param Vector_1 Vector
---@param Vector_2 Vector
---@param float_3 number
---@param float_4 number
---@param int_5 number
---@param int_6 number
---@param int_7 number
---@param int_8 number
---@param bool_9 boolean
---@param float_10 number
function CDebugOverlayScriptHelper:SolidCone(Vector_1, Vector_2, float_3, float_4, int_5, int_6, int_7, int_8, bool_9, float_10) end

---Draws a wireframe sphere. Specify center in world space.
---@param Vector_1 Vector
---@param float_2 number
---@param int_3 number
---@param int_4 number
---@param int_5 number
---@param int_6 number
---@param bool_7 boolean
---@param float_8 number
function CDebugOverlayScriptHelper:Sphere(Vector_1, float_2, int_3, int_4, int_5, int_6, bool_7, float_8) end

---Draws a swept box. Specify endpoints in world space and the bounds in local space.
---@param Vector_1 Vector
---@param Vector_2 Vector
---@param Vector_3 Vector
---@param Vector_4 Vector
---@param Quaternion_5 Quaternion
---@param int_6 number
---@param int_7 number
---@param int_8 number
---@param int_9 number
---@param float_10 number
function CDebugOverlayScriptHelper:SweptBox(Vector_1, Vector_2, Vector_3, Vector_4, Quaternion_5, int_6, int_7, int_8, int_9, float_10) end

---Draws 2D text. Specify origin in world space.
---@param Vector_1 Vector
---@param int_2 number
---@param string_3 string
---@param float_4 number
---@param int_5 number
---@param int_6 number
---@param int_7 number
---@param int_8 number
---@param float_9 number
function CDebugOverlayScriptHelper:Text(Vector_1, int_2, string_3, float_4, int_5, int_6, int_7, int_8, float_9) end

---Draws a screen-space texture. Coordinates are in pixels.
---@param string_1 string
---@param Vector2D_2 Vector2D
---@param Vector2D_3 Vector2D
---@param int_4 number
---@param int_5 number
---@param int_6 number
---@param int_7 number
---@param Vector2D_8 Vector2D
---@param Vector2D_9 Vector2D
---@param float_10 number
function CDebugOverlayScriptHelper:Texture(string_1, Vector2D_2, Vector2D_3, int_4, int_5, int_6, int_7, Vector2D_8, Vector2D_9, float_10) end

---Draws a filled triangle. Specify vertices in world space.
---@param Vector_1 Vector
---@param Vector_2 Vector
---@param Vector_3 Vector
---@param int_4 number
---@param int_5 number
---@param int_6 number
---@param int_7 number
---@param bool_8 boolean
---@param float_9 number
function CDebugOverlayScriptHelper:Triangle(Vector_1, Vector_2, Vector_3, int_4, int_5, int_6, int_7, bool_8, float_9) end

---Draws 3D text. Specify origin + orientation in world space.
---@param Vector_1 Vector
---@param Quaternion_2 Quaternion
---@param string_3 string
---@param int_4 number
---@param int_5 number
---@param int_6 number
---@param int_7 number
---@param bool_8 boolean
---@param float_9 number
function CDebugOverlayScriptHelper:VectorText3D(Vector_1, Quaternion_2, string_3, int_4, int_5, int_6, int_7, bool_8, float_9) end

---Draws a vertical arrow. Specify endpoints in world space.
---@param Vector_1 Vector
---@param Vector_2 Vector
---@param float_3 number
---@param int_4 number
---@param int_5 number
---@param int_6 number
---@param int_7 number
---@param bool_8 boolean
---@param float_9 number
function CDebugOverlayScriptHelper:VertArrow(Vector_1, Vector_2, float_3, int_4, int_5, int_6, int_7, bool_8, float_9) end

---Draws a arrow associated with a specific yaw. Specify endpoints in world space.
---@param Vector_1 Vector
---@param float_2 number
---@param float_3 number
---@param float_4 number
---@param int_5 number
---@param int_6 number
---@param int_7 number
---@param int_8 number
---@param bool_9 boolean
---@param float_10 number
function CDebugOverlayScriptHelper:YawArrow(Vector_1, float_2, float_3, float_4, int_5, int_6, int_7, int_8, bool_9, float_10) end