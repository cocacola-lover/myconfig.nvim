return {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    -- opts=true
    opts={
        keymaps= {
            normal= "gy",
            normal_cur="gyy",
            normal_line="gY",
            normal_cur_line="gYY",
        }
    }
    -- config = function()
    --     require("nvim-surround").setup(M)
    -- end
}
