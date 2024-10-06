return {
    'm4xshen/autoclose.nvim',
    config = function()
        require('autoclose').setup({
            options = {
                disable_when_touch = true,
                touch_regex = "[%w(%[{]",
                pair_spaces = false,
                disable_command_mode = true
            }
        })
    end
}
