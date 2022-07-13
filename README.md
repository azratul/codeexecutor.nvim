# Neovim Plugin for execute code inside vim

This plugin opens a console and runs the command defined in your vimrc or config file


## How to use

Add this lines into your neovim/nvchad/lunarvim/astrovim config file

Example for a golang and javascript service:


> You can do the same for any language. You must use the file extension in the settings


```
    {
        "azratul/codeexecutor.nvim",
        require("code_executor").setup({
            go = {
                command = ". .env && go run",
            },
            js = {
                command = ". .env && npm run start",
            },
        })
    },
```


Start the service with:

An example based on the given config example:

For "go" with a filename as input (The plugin extracts the extension from the filename):


```
:CodeExecutorStart cmd/your_golang_main_file.go
```


For "js" without a filename as input. :


```
:CodeExecutorStart js
```


Stop and close the service with:


```
:CodeExecutorStop
```


Access the documentation inside vim:


```
:h CodeExecutor
```


There is still a lot of room for improvement, but in the current state it's usable
