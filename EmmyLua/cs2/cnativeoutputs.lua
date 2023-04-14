---@meta

---@class CNativeOutputs
---@overload fun():CNativeOutputs
CNativeOutputs = {}

---Add an output
---@param outputName string
---@param description string
function CNativeOutputs:AddOutput(outputName, description) end

---Initialize with number of outputs
---@param numOutputs number
function CNativeOutputs:Init(numOutputs) end