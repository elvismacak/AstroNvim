return {
  "CRAG666/code_runner.nvim",
  cmd = {'RunFile'},
  config = function()
    require('code_runner').setup({
      filetype = {
        java = {
          "javac $fileName &&",
          "java $fileNameWithoutExt",
          "rm $fileNameWithoutExt.class"
        },
        go = "go run",
        python = "python -u",
        javascript = "node",
        sh = "zsh"
      },
    })    
  end,
}
