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


Execute the command with:


```
:CodeExecutorStart your_golang_main_file.go
```


Stop and close the buffer with:


```
:CodeExecutorStop
```


Access the documentation inside vim:


```
:h CodeExecutor
```
