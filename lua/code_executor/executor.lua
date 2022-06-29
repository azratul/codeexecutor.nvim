local M = {}

local cmd = vim.cmd
local fn = vim.fn
local conf = {}

function M.setup(config)
    conf = config
end

function M.run(file)
    pcall(cmd, 'split go-terminal')
    pcall(cmd, 'resize 10')
    fn.termopen('bash -c "' .. conf.go['command'] .. ' ' .. file .. '"')
    print('Enter the matrix...')
end

return M
