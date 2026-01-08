return {
  'chrisgrieser/nvim-various-textobjs',
  event = 'VeryLazy',
  opts = {
    keymaps = {
      useDefaults = true,
      -- Disable restOfIndentation and restOfParagraph textobjects because they clash with native keybindings
      disabledDefaults = {"r", "R"},
    },
  },
}
