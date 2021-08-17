# Load from Auto Config
config.load_autoconfig(False)

# Cookies
c.content.cookies.accept = "no-unknown-3rdparty"

# User Agent
c.content.headers.user_agent = "Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:53.0) Gecko/20100101 Firefox/53.0"

# External Apps
c.editor.command = ["alacritty", "-e", "nvim", "{}"]
c.fileselect.folder.command = ["alacritty", "-e", "ranger", "{}"]

# Start Pages
c.url.start_pages = ["file:///home/joe/.config/qutebrowser/custom_pages/startpage/index.html"]

# Search Engines
c.url.searchengines = {
    "DEFAULT"   : "https://duckduckgo.com/?q={}",
    "Google"    : "https://google.com/search?q={}",
    "Brave"     : "https://search.brave.com/search?q={}",
    "Searx"     : "https://searx.be/search?q={}",
}

# Key Binds
    # Open Link in mpv
config.bind('<Shift-m>', 'hint links spawn mpv {hint-url}')

# Font
c.fonts.default_family = "Hack Nerd Font"
c.fonts.default_size = "12pt"

# Completion Menu
c.completion.cmd_history_max_items = 0
c.completion.web_history.max_items = 0
c.completion.open_categories = ["bookmarks", "searchengines", "quickmarks"]
c.completion.height = 400

# Better Adblocking
c.content.blocking.method = "both"
c.content.blocking.adblock.lists = [
    "https://easylist.to/easylist/easylist.txt",
    "https://easylist.to/easylist/easyprivacy.txt",
    "https://raw.githubusercontent.com/uBlockOrigin/uAssets/master/filters/badware.txt",
    "https://raw.githubusercontent.com/uBlockOrigin/uAssets/master/filters/filters-2020.txt",
    "https://raw.githubusercontent.com/uBlockOrigin/uAssets/master/filters/filters-2021.txt",
    "https://raw.githubusercontent.com/uBlockOrigin/uAssets/master/filters/filters.txt",
    "https://raw.githubusercontent.com/uBlockOrigin/uAssets/master/filters/legacy.txt",
    "https://raw.githubusercontent.com/uBlockOrigin/uAssets/master/filters/privacy.txt",
    "https://raw.githubusercontent.com/uBlockOrigin/uAssets/master/filters/resource-abuse.txt",
    "https://raw.githubusercontent.com/uBlockOrigin/uAssets/master/filters/unbreak.txt",
    "https://pgl.yoyo.org/adservers/serverlist.php?hostformat=hosts&showintro=1&mimetype=plaintext&_=223428",
    "https://raw.githubusercontent.com/brave/adblock-lists/master/brave-lists/brave-social.txt",
    "https://raw.githubusercontent.com/brave/adblock-lists/master/brave-unbreak.txt",
]

# Colors
    # Enable Dark Mode
c.colors.webpage.darkmode.enabled = True
    # Completion Menu
c.colors.completion.category.bg = "#1B1B1B"
c.colors.completion.category.border.bottom = "#FF6600"
c.colors.completion.category.border.top = "#FF6600"
c.colors.completion.category.fg = "#EEEEEE"
c.colors.completion.even.bg = "#111111"
c.colors.completion.odd.bg = "#222222"
c.colors.completion.fg = "#EEEEEE"
c.colors.completion.item.selected.bg = "#FF6600"
c.colors.completion.item.selected.border.bottom = "#000000"
c.colors.completion.item.selected.border.top = "#000000"
c.colors.completion.item.selected.fg = "#000000"
c.colors.completion.item.selected.match.fg = "#4444FF"
c.colors.completion.match.fg = "#4444FF"
c.colors.completion.scrollbar.bg = "#222222"
c.colors.completion.scrollbar.fg = "#EEEEEE"
    # Hints Menu
c.colors.hints.bg = "#FF6600"
c.colors.hints.fg = "#000000"
c.hints.border = "1px solid #000000"

    # Visual Mode
c.colors.statusbar.caret.bg = "#001299"
c.colors.statusbar.caret.fg = "#EEEEEE"
c.colors.statusbar.caret.selection.bg = "#FF6600"
c.colors.statusbar.caret.selection.fg = "#000000"
    # Command Mode
c.colors.statusbar.command.bg = "#000000"
c.colors.statusbar.command.fg = "#EEEEEE"
c.colors.statusbar.command.private.bg = "#000000"
c.colors.statusbar.command.private.fg = "#EEEEEE"
    # Insert Mode
c.colors.statusbar.insert.bg = "#FF6600"
c.colors.statusbar.insert.fg = "#000000"
    # Normal Mode
c.colors.statusbar.normal.bg = "#000000"
c.colors.statusbar.insert.fg = "#EEEEEE"
    # Status Bar URL
c.colors.statusbar.url.fg = "#EEEEEE"
c.colors.statusbar.url.success.http.fg = "#FF6600"
c.colors.statusbar.url.success.https.fg = "#FF6600"
c.colors.statusbar.url.error.fg = "#FF0000"
    # Tabs
c.colors.tabs.bar.bg = "#111111"
c.colors.tabs.indicator.error = "#FF0000"
c.colors.tabs.indicator.start = "#0000aa"
c.colors.tabs.indicator.stop = "#00aa00"
c.colors.tabs.even.bg = "#111111"
c.colors.tabs.odd.bg = "#222222"
c.colors.tabs.selected.even.bg = "#FF6600"
c.colors.tabs.selected.odd.bg = "#FF6600"
c.colors.tabs.selected.even.fg = "#000000"
c.colors.tabs.selected.odd.fg = "#000000"
