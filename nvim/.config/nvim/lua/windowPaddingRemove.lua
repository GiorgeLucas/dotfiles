function Sad(line_nr, from, to, fname)
    vim.cmd(string.format("silent !sed -i '%ss/%s/%s/' %s", line_nr, from, to, fname)) 
  end
  
  function IncreasePadding() 
    Sad('18', 0, 10, '~/.dotfiles/alacritty/.config/alacritty/alacritty.toml')
    Sad('19', 0, 20, '~/.dotfiles/alacritty/.config/alacritty/alacritty.toml')
  end
  
  function DecreasePadding()
    Sad('18', 10, 0, '~/.dotfiles/alacritty/.config/alacritty/alacritty.toml')
    Sad('19', 20, 0, '~/.dotfiles/alacritty/.config/alacritty/alacritty.toml')
  end
  
  vim.cmd[[
    augroup ChangeAlacrittyPadding
     au! 
     au VimEnter * lua DecreasePadding()
     au VimLeavePre * lua IncreasePadding()
    augroup END 
  ]]
