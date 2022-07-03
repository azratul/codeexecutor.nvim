# Neovim Plugin for execute code inside vim

Work in Progress

## How to use

Add this lines into your neovim/nvchad/lunarvim/astrovim config file

Example for a golang service:


> You can do the same for any language


```
    {
        "azratul/codeexecutor.nvim",
        require("code_executor").setup({
            go = {
                command = ". .env && go run",
            },
        })
    },
```


The execute the command with:


```
:CodeExecutor your_golang_main_file.go
```
