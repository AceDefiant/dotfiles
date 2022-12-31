config.load_autoconfig(False)

c.content.cookies.accept = "no-unknown-3rdparty"
c.content.headers.user_agent = "Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:53.0) Gecko/20100101 Firefox/53.0"
c.editor.command = ["alacritty", "-e", "nvim", "{}"]

c.url.start_pages = ["file:///home/joe/.config/qutebrowser/custom_pages/homepage/index.html"]

c.url.searchengines = {
    "DEFAULT"   : "https://searx.be/search?q={}",
    "DuckDuckGo"   : "https://duckduckgo.com/?q={}",
    "Google"    : "https://google.com/search?q={}",
    "Brave"     : "https://search.brave.com/search?q={}",
}

c.fonts.default_family = "DejaVuSansMono"
c.fonts.default_size = "12pt"

c.completion.cmd_history_max_items = 5
c.completion.web_history.max_items = 0
c.completion.open_categories = ["bookmarks", "searchengines", "quickmarks"]
c.completion.height = 400

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

config.set("colors.webpage.preferred_color_scheme", "dark")

config.source("code/bindings.py")
config.source("themes/nord-qutebrowser.py")
