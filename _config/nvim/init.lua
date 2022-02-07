local present, impatient = pcall(require, "impatient")

local core_modules = {
  "core.options",
  "core.autocmds",
  "core.mappings",
}

if present then
  impatient.enable_profile()
end

for _, module in ipairs(core_modules) do
  local ok, err = pcall(require, module)
  if not ok then
    error("Error loading " .. module .. "\n\n" .. err)
  end
end


-- non plugin mappings
require("core.mappings").misc()


-- check if custom init.lua file exists
if vim.fn.filereadable(vim.fn.stdpath "config" .. "/lua/custom/init.lua") == 1 then
  -- try to call custom init, if not successful, show error
  local ok, err = pcall(require, "custom")
  if not ok then
    vim.notify("Error loading custom/init.lua\n\n" .. err)
  end
  return
end


-- 🤨 Custom config (for some reason, I can't put plugins config in plugin file...)

vim.cmd [[
    set breakindent formatoptions=1 lbr
    set sessionoptions=blank,buffers,curdir,folds,help,tabpages,winsize
]]

vim.g.user_emmet_leader_key = ","

print(" ────────── Shut the fuck up and start coding 🔥 ──────────")
