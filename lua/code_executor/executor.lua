local M = {}

local cmd = vim.cmd
local fn = vim.fn
local conf = {}

function M.setup(config)
    conf = config
end

function M.run(file)
    path, filename, ext = M.splitFilename(file)
    pcall(cmd, 'split terminal')
    pcall(cmd, 'resize 10')
    fn.termopen('bash -c "' .. conf[ext]['command'] .. ' ' .. file .. '"')
    print('Running...')
end

function M.splitFilename(strFilename)
    return string.match(strFilename, "(.-)([^\\]-([^\\%.]+))$")
end

return M
