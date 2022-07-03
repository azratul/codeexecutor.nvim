local M = {}

local cmd = vim.cmd
local fn = vim.fn
local conf = {}

function M.setup(config)
    conf = config
end

local function splitFilename(strFilename)
    return string.match(strFilename, "(.-)([^\\]-([^\\%.]+))$")
end

function M.run(file)
    local _, _, ext = splitFilename(file)
    if conf[ext] ~= nil then
        pcall(cmd, 'split terminal')
        pcall(cmd, 'resize 10')
        fn.termopen('bash -c "' .. conf[ext]['command'] .. ' ' .. file .. '"')
        print('Running...')
    else
        print('No command for this file type')
    end
end

return M
