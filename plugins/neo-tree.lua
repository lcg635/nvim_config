return {
  enable_diagnostics = true,
  filesystem = {
    filtered_items = {
      hide_gitignored = false,
    },
    window = { mappings = { h = "close_node" } },
  },
  window = {
    mappings = {
        ["R"] = "set_root",
        ["l"] = "toggle_node",
        ["h"] = "close_node",
        ["."] = "toggle_hidden",
    }
  }
}
