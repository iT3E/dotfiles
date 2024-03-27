return {
  "jackMort/ChatGPT.nvim",
  event = "VeryLazy",
  config = function()
    require("chatgpt").setup({
      edit_with_instructions = {
        diff = true, -- An example option; replace with actual options you want to customize.
      },
      popup_layout = {
        default = "center",
        center = {
          width = "90%",
          height = "90%",
        },
        right = {
          width = "30%",
          width_settings_open = "50%",
        },
      },
      openai_params = {
        model = "gpt-4-0125-preview",
        max_tokens = 4095,
      },
    })
  end,
  dependencies = {
    "MunifTanjim/nui.nvim",
    "nvim-lua/plenary.nvim",
    "folke/trouble.nvim",
    "nvim-telescope/telescope.nvim",
  },
}
