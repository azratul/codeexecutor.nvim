local M = {}

local cmd = vim.cmd
local fn = vim.fn
local conf = {}

BufferName = ""

function M.setup(config)
    conf = config
end

local function splitFilename(strFilename)
    local s = strFilename:match("^.+(%..+)$")

    if s ~= nil then
        return s:sub(2), strFilename
    end

    return strFilename, ""
end

function M.run(file)
    local ext, filename = splitFilename(file)

    if conf[ext] ~= nil then
        pcall(cmd, 'split running-app')
        pcall(cmd, 'resize 10')
        fn.termopen('bash -c "' .. conf[ext]['command'] .. ' ' .. filename .. '"')
        pcall(cmd, 'normal G')
        BufferName = vim.api.nvim_buf_get_name(0)
        print('Running...')
    else
        print('No command for this file type')
    end
end

function M.close()
    pcall(cmd, 'bdelete! ' .. BufferName)
end

return M
