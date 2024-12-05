This configuration uses [BirdeeHub/nixCats](https://github.com/BirdeeHub/nixCats-nvim/tree/main), and is based on the default example configuration.

This directory contains a somewhat idiomatic[^1] `nixCats` config using [`lze`](https://github.com/BirdeeHub/lze) for lazy loading. The example configuration's backup downloading method via `paq` and `mason` for non-Nix systems is retained for now, but I plan to eventually remove it as I don't plan on using this configuration on non-Nix systems.

At the time of writing, this configuration does not stray especially far from the NixCats example config. So far my tweaks are limited to porting over my dashboard from my [NixVim config](https://github.com/Steve-Rion/toolbox), and enabling a few LSPs for languages I use often.


[^1]: where idiomatic mostly means that it doesn't use `lazy.nvim`, and uses `nixCats` to download everything,
    and makes sure to check if its category was enabled before it loads a plugin,
    and makes use of the [luaUtils template](https://github.com/BirdeeHub/nixCats-nvim/tree/main/templates/luaUtils/lua/nixCatsUtils)
    (see :h [nixCats.luaUtils](https://nixcats.org/nixCats_luaUtils.html)),
    and uses [`lze`](https://github.com/BirdeeHub/lze).
