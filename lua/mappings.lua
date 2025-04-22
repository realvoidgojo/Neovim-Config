vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

-- vim.keymap.set("n", "<up>", "<C-a>", { desc = "Increment" })
-- vim.keymap.set("n", "<down>", "<C-x>", { desc = "Decrement" })

-- Switch to the next buffer
vim.keymap.set("n", "<leader>bn", "<cmd>bnext<CR>", { desc = "Next Buffer" })

-- Switch to the previous buffer
vim.keymap.set("n", "<leader>bp", "<cmd>bprevious<CR>", { desc = "Previous Buffer" })

-- Close the current buffer
vim.keymap.set("n", "<leader>bd", "<cmd>bd<CR>", { desc = "Close Buffer" })

vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})

-- move the cursor to specific widnow
-- vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "switch window left" })
-- vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "switch window right" })
-- vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "switch window down" })
-- vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "switch window up" })

-- maps for colemak  users
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "switch window left" })
vim.keymap.set("n", "<C-n>", "<C-w>j", { desc = "switch window down" })
vim.keymap.set("n", "<C-e>", "<C-w>k", { desc = "switch window up" })
vim.keymap.set("n", "<C-i>", "<C-w>l", { desc = "switch window right" })

-- Custom actions reassigned to new key combinations
vim.keymap.set("n", "<leader>n", "j", { desc = "Move down" })
vim.keymap.set("n", "<leader>N", "n", { desc = "Repeat last search" })
vim.keymap.set("n", "<leader>m", "h", { desc = "Move left" })
vim.keymap.set("n", "<leader>e", "k", { desc = "Move up" })
vim.keymap.set("n", "<leader>i", "l", { desc = "Move right" })
vim.keymap.set("n", "<leader>h", "N", { desc = "Repeat last search backward" })
vim.keymap.set("n", "<leader>l", "i", { desc = "Insert mode" })

-- vim.keymap.set("n", "n", "j", { desc = "left" })
-- vim.keymap.set("n", "N", "n", { desc = "left" })
-- vim.keymap.set("n", "m", "h", { desc = "down" })
-- vim.keymap.set("n", "e", "k", { desc = "up" })
-- vim.keymap.set("n", "i", "l", { desc = "right" })
-- vim.keymap.set("n", "h", "N", { desc = "switch window right" })
-- vim.keymap.set("n", "l", "i", { desc = "switch window right" })

-- File explorer
vim.keymap.set("n", "<leader>fe", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle File Explorer" })

-- resize the panes of window
vim.keymap.set("n", "<C-Up>", "<cmd>resize +2<cr>", { desc = "Increase Window Height" })
vim.keymap.set("n", "<C-Down>", "<cmd>resize -2<cr>", { desc = "Decrease Window Height" })
vim.keymap.set("n", "<C-Left>", "<cmd>vertical resize -2<cr>", { desc = "Decrease Window Width" })
vim.keymap.set("n", "<C-Right>", "<cmd>vertical resize +2<cr>", { desc = "Increase Window Width" })

vim.keymap.set("n", "<C-d>", "<C-d>zz", {})
vim.keymap.set("n", "<C-u>", "<C-u>zz", {})

-- Create a new tab
vim.keymap.set("n", "<leader>tn", "<cmd>tabnew<CR>", { desc = "New Tab" })

-- Switch to the next tab
vim.keymap.set("n", "<leader>tl", "<cmd>tabnext<CR>", { desc = "Next Tab" })

-- Switch to the previous tab
vim.keymap.set("n", "<leader>th", "<cmd>tabprevious<CR>", { desc = "Previous Tab" })

-- Close the current tab
vim.keymap.set("n", "<leader>tc", "<cmd>tabclose<CR>", { desc = "Close Tab" })

vim.keymap.set("n", "<leader>rp", function()
    local file = vim.fn.expand("%:p") -- Get the full path of the current file
    require("toggleterm.terminal").Terminal:new({
        cmd = "python3 " .. file, -- Use python3 to execute the file
        direction = "horizontal", -- Open in a horizontal split
        close_on_exit = false, -- Keep the terminal open after execution
    }):toggle()
end, { desc = "Run Python File in Horizontal Terminal" })

-- Open a terminal with Bash in a horizontal split
vim.keymap.set("n", "<leader>rt", function()
    require("toggleterm.terminal").Terminal:new({
        cmd = "bash",
        direction = "horizontal",
    }):toggle()
end, { desc = "Open Bash Terminal in Horizontal Split" })

-- Run the current Python file using python3 in a horizontal split
vim.keymap.set("n", "<leader>sp", function()
    local file = vim.fn.expand("%")
    require("toggleterm.terminal").Terminal:new({
        cmd = "python3 " .. file,
        direction = "horizontal",
    }):toggle()
end, { desc = "Run Python File with python3 in Horizontal Split" })

