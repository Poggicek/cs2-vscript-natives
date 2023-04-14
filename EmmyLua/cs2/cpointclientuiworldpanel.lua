---@meta

---@class CPointClientUIWorldPanel
CPointClientUIWorldPanel = {}

---Tells the panel to accept user input.
function CPointClientUIWorldPanel:AcceptUserInput() end

---Adds CSS class(es) to the panel
---@param pszClasses string
function CPointClientUIWorldPanel:AddCSSClasses(pszClasses) end

---Tells the panel to ignore user input.
function CPointClientUIWorldPanel:IgnoreUserInput() end

---Returns whether this entity is grabbable.
---@return boolean
function CPointClientUIWorldPanel:IsGrabbable() end

---Remove CSS class(es) from the panel
---@param pszClasses string
function CPointClientUIWorldPanel:RemoveCSSClasses(pszClasses) end