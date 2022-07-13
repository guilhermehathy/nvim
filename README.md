# Arquivo de configuração para nvim

.
├── README.md
├── coc-settings.json
├── init.lua
└── lua
    ├── keymaps.lua
    ├── plugins
    │   └── paq.lua
    └── settings.lua


## Gerenciador de pacotes

Paq é um gerenciador de pocotes escrito em Lua.

Para instalar basta rodar o comando:

```
git clone --depth=1 https://github.com/savq/paq-nvim.git \
    "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/pack/paqs/start/paq-nvim
```

Comandos:

* `PaqInstall` - Para instalar os pacotes

* `PaqSync` - Para sincronizar os pacotes.
