{ lib, buildVimPluginFrom2Nix, fetchurl, fetchgit }:

{
  abbreinder-nvim = buildVimPluginFrom2Nix {
    pname = "abbreinder-nvim";
    version = "2022-04-28";
    src = fetchurl {
      url = "https://github.com/0styx0/abbreinder.nvim/archive/5b2b5ff08a9ada42238d733aeebc6d3d96314d77.tar.gz";
      sha256 = "0hiab78j61gdn9zx4458lqllm9bqnkmrinw8p2mp8whvyi2asd40";
    };
    meta = with lib; {
      description = "Abbreviation reminder plugin for Neovim 0.5+";
      homepage = "https://github.com/0styx0/abbreinder.nvim";
      license = with licenses; [ gpl3Only ];
    };
  };
  penvim = buildVimPluginFrom2Nix {
    pname = "penvim";
    version = "2022-07-23";
    src = fetchurl {
      url = "https://github.com/Abstract-IDE/penvim/archive/028c19f81eba9eaf4fe4876c60e3491b3389322f.tar.gz";
      sha256 = "1nlhcm34hhlwnqphfngqkrzhlb73jnk9aaa3ig94iajmhx29x0i1";
    };
    meta = with lib; {
      description = "Project's root directory and documents Indentation detector with project based config loader";
      homepage = "https://github.com/Abstract-IDE/penvim";
      license = with licenses; [ mit ];
    };
  };
  messages-nvim = buildVimPluginFrom2Nix {
    pname = "messages-nvim";
    version = "2022-10-24";
    src = fetchurl {
      url = "https://github.com/AckslD/messages.nvim/archive/e4b2a570c97bb94dd6f25808e9379ae98499d12f.tar.gz";
      sha256 = "1jlzxpdla3j32gh3ksh3177nqi2zy3dxwy34gs64q5v403i024r9";
    };
    meta = with lib; {
      description = "Capture and show any messages in a customisable (floating) buffer";
      homepage = "https://github.com/AckslD/messages.nvim";
    };
  };
  nvim-FeMaco-lua = buildVimPluginFrom2Nix {
    pname = "nvim-FeMaco-lua";
    version = "2022-10-10";
    src = fetchurl {
      url = "https://github.com/AckslD/nvim-FeMaco.lua/archive/469465fc1adf8bddc2c9bbe549d38304de95e9f7.tar.gz";
      sha256 = "10ii0786xx8f2z5jb82k3rpdp0ma87cxywns5dz34jx9gsmmrg0k";
    };
    meta = with lib; {
      description = "Catalyze your Fenced Markdown Code-block editing!";
      homepage = "https://github.com/AckslD/nvim-FeMaco.lua";
    };
  };
  nvim-gfold-lua = buildVimPluginFrom2Nix {
    pname = "nvim-gfold-lua";
    version = "2022-10-19";
    src = fetchurl {
      url = "https://github.com/AckslD/nvim-gfold.lua/archive/1a8483161a35c66bbc7c40f00af2beafac9a816e.tar.gz";
      sha256 = "16j15siir4rvgk15iw9gc8wn32x1fpdhbagygbbmw823n5g9nqwd";
    };
    meta = with lib; {
      description = "nvim plugin using gfold to switch repo and have statusline component";
      homepage = "https://github.com/AckslD/nvim-gfold.lua";
      license = with licenses; [ mit ];
    };
  };
  nvim-revJ-lua = buildVimPluginFrom2Nix {
    pname = "nvim-revJ-lua";
    version = "2022-04-11";
    src = fetchurl {
      url = "https://github.com/AckslD/nvim-revJ.lua/archive/fca94c6b401f3b0fa9554e1b0d5251f8180b15a2.tar.gz";
      sha256 = "137hb835vlqywbfha7n5z246iw5agz78k1gk8s8r0yivshggfhkl";
    };
    meta = with lib; {
      description = "Nvim-plugin for doing the opposite of join-line (J) of arguments written in lua";
      homepage = "https://github.com/AckslD/nvim-revJ.lua";
    };
  };
  swenv-nvim = buildVimPluginFrom2Nix {
    pname = "swenv-nvim";
    version = "2022-09-19";
    src = fetchurl {
      url = "https://github.com/AckslD/swenv.nvim/archive/46c94fcb452e8a10ba7c092d3db114f4d7d64d3e.tar.gz";
      sha256 = "07hc63n4fbk48111fabs4zrwc6vvck7kdi0ibbx6g3xk6ar23z02";
    };
    meta = with lib; {
      description = "Tiny plugin to quickly switch python virtual environments from within neovim without restarting";
      homepage = "https://github.com/AckslD/swenv.nvim";
    };
  };
  nvim-expand-expr = buildVimPluginFrom2Nix {
    pname = "nvim-expand-expr";
    version = "2021-08-14";
    src = fetchurl {
      url = "https://github.com/AllenDang/nvim-expand-expr/archive/365cc2a0111228938fb46cffb9cc1a246d787cf0.tar.gz";
      sha256 = "1ws39d2y5gcj0df1jl8bwzwgjzsz7n88b090m0bxj6xmj8y0f7a3";
    };
    meta = with lib; {
      description = "Expand and repeat expression to multiple lines for neovim";
      homepage = "https://github.com/AllenDang/nvim-expand-expr";
      license = with licenses; [ mit ];
    };
  };
  code-runner-nvim = buildVimPluginFrom2Nix {
    pname = "code-runner-nvim";
    version = "2022-10-02";
    src = fetchurl {
      url = "https://github.com/CRAG666/code_runner.nvim/archive/cbdd429972d0b55161fb9bab09862e730a4a72ac.tar.gz";
      sha256 = "18nnmcqnjqz5wg7jhv4gwq96m6g0q7djkw03d8gv3j7d85mbnn4r";
    };
    meta = with lib; {
      description = "Neovim plugin.The best code runner you could have, it is like the one in vscode but with super powers, it manages projects like in intellij but without being slow";
      homepage = "https://github.com/CRAG666/code_runner.nvim";
      license = with licenses; [ mit ];
    };
  };
  present-nvim = buildVimPluginFrom2Nix {
    pname = "present-nvim";
    version = "2022-04-15";
    src = fetchurl {
      url = "https://github.com/Chaitanyabsprip/present.nvim/archive/3e9ac3f1a1cdef1b33f84fa98914951004512fde.tar.gz";
      sha256 = "1163n58lifmy5l168phxi65xx5bbsjw2gl91y5swkcrifmvy3c1l";
    };
    meta = with lib; {
      description = "Presentation plugin for neovim written in lua";
      homepage = "https://github.com/Chaitanyabsprip/present.nvim";
    };
  };
  cmake-tools-nvim = buildVimPluginFrom2Nix {
    pname = "cmake-tools-nvim";
    version = "2022-12-11";
    src = fetchurl {
      url = "https://github.com/Civitasv/cmake-tools.nvim/archive/86124bddb5638368985c0b59b7c134e499a9e21b.tar.gz";
      sha256 = "0w6jxwrfpcnzip9prqlk8imywjhp23yg6b1iz8gf99s4jnfja9xh";
    };
    meta = with lib; {
      description = "CMake integration in Neovim";
      homepage = "https://github.com/Civitasv/cmake-tools.nvim";
      license = with licenses; [ gpl3Only ];
    };
  };
  cosmic-ui = buildVimPluginFrom2Nix {
    pname = "cosmic-ui";
    version = "2022-05-16";
    src = fetchurl {
      url = "https://github.com/CosmicNvim/cosmic-ui/archive/d0445a5df703207b700151fb87537ac4bc3f962f.tar.gz";
      sha256 = "0lnq8359h3mdjj9id28vks8zva28cmr9vg188b64ymbc0a30g0mz";
    };
    meta = with lib; {
      description = "Cosmic-UI is a simple wrapper around specific vim functionality. Built in order to provide a quick and easy way to create a Cosmic UI experience with Neovim!";
      homepage = "https://github.com/CosmicNvim/cosmic-ui";
      license = with licenses; [ gpl3Only ];
    };
  };
  indent-o-matic = buildVimPluginFrom2Nix {
    pname = "indent-o-matic";
    version = "2022-11-01";
    src = fetchurl {
      url = "https://github.com/Darazaki/indent-o-matic/archive/749b7cbae2d52aa1f65b6a2cd7b879a0b52ac3a1.tar.gz";
      sha256 = "1fb2r61xwvddr18p00h3f97zp4xqlz7mpvnj6cp9q1s4mirmp4js";
    };
    meta = with lib; {
      description = "Dumb automatic fast indentation detection for Neovim written in Lua";
      homepage = "https://github.com/Darazaki/indent-o-matic";
      license = with licenses; [ mit ];
    };
  };
  jester = buildVimPluginFrom2Nix {
    pname = "jester";
    version = "2022-10-28";
    src = fetchurl {
      url = "https://github.com/David-Kunz/jester/archive/3065b2139c4cc26b4cea1bdab98016c60b4f48de.tar.gz";
      sha256 = "1wkd7cwpn4lfrs60wy4a1qd2sn1fv1591ycirzpnlryf4vkhkypy";
    };
    meta = with lib; {
      description = "A Neovim plugin to easily run and debug Jest tests";
      homepage = "https://github.com/David-Kunz/jester";
      license = with licenses; [ unlicense ];
    };
  };
  vs-tasks-nvim = buildVimPluginFrom2Nix {
    pname = "vs-tasks-nvim";
    version = "2022-11-28";
    src = fetchurl {
      url = "https://github.com/EthanJWright/vs-tasks.nvim/archive/2f1164a4e5a6853911c2f71b3262d54212282b2f.tar.gz";
      sha256 = "0836xpqllca4my2mbwqdjgc5i0gyk6k7zk3qw2l38lkwkdvcrnxk";
    };
    meta = with lib; {
      description = "A telescope plugin that runs tasks similar to VS Code's task implementation";
      homepage = "https://github.com/EthanJWright/vs-tasks.nvim";
    };
  };
  nvim = buildVimPluginFrom2Nix {
    pname = "nvim";
    version = "2022-11-21";
    src = fetchurl {
      url = "https://github.com/Everblush/nvim/archive/03f1fc46d6bb2a1bc260e7fa1c913c31d4b290f7.tar.gz";
      sha256 = "0z2rd3g0v3gkzsdkwryj2rmx3170d2lks1yvpw03gzniq25wgilw";
    };
    meta = with lib; {
      description = "A port of everblush.vim but written in lua";
      homepage = "https://github.com/Everblush/nvim";
    };
  };
  command-center-nvim = buildVimPluginFrom2Nix {
    pname = "command-center-nvim";
    version = "2022-11-25";
    src = fetchurl {
      url = "https://github.com/FeiyouG/command_center.nvim/archive/0d820c438c871fe31ed942bc592a070da1564141.tar.gz";
      sha256 = "04p6jc5akw85h48f92w9k3hww6sk236hvjbpmdhai77r0c4nj73d";
    };
    meta = with lib; {
      description = "Create and manage keybindings and commands in a more organized manner, and search them quickly through Telescope";
      homepage = "https://github.com/FeiyouG/command_center.nvim";
      license = with licenses; [ mit ];
    };
  };
  aquarium-vim = buildVimPluginFrom2Nix {
    pname = "aquarium-vim";
    version = "2022-06-22";
    src = fetchurl {
      url = "https://github.com/FrenzyExists/aquarium-vim/archive/1f9417b11146580b47f2ecae26b9f3a75bf5e526.tar.gz";
      sha256 = "0bmsz0ss8443f8hyrsm94kvfd4xf6y70l94crm7b2vkjjb835wi1";
    };
    meta = with lib; {
      description = "🌊 Aquarium, a simple vibrant dark theme for vim 🗒";
      homepage = "https://github.com/FrenzyExists/aquarium-vim";
      license = with licenses; [ mit ];
    };
  };
  rasi-vim = buildVimPluginFrom2Nix {
    pname = "rasi-vim";
    version = "2022-02-16";
    src = fetchurl {
      url = "https://github.com/Fymyte/rasi.vim/archive/a3c5eaf37f2f778f4d62dad2f1e3dbb4596ac6eb.tar.gz";
      sha256 = "1bqza91f74qq10m61yhy6876vq4mrzybjph7xrapvxk53w8mp3b5";
    };
    meta = with lib; {
      description = "Rofi config syntax highlighting for vim";
      homepage = "https://github.com/Fymyte/rasi.vim";
      license = with licenses; [ mit ];
    };
  };
  nvim-cartographer = buildVimPluginFrom2Nix {
    pname = "nvim-cartographer";
    version = "2022-04-18";
    src = fetchurl {
      url = "https://github.com/Iron-E/nvim-cartographer/archive/fbe977c9529019376db9426cccf04bfdadeafc69.tar.gz";
      sha256 = "17wz22d0lbyycq9j5n26lay3s6rqqih1zpba8m86isqaz7bbafwg";
    };
    meta = with lib; {
      description = "Create Neovim `:map`pings in Lua with ease!";
      homepage = "https://github.com/Iron-E/nvim-cartographer";
    };
  };
  nvim-ts-context-commentstring = buildVimPluginFrom2Nix {
    pname = "nvim-ts-context-commentstring";
    version = "2022-10-29";
    src = fetchurl {
      url = "https://github.com/JoosepAlviste/nvim-ts-context-commentstring/archive/32d9627123321db65a4f158b72b757bcaef1a3f4.tar.gz";
      sha256 = "1s9l5pasllskzw8kv3zm9yxj2g85gc5wphqqf127r2g43mkw5g53";
    };
    meta = with lib; {
      description = "Neovim treesitter plugin for setting the commentstring based on the cursor location in a file";
      homepage = "https://github.com/JoosepAlviste/nvim-ts-context-commentstring";
      license = with licenses; [ mit ];
    };
  };
  lsp-setup-nvim = buildVimPluginFrom2Nix {
    pname = "lsp-setup-nvim";
    version = "2022-10-15";
    src = fetchurl {
      url = "https://github.com/junnplus/lsp-setup.nvim/archive/9e332a375650d0c69287aaf3881672013ef8958c.tar.gz";
      sha256 = "0fnkzs7mfcgsd2q2977kyzlbllf8mn1flshsv2133lxpcfid3d3m";
    };
    meta = with lib; {
      description = "A simple wrapper for nvim-lspconfig and mason-lspconfig to easily setup LSP servers";
      homepage = "https://github.com/junnplus/lsp-setup.nvim";
      license = with licenses; [ asl20 ];
    };
  };
  nvim-custom-diagnostic-highlight = buildVimPluginFrom2Nix {
    pname = "nvim-custom-diagnostic-highlight";
    version = "2022-09-22";
    src = fetchurl {
      url = "https://github.com/Kasama/nvim-custom-diagnostic-highlight/archive/9f23b3063bb7d56e1c62c33176e7182dad98c431.tar.gz";
      sha256 = "1idc01g4s9h30v9gpk2zzwgjlariykbrxnnz65qgl0mrw6vfbh6j";
    };
    meta = with lib; {
      description = "Simple plugin to add Highlights based on diagnostics";
      homepage = "https://github.com/Kasama/nvim-custom-diagnostic-highlight";
      license = with licenses; [ mit ];
    };
  };
  LuaSnip = buildVimPluginFrom2Nix {
    pname = "LuaSnip";
    version = "2022-12-11";
    src = fetchurl {
      url = "https://github.com/L3MON4D3/LuaSnip/archive/8b25e74761eead3dc47ce04b5e017fd23da7ad7e.tar.gz";
      sha256 = "1kha8c5jl462pxbl2275isz2g1z3qf6cr82hfg99qny8bpy5c2k7";
    };
    meta = with lib; {
      description = "Snippet Engine for Neovim written in Lua";
      homepage = "https://github.com/L3MON4D3/LuaSnip";
      license = with licenses; [ asl20 ];
    };
  };
  telescope-command-palette-nvim = buildVimPluginFrom2Nix {
    pname = "telescope-command-palette-nvim";
    version = "2022-01-31";
    src = fetchurl {
      url = "https://github.com/LinArcX/telescope-command-palette.nvim/archive/1944d6312b29a0b41531ea3cf3912f03e4eb1705.tar.gz";
      sha256 = "0c9czxkkvqla9lkc6ivj8d7rrm6klbjvlafrykc906nym5qzncc2";
    };
    meta = with lib; {
      description = "Create key-bindings and watch them with telescope :telescope:";
      homepage = "https://github.com/LinArcX/telescope-command-palette.nvim";
      license = with licenses; [ gpl3Only ];
    };
  };
  nest-nvim = buildVimPluginFrom2Nix {
    pname = "nest-nvim";
    version = "2021-09-26";
    src = fetchurl {
      url = "https://github.com/LionC/nest.nvim/archive/e5da827a3adfb383b56587bdf4eb62fae4154364.tar.gz";
      sha256 = "11k3fczmyxaa8qzvplq5sn236i4y64qqd6n6dsljs3h780x9p0nk";
    };
    meta = with lib; {
      description = "No description";
      homepage = "https://github.com/LionC/nest.nvim";
      license = with licenses; [ mit ];
    };
  };
  OneTerm-nvim = buildVimPluginFrom2Nix {
    pname = "OneTerm-nvim";
    version = "2022-03-14";
    src = fetchurl {
      url = "https://github.com/LoricAndre/OneTerm.nvim/archive/5bff7afaaf4b9d2f41b9cddd8b1c4746759f07fb.tar.gz";
      sha256 = "1b37sc11ffli125f0plyr5b6hz4952w3iqwakbv89wliardmcf8x";
    };
    meta = with lib; {
      description = "One terminal plugin to rule them all ! (eventually)";
      homepage = "https://github.com/LoricAndre/OneTerm.nvim";
    };
  };
  comment-box-nvim = buildVimPluginFrom2Nix {
    pname = "comment-box-nvim";
    version = "2022-02-05";
    src = fetchurl {
      url = "https://github.com/LudoPinelli/comment-box.nvim/archive/117d55108edf3758da52cf1117584b974f5e76da.tar.gz";
      sha256 = "1h4wgkyqb78mgl4n1z78p4hmy6kpbv16xj52c0yb1sx3kj31xm6l";
    };
    meta = with lib; {
      description = ":sparkles: Clarify and beautify your comments using boxes and lines";
      homepage = "https://github.com/LudoPinelli/comment-box.nvim";
      license = with licenses; [ mit ];
    };
  };
  everblush-vim = buildVimPluginFrom2Nix {
    pname = "everblush-vim";
    version = "2022-09-05";
    src = fetchurl {
      url = "https://github.com/Everblush/everblush.vim/archive/d8b9b8eb427afb4d6f4c931a7519236a39e3a9de.tar.gz";
      sha256 = "0sni3169vh16787fsvx5hsl6ha58kslspqjhvzpkc33bjgpqyip2";
    };
    meta = with lib; {
      description = "🎨 A beautiful and dark vim colorscheme. ";
      homepage = "https://github.com/Everblush/everblush.vim";
      license = with licenses; [ mit ];
    };
  };
  adwaita-nvim = buildVimPluginFrom2Nix {
    pname = "adwaita-nvim";
    version = "2022-10-25";
    src = fetchurl {
      url = "https://github.com/Mofiqul/adwaita.nvim/archive/36fb0e176082bd7b51764e53c0a43f5089100337.tar.gz";
      sha256 = "0wbqq1l9k1l60vpafjki0g99xs8lkrxf13kpggaf06k3dwmbsi8g";
    };
    meta = with lib; {
      description = "Neovim colorscheme using Gnome Adwaita syntax";
      homepage = "https://github.com/Mofiqul/adwaita.nvim";
    };
  };
  dracula-nvim = buildVimPluginFrom2Nix {
    pname = "dracula-nvim";
    version = "2022-12-09";
    src = fetchurl {
      url = "https://github.com/Mofiqul/dracula.nvim/archive/3fef2ddad976873dd9c9e769e14bd6ae10a3fdff.tar.gz";
      sha256 = "0b2vbxv15zbchq161splc8lm405yg9ivzybdklpbqaahy7nlh1m5";
    };
    meta = with lib; {
      description = "Dracula colorscheme for neovim written in Lua";
      homepage = "https://github.com/Mofiqul/dracula.nvim";
      license = with licenses; [ mit ];
    };
  };
  vscode-nvim = buildVimPluginFrom2Nix {
    pname = "vscode-nvim";
    version = "2022-12-09";
    src = fetchurl {
      url = "https://github.com/Mofiqul/vscode.nvim/archive/dabd5454e88d9ac9f91a5c2f9f6b347410e31162.tar.gz";
      sha256 = "01w94ql5zqsfin3a727gz97mxmyybzws36shp1chr6iya0lsy0fg";
    };
    meta = with lib; {
      description = "Neovim/Vim color scheme inspired by Dark+ and Light+ theme in Visual Studio Code";
      homepage = "https://github.com/Mofiqul/vscode.nvim";
      license = with licenses; [ mit ];
    };
  };
  exrc-nvim = buildVimPluginFrom2Nix {
    pname = "exrc-nvim";
    version = "2022-08-10";
    src = fetchurl {
      url = "https://github.com/MunifTanjim/exrc.nvim/archive/7e6a93df0b84caa830b327dfb09c7d932d990367.tar.gz";
      sha256 = "1v7r8jl5xxwg3254xv0wiwa66qra0cyk392cjpgmf50l34s6vkz2";
    };
    meta = with lib; {
      description = "Secure Project Local Config for Neovim";
      homepage = "https://github.com/MunifTanjim/exrc.nvim";
      license = with licenses; [ mit ];
    };
  };
  nui-nvim = buildVimPluginFrom2Nix {
    pname = "nui-nvim";
    version = "2022-12-09";
    src = fetchurl {
      url = "https://github.com/MunifTanjim/nui.nvim/archive/2a6533fb798efad7dd783311315bab8dc5eb381b.tar.gz";
      sha256 = "1x5rnjvnzk4s954jk1bc1gwfvkc5498fnglfbgm31h6xjy8dkhdg";
    };
    meta = with lib; {
      description = "UI Component Library for Neovim";
      homepage = "https://github.com/MunifTanjim/nui.nvim";
      license = with licenses; [ mit ];
    };
  };
  prettier-nvim = buildVimPluginFrom2Nix {
    pname = "prettier-nvim";
    version = "2022-11-19";
    src = fetchurl {
      url = "https://github.com/MunifTanjim/prettier.nvim/archive/918b99f5ddd7a56395fd393767ab6a3c15a50789.tar.gz";
      sha256 = "09bkn0853lr8yvmx6a8p3iyx619wgavcwr6glack3bcbc0jsgl5q";
    };
    meta = with lib; {
      description = "Prettier plugin for Neovim's built-in LSP client";
      homepage = "https://github.com/MunifTanjim/prettier.nvim";
      license = with licenses; [ mit ];
    };
  };
  due-nvim = buildVimPluginFrom2Nix {
    pname = "due-nvim";
    version = "2022-04-15";
    src = fetchurl {
      url = "https://github.com/nfrid/due.nvim/archive/6580854faa9abfba1f4719b25ad6d3652e1df2b6.tar.gz";
      sha256 = "1hq0davwxkyix5mid51gylj83hdry2nig49dmalxha6r925isj64";
    };
    meta = with lib; {
      description = "Neovim plugin for displaying due dates";
      homepage = "https://github.com/nfrid/due.nvim";
      license = with licenses; [ mit ];
    };
  };
  markdown-togglecheck = buildVimPluginFrom2Nix {
    pname = "markdown-togglecheck";
    version = "2022-11-18";
    src = fetchurl {
      url = "https://github.com/nfrid/markdown-togglecheck/archive/c0656836e2ef0b1c2ff6d8b68d3d11ac7973282e.tar.gz";
      sha256 = "0q0bvpfb19hjghyg62ih1r8bp0nray1jwdv4w65l0pq4hdcs6flg";
    };
    meta = with lib; {
      description = "Simple neovim plugin to toggle checkboxes in markdown";
      homepage = "https://github.com/nfrid/markdown-togglecheck";
      license = with licenses; [ mit ];
    };
  };
  treesitter-utils = buildVimPluginFrom2Nix {
    pname = "treesitter-utils";
    version = "2022-11-18";
    src = fetchurl {
      url = "https://github.com/nfrid/treesitter-utils/archive/8505c912e29388d2ebb92cf22e91e55052a861cd.tar.gz";
      sha256 = "1hvd55d2vnisbkyry15xahvscfgbqxakncjwlyclkd2m1jwjxqh9";
    };
    meta = with lib; {
      description = "Treesitter methods to make my life less miserable";
      homepage = "https://github.com/nfrid/treesitter-utils";
      license = with licenses; [ mit ];
    };
  };
  guess-indent-nvim = buildVimPluginFrom2Nix {
    pname = "guess-indent-nvim";
    version = "2022-07-17";
    src = fetchurl {
      url = "https://github.com/NMAC427/guess-indent.nvim/archive/c37467baa1a51b74ed767cbe0540fce44e03d828.tar.gz";
      sha256 = "1qwrlm1jlxjb9fqndm9m0j6zac57acf8nnq1wzfkkzknxf8c2v5f";
    };
    meta = with lib; {
      description = "Automatic indentation style detection for Neovim";
      homepage = "https://github.com/NMAC427/guess-indent.nvim";
      license = with licenses; [ mit ];
    };
  };
  cheovim = buildVimPluginFrom2Nix {
    pname = "cheovim";
    version = "2022-09-24";
    src = fetchurl {
      url = "https://github.com/NTBBloodbath/cheovim/archive/ca4f08f85c5d819cf0d59f3cd8f5357f364496ca.tar.gz";
      sha256 = "1f1bb1v3iz4gx8napprnsjagvrj7kdqmym1as5k4d1isx90b6bww";
    };
    meta = with lib; {
      description = "Neovim configuration switcher written in Lua. Inspired by chemacs";
      homepage = "https://github.com/NTBBloodbath/cheovim";
      license = with licenses; [ gpl2Only ];
    };
  };
  doom-one-nvim = buildVimPluginFrom2Nix {
    pname = "doom-one-nvim";
    version = "2022-11-21";
    src = fetchurl {
      url = "https://github.com/NTBBloodbath/doom-one.nvim/archive/c31578ce497d19efc2911113d1669b3d9789511f.tar.gz";
      sha256 = "105j2s49p5jh56fx52mhbjg218nk6p86f56n426xkssf1q9y2169";
    };
    meta = with lib; {
      description = "doom-emacs' doom-one Lua port for Neovim";
      homepage = "https://github.com/NTBBloodbath/doom-one.nvim";
      license = with licenses; [ mit ];
    };
  };
  nvim-colorizer-lua = buildVimPluginFrom2Nix {
    pname = "nvim-colorizer-lua";
    version = "2022-10-29";
    src = fetchurl {
      url = "https://github.com/NvChad/nvim-colorizer.lua/archive/760e27df4dd966607e8fb7fd8b6b93e3c7d2e193.tar.gz";
      sha256 = "1hny3x11m3wykr775dkzn386swz07czb1v480aw2cn32ias59x9g";
    };
    meta = with lib; {
      description = "Maintained fork of the fastest Neovim colorizer";
      homepage = "https://github.com/NvChad/nvim-colorizer.lua";
    };
  };
  nvim-hybrid = buildVimPluginFrom2Nix {
    pname = "nvim-hybrid";
    version = "2022-01-22";
    src = fetchurl {
      url = "https://github.com/PHSix/nvim-hybrid/archive/89206396ba22b2518f5db08d96e9aab800902163.tar.gz";
      sha256 = "028y6q7nfix9a73szv28rp14gl5xpi7w91jnmlrc3y4b6f9qzcjx";
    };
    meta = with lib; {
      description = "A neovim colorscheme write in lua";
      homepage = "https://github.com/PHSix/nvim-hybrid";
    };
  };
  AbbrevMan-nvim = buildVimPluginFrom2Nix {
    pname = "AbbrevMan-nvim";
    version = "2021-07-15";
    src = fetchurl {
      url = "https://github.com/Pocco81/AbbrevMan.nvim/archive/97b40b51b373d0d1c22f71dd8fce7f61f6bf46a5.tar.gz";
      sha256 = "158535q9ggkcr1crx0lahcr84gznx2n91plq4mb34wdnrqqyipmq";
    };
    meta = with lib; {
      description = "🍍 A NeoVim plugin for managing vim abbreviations";
      homepage = "https://github.com/Pocco81/AbbrevMan.nvim";
      license = with licenses; [ gpl3Only ];
    };
  };
  auto-save-nvim = buildVimPluginFrom2Nix {
    pname = "auto-save-nvim";
    version = "2022-11-01";
    src = fetchurl {
      url = "https://github.com/Pocco81/auto-save.nvim/archive/979b6c82f60cfa80f4cf437d77446d0ded0addf0.tar.gz";
      sha256 = "1p4v8wrzc4621iird0x73hbrbpn9yj4by2rpshgm3xdv3b1zrmfm";
    };
    meta = with lib; {
      description = "🧶 Automatically save your changes in NeoVim";
      homepage = "https://github.com/Pocco81/auto-save.nvim";
      license = with licenses; [ gpl3Only ];
    };
  };
  dap-buddy-nvim = buildVimPluginFrom2Nix {
    pname = "dap-buddy-nvim";
    version = "2022-04-20";
    src = fetchurl {
      url = "https://github.com/Pocco81/dap-buddy.nvim/archive/bbda2b062e5519cde4e10b6e4240d3dd1f867b20.tar.gz";
      sha256 = "156j96wx16zpccvg2plik550gk7az27wpq7bjxq52fch8ixhm02v";
    };
    meta = with lib; {
      description = "🐞 Debug Adapter Protocol manager for Neovim";
      homepage = "https://github.com/Pocco81/dap-buddy.nvim";
      license = with licenses; [ gpl3Only ];
    };
  };
  HighStr-nvim = buildVimPluginFrom2Nix {
    pname = "HighStr-nvim";
    version = "2022-10-21";
    src = fetchurl {
      url = "https://github.com/Pocco81/HighStr.nvim/archive/1cb5e030bb16df52c8428b53dc235466a4eb1d01.tar.gz";
      sha256 = "0nzzrq3254jy1pvcw7xg84nx3pp2wjj85bd9izq2294z01dkgyqm";
    };
    meta = with lib; {
      description = "🦎 A NeoVim plugin for highlighting visual selections like in a normal document editor!";
      homepage = "https://github.com/Pocco81/HighStr.nvim";
      license = with licenses; [ gpl3Only ];
    };
  };
  nvim-treesitter-textsubjects = buildVimPluginFrom2Nix {
    pname = "nvim-treesitter-textsubjects";
    version = "2022-12-09";
    src = fetchurl {
      url = "https://github.com/RRethy/nvim-treesitter-textsubjects/archive/9e6c7a420bed75aca83ad8cbd5ea173a329489fa.tar.gz";
      sha256 = "0l921vriizb1sywz7y9nwkqg7bggmsq48ri6q9cr1g4fw01m26l8";
    };
    meta = with lib; {
      description = "Location and syntax aware text objects which *do what you mean*";
      homepage = "https://github.com/RRethy/nvim-treesitter-textsubjects";
      license = with licenses; [ asl20 ];
    };
  };
  gruvy = buildVimPluginFrom2Nix {
    pname = "gruvy";
    version = "2022-01-09";
    src = fetchurl {
      url = "https://github.com/RishabhRD/gruvy/archive/42cc923376d980a955a57a417e5a1fd5f2f651a0.tar.gz";
      sha256 = "1imlrbs1xg7vyyx8d7qd8z9whxqw6bb91fqkmjm71ywsblhamala";
    };
    meta = with lib; {
      description = "Gruvbuddy port independent of colorbuddy";
      homepage = "https://github.com/RishabhRD/gruvy";
    };
  };
  lspactions = buildVimPluginFrom2Nix {
    pname = "lspactions";
    version = "2022-05-15";
    src = fetchurl {
      url = "https://github.com/RishabhRD/lspactions/archive/0ea962f11ef4d6e212bb0472ccf075aebd2d9e59.tar.gz";
      sha256 = "13s929w679bhnqgfprra5jc635b4frajhb53wybym8hi1gmn6ra2";
    };
    meta = with lib; {
      description = "handlers for required lsp actions";
      homepage = "https://github.com/RishabhRD/lspactions";
    };
  };
  lspactions-nvim06-compatible = buildVimPluginFrom2Nix {
    pname = "lspactions-nvim06-compatible";
    version = "2022-01-08";
    src = fetchurl {
      url = "https://github.com/RishabhRD/lspactions/archive/03953195a938b0a5d421d168461ff45e8e0874ed.tar.gz";
      sha256 = "0jhpbjz353ybcxnq144059mfw6lvxgjf49rdj7158dq2vb88qbcw";
    };
    meta = with lib; {
      description = "handlers for required lsp actions";
      homepage = "https://github.com/RishabhRD/lspactions";
    };
  };
  nvim-rdark = buildVimPluginFrom2Nix {
    pname = "nvim-rdark";
    version = "2020-12-25";
    src = fetchurl {
      url = "https://github.com/RishabhRD/nvim-rdark/archive/7c32ab475b992ebf63dc6997bae61717f885d118.tar.gz";
      sha256 = "0si8dakdv9w4kjfm7s323xhkf294a08d6pdifhzvsnp79vc36s1f";
    };
    meta = with lib; {
      description = "A dark colorscheme for neovim written in lua";
      homepage = "https://github.com/RishabhRD/nvim-rdark";
    };
  };
  crates-nvim = buildVimPluginFrom2Nix {
    pname = "crates-nvim";
    version = "2022-12-08";
    src = fetchurl {
      url = "https://github.com/Saecki/crates.nvim/archive/22fcb7a623bab743fcae1532b272ae52a6e24fda.tar.gz";
      sha256 = "0qp783bjivfpqfs0wscg1ibw4bcdv91piwnmf6y3lki1gq05ifjl";
    };
    meta = with lib; {
      description = "A neovim plugin that helps managing crates.io dependencies";
      homepage = "https://github.com/Saecki/crates.nvim";
      license = with licenses; [ mit ];
    };
  };
  neovim-session-manager = buildVimPluginFrom2Nix {
    pname = "neovim-session-manager";
    version = "2022-12-09";
    src = fetchurl {
      url = "https://github.com/Shatur/neovim-session-manager/archive/f8c85da390c5d1ad3bfd229ac2ed805c5742263d.tar.gz";
      sha256 = "02dydcshdwa0a2g0g42pjpgf2n63jk0iyqm5sk8bam8yfbpzg4l9";
    };
    meta = with lib; {
      description = "A simple wrapper around :mksession";
      homepage = "https://github.com/Shatur/neovim-session-manager";
      license = with licenses; [ gpl3Only ];
    };
  };
  neovim-tasks = buildVimPluginFrom2Nix {
    pname = "neovim-tasks";
    version = "2022-11-30";
    src = fetchurl {
      url = "https://github.com/Shatur/neovim-tasks/archive/0cb6b6a00520d7db850632b423c7395021fc3e57.tar.gz";
      sha256 = "1zy65f7gwxkjzgna50s8hvj6wszavbg5c2cdqzc4drllbbkbwhb6";
    };
    meta = with lib; {
      description = "A statefull task manager focused on integration with build systems";
      homepage = "https://github.com/Shatur/neovim-tasks";
      license = with licenses; [ gpl3Only ];
    };
  };
  carbon-nvim = buildVimPluginFrom2Nix {
    pname = "carbon-nvim";
    version = "2022-12-04";
    src = fetchurl {
      url = "https://github.com/SidOfc/carbon.nvim/archive/881a97f15084abf16742280010ba7838d6e21fe5.tar.gz";
      sha256 = "0dpvb90wnqzaa0290mmqd1q4yqavsh4nivn68fn0k8j4bqg7vdci";
    };
    meta = with lib; {
      description = "The simple directory tree viewer for Neovim written in Lua";
      homepage = "https://github.com/SidOfc/carbon.nvim";
      license = with licenses; [ mit ];
    };
  };
  nvim-navic = buildVimPluginFrom2Nix {
    pname = "nvim-navic";
    version = "2022-12-11";
    src = fetchurl {
      url = "https://github.com/SmiteshP/nvim-navic/archive/7a2b823152fe4de65ee7925b0e32d26ed73bc57c.tar.gz";
      sha256 = "1rb125a3bi30nhsskya3bxjn2kgjhp0khfclsnfs4mh284cc43n4";
    };
    meta = with lib; {
      description = "Simple winbar/statusline plugin that shows your current code context";
      homepage = "https://github.com/SmiteshP/nvim-navic";
      license = with licenses; [ asl20 ];
    };
  };
  onebuddy = buildVimPluginFrom2Nix {
    pname = "onebuddy";
    version = "2021-04-01";
    src = fetchurl {
      url = "https://github.com/Th3Whit3Wolf/onebuddy/archive/7e16006e7dde15e3cb72889f736c49409db6ff42.tar.gz";
      sha256 = "08kap2mh0fm4vb89p60l3prpw3hgx954wxfgiiffyrz5b2p3cr1y";
    };
    meta = with lib; {
      description = "Light and dark atom one theme";
      homepage = "https://github.com/Th3Whit3Wolf/onebuddy";
      license = with licenses; [ mit ];
    };
  };
  space-nvim = buildVimPluginFrom2Nix {
    pname = "space-nvim";
    version = "2021-07-08";
    src = fetchurl {
      url = "https://github.com/Th3Whit3Wolf/space-nvim/archive/9c4f5857acf51aa6d4924f3f2ccabb079799e7f6.tar.gz";
      sha256 = "1sp1gs5g5lkhwymsb2jz7xzg34nbbfxyz74ryq8ggnbk238374bw";
    };
    meta = with lib; {
      description = "No description";
      homepage = "https://github.com/Th3Whit3Wolf/space-nvim";
      license = with licenses; [ mit ];
    };
  };
  drex-nvim = buildVimPluginFrom2Nix {
    pname = "drex-nvim";
    version = "2022-11-29";
    src = fetchurl {
      url = "https://github.com/TheBlob42/drex.nvim/archive/bb14e202160be52d6b5ec8e045715048f625e348.tar.gz";
      sha256 = "1hcxs30kfl6pgsi3b13rqf9gj1r0lv8kh3rmyvnlh9h67350bgmm";
    };
    meta = with lib; {
      description = "Another directory/file explorer for Neovim written in Lua ";
      homepage = "https://github.com/TheBlob42/drex.nvim";
      license = with licenses; [ gpl3Only ];
    };
  };
  vim-be-good = buildVimPluginFrom2Nix {
    pname = "vim-be-good";
    version = "2022-11-08";
    src = fetchurl {
      url = "https://github.com/ThePrimeagen/vim-be-good/archive/c290810728a4f75e334b07dc0f3a4cdea908d351.tar.gz";
      sha256 = "1zzbwwcyky6589xwyybi8ifp4815nzgaqfk6fwwj2yf1hl8hn46p";
    };
    meta = with lib; {
      description = "vim-be-good is a nvim plugin designed to make you better at Vim Movements. ";
      homepage = "https://github.com/ThePrimeagen/vim-be-good";
    };
  };
  neofs = buildVimPluginFrom2Nix {
    pname = "neofs";
    version = "2022-08-10";
    src = fetchurl {
      url = "https://github.com/TimUntersberger/neofs/archive/e10428da8f31001bffa0aba0a5c13fc623a54d75.tar.gz";
      sha256 = "0xj78y3yg7qngp36bk4ssd380lsnhda5yhliw07lsii0lrj81xpq";
    };
    meta = with lib; {
      description = "A file manager for neovim";
      homepage = "https://github.com/TimUntersberger/neofs";
      license = with licenses; [ mit ];
    };
  };
  binary-swap-nvim = buildVimPluginFrom2Nix {
    pname = "binary-swap-nvim";
    version = "2022-11-13";
    src = fetchurl {
      url = "https://github.com/Wansmer/binary-swap.nvim/archive/6f12132ea5445bd858cbd53c1de46a14fc681ead.tar.gz";
      sha256 = "1gv4xyvqays6i57i4xqwwh6dy3ykd5ibmphrbwy7afbm6ndvpjnx";
    };
    meta = with lib; {
      description = "Neovim plugin for swapping operands and operators in binary expressions";
      homepage = "https://github.com/Wansmer/binary-swap.nvim";
      license = with licenses; [ mit ];
    };
  };
  sibling-swap-nvim = buildVimPluginFrom2Nix {
    pname = "sibling-swap-nvim";
    version = "2022-11-25";
    src = fetchurl {
      url = "https://github.com/Wansmer/sibling-swap.nvim/archive/71eb9daa5233cd576ce8119bc2dbfa67d4d35462.tar.gz";
      sha256 = "168m4y9a1dzf1d8qc6917n45jbp3v29mdasq2q1k5dhl7hlmbdx0";
    };
    meta = with lib; {
      description = "Neovim plugin for swaps closest siblings with Tree-Sitter";
      homepage = "https://github.com/Wansmer/sibling-swap.nvim";
      license = with licenses; [ mit ];
    };
  };
  treesj = buildVimPluginFrom2Nix {
    pname = "treesj";
    version = "2022-12-11";
    src = fetchurl {
      url = "https://github.com/Wansmer/treesj/archive/3a28195c7d683fe076df51849f8252c7da50c8b4.tar.gz";
      sha256 = "0wh0vfr261a7by8s900vbcy8fcmhsbn42vpnicivdasbfh9i2gq5";
    };
    meta = with lib; {
      description = "Neovim plugin for splitting/joining blocks of code";
      homepage = "https://github.com/Wansmer/treesj";
      license = with licenses; [ mit ];
    };
  };
  easy-action = buildVimPluginFrom2Nix {
    pname = "easy-action";
    version = "2022-11-13";
    src = fetchurl {
      url = "https://github.com/Weissle/easy-action/archive/2822e6dca06bd726f60c9547e287d4cf0d19ccb2.tar.gz";
      sha256 = "0k6h5inn85pcpx6d4sgnp64dpj285ajhp2dh6vhg6s2gfiv9r06d";
    };
    meta = with lib; {
      description = "A Neovim plugin allows you to perform an action on where you can see";
      homepage = "https://github.com/Weissle/easy-action";
    };
  };
  persistent-breakpoints-nvim = buildVimPluginFrom2Nix {
    pname = "persistent-breakpoints-nvim";
    version = "2022-10-22";
    src = fetchurl {
      url = "https://github.com/Weissle/persistent-breakpoints.nvim/archive/a75446afb7eb9519cee5db44ecce1982d3cfcbea.tar.gz";
      sha256 = "0xm4d2l5b5wyd5wc4pg8xgg8cc0s25s09xck8dkiz9z9gj77kqz1";
    };
    meta = with lib; {
      description = "Neovim plugin for persistent breakpoints";
      homepage = "https://github.com/Weissle/persistent-breakpoints.nvim";
      license = with licenses; [ mit ];
    };
  };
  yanil = buildVimPluginFrom2Nix {
    pname = "yanil";
    version = "2022-03-28";
    src = fetchurl {
      url = "https://github.com/Xuyuanp/yanil/archive/bf01dbc9de2d822de422c4d1eb63ced78cc52388.tar.gz";
      sha256 = "11flnjdwgz9xad86r6nhv3v90k3c2qifyc564ffn4klc3dy65dqa";
    };
    meta = with lib; {
      description = "Yet Another Nerdtree In Lua";
      homepage = "https://github.com/Xuyuanp/yanil";
      license = with licenses; [ asl20 ];
    };
  };
  smart-pairs = buildVimPluginFrom2Nix {
    pname = "smart-pairs";
    version = "2022-03-22";
    src = fetchurl {
      url = "https://github.com/ZhiyuanLck/smart-pairs/archive/6e7a5a8e3906f7a8a8c5b8603d5264ff1b5d87c3.tar.gz";
      sha256 = "136v59y5kazkqq2nqwrdjazjy0qadv4r86q4nmrgmr65ywy8g4kl";
    };
    meta = with lib; {
      description = "Ultimate smart pairs written in lua!";
      homepage = "https://github.com/ZhiyuanLck/smart-pairs";
      license = with licenses; [ mit ];
    };
  };
  tabout-nvim = buildVimPluginFrom2Nix {
    pname = "tabout-nvim";
    version = "2022-10-07";
    src = fetchurl {
      url = "https://github.com/abecodes/tabout.nvim/archive/c37ce26f316a2df693140450b8def41e89c0f57e.tar.gz";
      sha256 = "1zwxin92g6xqiya5x52p0qlvm1ivqmgm7j25argigzfi1vi14h2z";
    };
    meta = with lib; {
      description = "tabout plugin for neovim";
      homepage = "https://github.com/abecodes/tabout.nvim";
      license = with licenses; [ unlicense ];
    };
  };
  image-preview-nvim = buildVimPluginFrom2Nix {
    pname = "image-preview-nvim";
    version = "2022-10-16";
    src = fetchurl {
      url = "https://github.com/adelarsq/image_preview.nvim/archive/24dc3c869893f7a7d43fdca701b9e30ff03f6aa4.tar.gz";
      sha256 = "05a6i2mj6igw958b72lq0vvb7hyh6nihlph8v2h1b6gvkvlfbh0v";
    };
    meta = with lib; {
      description = "Image Preview for Neovim 🖼";
      homepage = "https://github.com/adelarsq/image_preview.nvim";
      license = with licenses; [ mit ];
    };
  };
  neoline-vim = buildVimPluginFrom2Nix {
    pname = "neoline-vim";
    version = "2022-12-09";
    src = fetchurl {
      url = "https://github.com/adelarsq/neoline.vim/archive/593d7ffc69c331840d0be4ac82601721d79818d3.tar.gz";
      sha256 = "1bxchmr27f1v3f4f0yf8m7an33n7mvijwid3h9nqcij3m7s2y3fc";
    };
    meta = with lib; {
      description = "Status Line for Neovim focused on beauty and performance ✅🖤💙💛";
      homepage = "https://github.com/adelarsq/neoline.vim";
      license = with licenses; [ mit ];
    };
  };
  apprentice-nvim = buildVimPluginFrom2Nix {
    pname = "apprentice-nvim";
    version = "2022-08-17";
    src = fetchurl {
      url = "https://github.com/adisen99/apprentice.nvim/archive/ef980c7feccd0d3ea650f93494b4d13a16c1471a.tar.gz";
      sha256 = "1xirniwylhzxnxf7vhsp23y1pmcyrn6fzc4ah9rmycyg0ah6fkk9";
    };
    meta = with lib; {
      description = "Apprentice color scheme for Neovim written in Lua";
      homepage = "https://github.com/adisen99/apprentice.nvim";
      license = with licenses; [ mit ];
    };
  };
  codeschool-nvim = buildVimPluginFrom2Nix {
    pname = "codeschool-nvim";
    version = "2022-08-17";
    src = fetchurl {
      url = "https://github.com/adisen99/codeschool.nvim/archive/b252b106b8651528f7e616cd6c258392a374c8fe.tar.gz";
      sha256 = "023p5sa3gpby9z038ksx1a8rp3grds34wrnj16g48qdha2vycyy8";
    };
    meta = with lib; {
      description = "Codeschool colorscheme for neovim written in lua with treesitter and built-in lsp support";
      homepage = "https://github.com/adisen99/codeschool.nvim";
      license = with licenses; [ mit ];
    };
  };
  dependency-assist-nvim = buildVimPluginFrom2Nix {
    pname = "dependency-assist-nvim";
    version = "2021-11-11";
    src = fetchurl {
      url = "https://github.com/akinsho/dependency-assist.nvim/archive/86d49a83f89a9a48e50556fef00961ea2e3ec28b.tar.gz";
      sha256 = "0d7pcz5747m4jqqsrvddv71qhnynah8rhdkyyggmxqxp0mndxvb8";
    };
    meta = with lib; {
      description = "A neovim plugin to help find/search for dependency information/versions";
      homepage = "https://github.com/akinsho/dependency-assist.nvim";
    };
  };
  git-conflict-nvim = buildVimPluginFrom2Nix {
    pname = "git-conflict-nvim";
    version = "2022-11-28";
    src = fetchurl {
      url = "https://github.com/akinsho/git-conflict.nvim/archive/77faa75c09a6af88e7b54d8d456327e06611f7ea.tar.gz";
      sha256 = "0a7mi0464cvz06hc4kbqbjrz1ahq3lxqkcv6s03bad7pv07f2ixk";
    };
    meta = with lib; {
      description = "A plugin to visualise and resolve merge conflicts in neovim";
      homepage = "https://github.com/akinsho/git-conflict.nvim";
    };
  };
  toggleterm-nvim = buildVimPluginFrom2Nix {
    pname = "toggleterm-nvim";
    version = "2022-12-09";
    src = fetchurl {
      url = "https://github.com/akinsho/toggleterm.nvim/archive/b02a1674bd0010d7982b056fd3df4f717ff8a57a.tar.gz";
      sha256 = "0nck4cla7pikyqy34jr2cmnp6bxq837kzwhsfgf3wcps3hl1b72p";
    };
    meta = with lib; {
      description = "A neovim lua plugin to help easily manage multiple terminal windows";
      homepage = "https://github.com/akinsho/toggleterm.nvim";
      license = with licenses; [ gpl3Only ];
    };
  };
  nim-nvim = buildVimPluginFrom2Nix {
    pname = "nim-nvim";
    version = "2022-08-08";
    src = fetchurl {
      url = "https://github.com/alaviss/nim.nvim/archive/87afde2ae995723e0338e1851c3b3c1cbd81d955.tar.gz";
      sha256 = "19jiq06gzw8gz59rdqq5jc8xi1sfq8f5pbfgfnm6mnj3sa79avl6";
    };
    meta = with lib; {
      description = "Nim plugin for NeoVim";
      homepage = "https://github.com/alaviss/nim.nvim";
    };
  };
  nvim-tetris = buildVimPluginFrom2Nix {
    pname = "nvim-tetris";
    version = "2021-06-28";
    src = fetchurl {
      url = "https://github.com/alec-gibson/nvim-tetris/archive/d17c99fb527ada98ffb0212ffc87ccda6fd4f7d9.tar.gz";
      sha256 = "09ni6i5kmll3f905ripsj31p98p1sw4rbqvv0abx96yiy44mdlgf";
    };
    meta = with lib; {
      description = "Bringing emacs' greatest feature to neovim - Tetris!";
      homepage = "https://github.com/alec-gibson/nvim-tetris";
      license = with licenses; [ gpl3Only ];
    };
  };
  nvim-lspupdate = buildVimPluginFrom2Nix {
    pname = "nvim-lspupdate";
    version = "2021-12-21";
    src = fetchurl {
      url = "https://github.com/alexaandru/nvim-lspupdate/archive/8b809b7887790f1742b6f9de6d35c35f07c23ec2.tar.gz";
      sha256 = "03h8zr3m8jr1ck0d1bldly0hjvmjnx8h72xvnk2ak7248rxmqnwb";
    };
    meta = with lib; {
      description = "Updates installed LSP servers, automatically";
      homepage = "https://github.com/alexaandru/nvim-lspupdate";
      license = with licenses; [ mit ];
    };
  };
  bats-vim = buildVimPluginFrom2Nix {
    pname = "bats-vim";
    version = "2021-01-10";
    src = fetchurl {
      url = "https://github.com/aliou/bats.vim/archive/6a5d2ef22b0ede503d867770afd02ebb1f97b709.tar.gz";
      sha256 = "0nl1znlcdyly9a2mak9wckdmsk8iqsg9wnq7hd0zraz6bsj3mzvm";
    };
    meta = with lib; {
      description = "Syntax files for Bats (Bash Automated Testing System)";
      homepage = "https://github.com/aliou/bats.vim";
    };
  };
  fuzzy-nvim = buildVimPluginFrom2Nix {
    pname = "fuzzy-nvim";
    version = "2021-05-13";
    src = fetchurl {
      url = "https://github.com/amirrezaask/fuzzy.nvim/archive/0ed93b8e8c78ddbf4539a3bb464a60ce6ecaf6e6.tar.gz";
      sha256 = "1nw5ws0ff0nmniqad5jvmwdp3hn3awfh0m74d6acy3cdd9vqqhck";
    };
    meta = with lib; {
      description = "Fuzzy matching for Neovim";
      homepage = "https://github.com/amirrezaask/fuzzy.nvim";
      license = with licenses; [ gpl3Only ];
    };
  };
  nvim-docs-view = buildVimPluginFrom2Nix {
    pname = "nvim-docs-view";
    version = "2022-10-07";
    src = fetchurl {
      url = "https://github.com/amrbashir/nvim-docs-view/archive/f16573fe8a5ebff3b246766cccf7b46fc6819073.tar.gz";
      sha256 = "08cl861whijf2ri0sb7szpzdrfa00bxyahv18cj20gbjxky4nc4c";
    };
    meta = with lib; {
      description = "A neovim plugin to display lsp hover documentation in a side panel";
      homepage = "https://github.com/amrbashir/nvim-docs-view";
      license = with licenses; [ mit ];
    };
  };
  debugprint-nvim = buildVimPluginFrom2Nix {
    pname = "debugprint-nvim";
    version = "2022-11-17";
    src = fetchurl {
      url = "https://github.com/andrewferrier/debugprint.nvim/archive/e555b35057373f9cd7bd2d2181f508ee5f885d6e.tar.gz";
      sha256 = "0vzkdn2a3xh1b3ywf9sb13pkh3vqh0ipkbjvmk29icvd4khpdfbd";
    };
    meta = with lib; {
      description = "Debugging in NeoVim the print() way!";
      homepage = "https://github.com/andrewferrier/debugprint.nvim";
    };
  };
  textobj-diagnostic-nvim = buildVimPluginFrom2Nix {
    pname = "textobj-diagnostic-nvim";
    version = "2022-10-08";
    src = fetchurl {
      url = "https://github.com/andrewferrier/textobj-diagnostic.nvim/archive/1b36edbb83c0d179621015b9cb35ebd487cb78dc.tar.gz";
      sha256 = "0lpysbhjyplx5h0wil779vybach9nbp1fcahafwslk5v3r1rrpdp";
    };
    meta = with lib; {
      description = "NeoVim text object that finds diagnostics";
      homepage = "https://github.com/andrewferrier/textobj-diagnostic.nvim";
      license = with licenses; [ mit ];
    };
  };
  nvim-coverage = buildVimPluginFrom2Nix {
    pname = "nvim-coverage";
    version = "2022-10-30";
    src = fetchurl {
      url = "https://github.com/andythigpen/nvim-coverage/archive/f067885c422f42bcbedd15f16a11e8ba8c771693.tar.gz";
      sha256 = "1p4qcm5xwa9jmv6pxcajj7axkv0jrgrz1zlffma5la5ih2lwzbay";
    };
    meta = with lib; {
      description = "Displays test coverage data in the sign column";
      homepage = "https://github.com/andythigpen/nvim-coverage";
      license = with licenses; [ mit ];
    };
  };
  nvim-lspinstall = buildVimPluginFrom2Nix {
    pname = "nvim-lspinstall";
    version = "2021-07-23";
    src = fetchurl {
      url = "https://github.com/anott03/nvim-lspinstall/archive/1d9b385dc4d963b9ee93d4597f6010c4ada4b405.tar.gz";
      sha256 = "061spva2h74h0rgx07jvnp27gc30z9dj7n9sxa135q3hdkka7wv1";
    };
    meta = with lib; {
      description = "No description";
      homepage = "https://github.com/anott03/nvim-lspinstall";
    };
  };
  animation-nvim = buildVimPluginFrom2Nix {
    pname = "animation-nvim";
    version = "2022-09-18";
    src = fetchurl {
      url = "https://github.com/anuvyklack/animation.nvim/archive/fb77091ab72ec9971aee0562e7081182527aaa6a.tar.gz";
      sha256 = "1n9a7l7g7yp3ak1g7yxb3afcx5qzzvl4scarqvhd0saz8ilhxhi8";
    };
    meta = with lib; {
      description = "Create animations in Neovim";
      homepage = "https://github.com/anuvyklack/animation.nvim";
      license = with licenses; [ mit ];
    };
  };
  fold-preview-nvim = buildVimPluginFrom2Nix {
    pname = "fold-preview-nvim";
    version = "2022-11-12";
    src = fetchurl {
      url = "https://github.com/anuvyklack/fold-preview.nvim/archive/dcc6de437d3d049d46cc7c6a5d46f5729858441f.tar.gz";
      sha256 = "0wbqw26xb84sfzjjzagy6j5nm31phvvsjpaligz62jh8rvq3v5bp";
    };
    meta = with lib; {
      description = "Preview folds in float window ";
      homepage = "https://github.com/anuvyklack/fold-preview.nvim";
    };
  };
  hydra-nvim = buildVimPluginFrom2Nix {
    pname = "hydra-nvim";
    version = "2022-11-20";
    src = fetchurl {
      url = "https://github.com/anuvyklack/hydra.nvim/archive/7e2aa29f88d534371c6b0263d3abbfac7c2376ce.tar.gz";
      sha256 = "010c4qc4f51wfil9hxpzmwg490piwlcq4gfi87kn4a8rb841v5gc";
    };
    meta = with lib; {
      description = "Create custom submodes and menus";
      homepage = "https://github.com/anuvyklack/hydra.nvim";
    };
  };
  keymap-amend-nvim = buildVimPluginFrom2Nix {
    pname = "keymap-amend-nvim";
    version = "2022-09-22";
    src = fetchurl {
      url = "https://github.com/anuvyklack/keymap-amend.nvim/archive/b8bf9d820878d5497fdd11d6de55dea82872d98e.tar.gz";
      sha256 = "0ykis9yp1mp8h0s91ga2r3d4ldpcp8v0fsla6hwpdwd3vl0ca2k9";
    };
    meta = with lib; {
      description = "Amend the existing keymap in Neovim";
      homepage = "https://github.com/anuvyklack/keymap-amend.nvim";
    };
  };
  pretty-fold-nvim = buildVimPluginFrom2Nix {
    pname = "pretty-fold-nvim";
    version = "2022-07-20";
    src = fetchurl {
      url = "https://github.com/anuvyklack/pretty-fold.nvim/archive/a7d8b424abe0eedf50116c460fbe6dfd5783b1d5.tar.gz";
      sha256 = "1j4y59v9jb02nsc4hprwmqjpmrv3lvqhifgk499ad97xjdc2hliz";
    };
    meta = with lib; {
      description = "Foldtext customization in Neovim";
      homepage = "https://github.com/anuvyklack/pretty-fold.nvim";
      license = with licenses; [ asl20 ];
    };
  };
  windows-nvim = buildVimPluginFrom2Nix {
    pname = "windows-nvim";
    version = "2022-11-17";
    src = fetchurl {
      url = "https://github.com/anuvyklack/windows.nvim/archive/a37b5d021afbe9baf741bb40818bd14604dde424.tar.gz";
      sha256 = "171psdrylmdcg16iwffiy6z8bcs187l770w0ip4nc5n75rqyv1k7";
    };
    meta = with lib; {
      description = "Automatically expand width of the current window. Maximizes and restore it. And all this with nice animations!";
      homepage = "https://github.com/anuvyklack/windows.nvim";
      license = with licenses; [ mit ];
    };
  };
  tmux-nvim = buildVimPluginFrom2Nix {
    pname = "tmux-nvim";
    version = "2022-12-08";
    src = fetchurl {
      url = "https://github.com/aserowy/tmux.nvim/archive/3f73843df726e55b92dbb2938edbb3eb6d0746f5.tar.gz";
      sha256 = "02qvs99yv3p2ary5ivcdrx0d00jy1by1rvp68ig1zmsimlig5amf";
    };
    meta = with lib; {
      description = "tmux integration for nvim features pane movement and resizing from within nvim";
      homepage = "https://github.com/aserowy/tmux.nvim";
      license = with licenses; [ mit ];
    };
  };
  nvim-picgo = buildVimPluginFrom2Nix {
    pname = "nvim-picgo";
    version = "2022-12-05";
    src = fetchurl {
      url = "https://github.com/askfiy/nvim-picgo/archive/73d5b5171d9125c1b43bd5448c8b611de7b5dbd5.tar.gz";
      sha256 = "19lc56p6jngjmm30l2jvaaxfysqa3gfa6pmlw6msxpizmp195lmc";
    };
    meta = with lib; {
      description = "🥳🥳 A neovim plugin based on picgo-core, written in Lua. 🌲 Allows you to add pictures to various picture beds at any time, and they can be accessed from any corner of the Internet. 🎆";
      homepage = "https://github.com/askfiy/nvim-picgo";
      license = with licenses; [ gpl3Only ];
    };
  };
  incline-nvim = buildVimPluginFrom2Nix {
    pname = "incline-nvim";
    version = "2022-07-28";
    src = fetchurl {
      url = "https://github.com/b0o/incline.nvim/archive/44d4e6f4dcf2f98cf7b62a14e3c10749fc5c6e35.tar.gz";
      sha256 = "1mcddmz1laqarvgrphgzkaxackb7y3f2mhql0kd9iyf4m74c9kld";
    };
    meta = with lib; {
      description = "🎈 Floating statuslines for Neovim";
      homepage = "https://github.com/b0o/incline.nvim";
      license = with licenses; [ mit ];
    };
  };
  mapx-nvim = buildVimPluginFrom2Nix {
    pname = "mapx-nvim";
    version = "2022-02-24";
    src = fetchurl {
      url = "https://github.com/b0o/mapx.nvim/archive/c3dd43474a5fc2f266309bc04a69b74eb2524671.tar.gz";
      sha256 = "0cff34bmgd2jpk9mz1x66zlilksppqh89knnrwklg4mvd45lif4f";
    };
    meta = with lib; {
      description = "🗺 A better way to create key mappings in Neovim";
      homepage = "https://github.com/b0o/mapx.nvim";
      license = with licenses; [ mit ];
    };
  };
  focus-nvim = buildVimPluginFrom2Nix {
    pname = "focus-nvim";
    version = "2022-10-12";
    src = fetchurl {
      url = "https://github.com/beauwilliams/focus.nvim/archive/3d9df42aa4f9b572348418207b752f81adea09a5.tar.gz";
      sha256 = "0bfaia12znmx07pjy2g8gv11c4nhwr10nf6svn3wh7q30vgpnkfr";
    };
    meta = with lib; {
      description = "Auto-Focusing and Auto-Resizing Splits/Windows for Neovim written in Lua. A full suite of window management enhancements. Vim splits on steroids!";
      homepage = "https://github.com/beauwilliams/focus.nvim";
    };
  };
  statusline-lua = buildVimPluginFrom2Nix {
    pname = "statusline-lua";
    version = "2022-10-12";
    src = fetchurl {
      url = "https://github.com/beauwilliams/statusline.lua/archive/20ad26912935f91918da9f428761b6d1b651d632.tar.gz";
      sha256 = "0v49d6m2ihgj17fxnn87mi0haigklv6l7w33n6j2wbxg3g8d6wb7";
    };
    meta = with lib; {
      description = "A zero-config minimal statusline for neovim written in lua featuring awesome integrations and blazing speed!";
      homepage = "https://github.com/beauwilliams/statusline.lua";
      license = with licenses; [ mit ];
    };
  };
  nvim-regexplainer = buildVimPluginFrom2Nix {
    pname = "nvim-regexplainer";
    version = "2022-12-01";
    src = fetchurl {
      url = "https://github.com/bennypowers/nvim-regexplainer/archive/dddc9ff5f9837b02c3e07ee30b833bc39a0b6759.tar.gz";
      sha256 = "1v6l3lbgzn8khqcvx7a5nr8wak1h2q3zniqzjv9q5cw7q4kla5jp";
    };
    meta = with lib; {
      description = "Describe the regexp under the cursor";
      homepage = "https://github.com/bennypowers/nvim-regexplainer";
    };
  };
  nvim-luadev = buildVimPluginFrom2Nix {
    pname = "nvim-luadev";
    version = "2022-01-26";
    src = fetchurl {
      url = "https://github.com/bfredl/nvim-luadev/archive/2a2c242bd751c289cfc1bc27f357925f68eba098.tar.gz";
      sha256 = "1i4mg8rzbyg1rq8yrha1kq3hs4b0wvmsxbcnqjhfgrxdaqkwhx15";
    };
    meta = with lib; {
      description = "REPL/debug console for nvim lua plugins";
      homepage = "https://github.com/bfredl/nvim-luadev";
      license = with licenses; [ mit ];
    };
  };
  nvim-miniyank = buildVimPluginFrom2Nix {
    pname = "nvim-miniyank";
    version = "2019-11-05";
    src = fetchurl {
      url = "https://github.com/bfredl/nvim-miniyank/archive/2a3a0f3ae535e1b93a8c17dfdac718b9a12c772b.tar.gz";
      sha256 = "0qm6yn91w4f7lis051hnqy70lhja2nj5xw81sgn3sx2bqxhlnylw";
    };
    meta = with lib; {
      description = "killring-alike plugin for neovim and vim 8 with no default mappings";
      homepage = "https://github.com/bfredl/nvim-miniyank";
      license = with licenses; [ mit ];
    };
  };
  gloombuddy = buildVimPluginFrom2Nix {
    pname = "gloombuddy";
    version = "2021-04-16";
    src = fetchurl {
      url = "https://github.com/bkegley/gloombuddy/archive/d59866faf296b46cb6e54889b47f4b9a366ed093.tar.gz";
      sha256 = "1kz6d79srnzy6g1qhgcbz2x9b01dlsir083vw1f4l5r4ia342gmc";
    };
    meta = with lib; {
      description = "Gloom inspired theme for neovim";
      homepage = "https://github.com/bkegley/gloombuddy";
      license = with licenses; [ mit ];
    };
  };
  vim-moonfly-colors = buildVimPluginFrom2Nix {
    pname = "vim-moonfly-colors";
    version = "2022-11-16";
    src = fetchurl {
      url = "https://github.com/bluz71/vim-moonfly-colors/archive/fe16eed4e61cbc178e6bb2b7d77e868f8602505d.tar.gz";
      sha256 = "0xn0zzznjavpkm97rg7n4il92xlrbzrwfanc0c282vv3vz6bq611";
    };
    meta = with lib; {
      description = "A dark charcoal theme for classic Vim & modern Neovim";
      homepage = "https://github.com/bluz71/vim-moonfly-colors";
      license = with licenses; [ mit ];
    };
  };
  vim-nightfly-colors = buildVimPluginFrom2Nix {
    pname = "vim-nightfly-colors";
    version = "2022-12-10";
    src = fetchurl {
      url = "https://github.com/bluz71/vim-nightfly-colors/archive/ebe44c6ea68abcb1608515aab4f7b1015526ffca.tar.gz";
      sha256 = "1cgqim25y03vvsnxfzj4c75lyjs6np29814vp0ci4l4d2p45gjb3";
    };
    meta = with lib; {
      description = "A dark midnight theme for classic Vim & modern Neovim";
      homepage = "https://github.com/bluz71/vim-nightfly-colors";
      license = with licenses; [ mit ];
    };
  };
  vim-nightfly-colors = buildVimPluginFrom2Nix {
    pname = "vim-nightfly-colors";
    version = "2022-12-10";
    src = fetchurl {
      url = "https://github.com/bluz71/vim-nightfly-colors/archive/ebe44c6ea68abcb1608515aab4f7b1015526ffca.tar.gz";
      sha256 = "1cgqim25y03vvsnxfzj4c75lyjs6np29814vp0ci4l4d2p45gjb3";
    };
    meta = with lib; {
      description = "A dark midnight theme for classic Vim & modern Neovim";
      homepage = "https://github.com/bluz71/vim-nightfly-colors";
      license = with licenses; [ mit ];
    };
  };
  nvim-gomove = buildVimPluginFrom2Nix {
    pname = "nvim-gomove";
    version = "2022-07-19";
    src = fetchurl {
      url = "https://github.com/booperlv/nvim-gomove/archive/2b44ae7ac0804f4e3959228122f7c85bef1964e3.tar.gz";
      sha256 = "19673h725xxdiapsr1jkv3cyvrh98jdisq0cl46n6i80f0hbs0cw";
    };
    meta = with lib; {
      description = "A complete plugin for moving and duplicating blocks and lines, with complete fold handling, reindenting, and undoing in one go";
      homepage = "https://github.com/booperlv/nvim-gomove";
      license = with licenses; [ mit ];
    };
  };
  mix-nvim = buildVimPluginFrom2Nix {
    pname = "mix-nvim";
    version = "2022-08-22";
    src = fetchurl {
      url = "https://github.com/brendalf/mix.nvim/archive/9cbdc90351781c183667be15d51b0ec09396c3f4.tar.gz";
      sha256 = "0c5rmlixvh9lffr4l4qlsm3qx4ihv1sbknb9ljfbd6qlgvrq0rx8";
    };
    meta = with lib; {
      description = "A Mix Wrapper for Neovim";
      homepage = "https://github.com/brendalf/mix.nvim";
    };
  };
  nvim-highlight-colors = buildVimPluginFrom2Nix {
    pname = "nvim-highlight-colors";
    version = "2022-09-28";
    src = fetchurl {
      url = "https://github.com/brenoprata10/nvim-highlight-colors/archive/5d20935b99d976ffa0d8226a78a8b2e091f0f699.tar.gz";
      sha256 = "1darrgmrb8asv7rlax55irsavm7jb1ldixdgpwy4p5vz1747a6sz";
    };
    meta = with lib; {
      description = "Highlight colors for neovim";
      homepage = "https://github.com/brenoprata10/nvim-highlight-colors";
    };
  };
  trim-nvim = buildVimPluginFrom2Nix {
    pname = "trim-nvim";
    version = "2022-10-18";
    src = fetchurl {
      url = "https://github.com/cappyzawa/trim.nvim/archive/909150606eab44979eb9595145796f5bcb067955.tar.gz";
      sha256 = "17p9akip8w8xmr7wik23d1hv0ncilx5cgfrnanvv00dqj421hmm1";
    };
    meta = with lib; {
      description = "This plugin trims trailing whitespace and lines";
      homepage = "https://github.com/cappyzawa/trim.nvim";
      license = with licenses; [ asl20 ];
    };
  };
  catppuccin = buildVimPluginFrom2Nix {
    pname = "catppuccin";
    version = "2022-12-11";
    src = fetchurl {
      url = "https://github.com/catppuccin/nvim/archive/e7fbf2496ce0f1cdf9883a6b99d86afc2f3efadc.tar.gz";
      sha256 = "0j7mqrrng9ikxqr6wz4iw7rx6bf2m627sbm2am5gbqk63iwzb4q1";
    };
    meta = with lib; {
      description = "🍨 Soothing pastel theme for (Neo)vim";
      homepage = "https://github.com/catppuccin/nvim";
      license = with licenses; [ mit ];
    };
  };
  distant-nvim = buildVimPluginFrom2Nix {
    pname = "distant-nvim";
    version = "2022-08-05";
    src = fetchurl {
      url = "https://github.com/chipsenkbeil/distant.nvim/archive/887fc16bdae59bd1865e0776b427ca521987f7fe.tar.gz";
      sha256 = "1vvq43gq1fqvm47yj78bdcc00v127k0hffd4hiz1h6liis5g99zd";
    };
    meta = with lib; {
      description = "🚧 (Alpha stage software) Edit files, run programs, and work with LSP on a remote machine from the comfort of your local environment 🚧";
      homepage = "https://github.com/chipsenkbeil/distant.nvim";
      license = with licenses; [ asl20 ];
    };
  };
  dep = buildVimPluginFrom2Nix {
    pname = "dep";
    version = "2022-06-10";
    src = fetchurl {
      url = "https://github.com/chiyadev/dep/archive/4621ab3393bed133b5d95cb1ba398af22983accc.tar.gz";
      sha256 = "1c28a1yq4dmpqy2svj4kgvvsn3jp4whhkxyryyzj67gac9cv3spq";
    };
    meta = with lib; {
      description = "Correct neovim package manager";
      homepage = "https://github.com/chiyadev/dep";
      license = with licenses; [ mit ];
    };
  };
  impulse-nvim = buildVimPluginFrom2Nix {
    pname = "impulse-nvim";
    version = "2022-06-26";
    src = fetchurl {
      url = "https://github.com/chrsm/impulse.nvim/archive/f96742d0b5ece74fa5a8509b6ea51847fa473a67.tar.gz";
      sha256 = "0shk2ibfr8dfqq3ndbjy7404iyjl80ib6if5kzdn8ys4w7z1vfd0";
    };
    meta = with lib; {
      description = "notion.so client for neovim";
      homepage = "https://github.com/chrsm/impulse.nvim";
      license = with licenses; [ mit ];
    };
  };
  paramount-ng-nvim = buildVimPluginFrom2Nix {
    pname = "paramount-ng-nvim";
    version = "2022-06-18";
    src = fetchurl {
      url = "https://github.com/chrsm/paramount-ng.nvim/archive/7caa69335cdc36f735af781d30faa9b1ce105610.tar.gz";
      sha256 = "1860r5yjsrzm2phgxgcr8mxab5prpzmg7yjfss9203cmdc6v7vri";
    };
    meta = with lib; {
      description = "neovim-first paramount colorscheme";
      homepage = "https://github.com/chrsm/paramount-ng.nvim";
      license = with licenses; [ mit ];
    };
  };
  jazz-nvim = buildVimPluginFrom2Nix {
    pname = "jazz-nvim";
    version = "2019-04-30";
    src = fetchurl {
      url = "https://github.com/clojure-vim/jazz.nvim/archive/4537586c70aee9fdc88ad0687c106cceefd0991e.tar.gz";
      sha256 = "0x6w4jvqk5fn9vzw3w0871xd8qvihrk86i5kw6mv33av2a9h8a94";
    };
    meta = with lib; {
      description = "Acid + Impromptu = Jazz";
      homepage = "https://github.com/clojure-vim/jazz.nvim";
    };
  };
  one-monokai-nvim = buildVimPluginFrom2Nix {
    pname = "one-monokai-nvim";
    version = "2022-11-11";
    src = fetchurl {
      url = "https://github.com/cpea2506/one_monokai.nvim/archive/aff86323a923b3b80f1045a6f2c38b6ef0005c03.tar.gz";
      sha256 = "0xvjjjxvijcs2rbql639c212as3z1m83svlcmp6hpi1vxgbipwjc";
    };
    meta = with lib; {
      description = "One Monokai for Neovim";
      homepage = "https://github.com/cpea2506/one_monokai.nvim";
      license = with licenses; [ mit ];
    };
  };
  nvim-go = buildVimPluginFrom2Nix {
    pname = "nvim-go";
    version = "2022-10-19";
    src = fetchurl {
      url = "https://github.com/crispgm/nvim-go/archive/04d013deb489af1ebe5296e79367599ea1a99e79.tar.gz";
      sha256 = "0fn0d11x6d58x3hia2zi3wfj72d3sa83sxc9c6zrm7mnk82744n4";
    };
    meta = with lib; {
      description = "A minimal implementation of Golang development plugin for Neovim";
      homepage = "https://github.com/crispgm/nvim-go";
      license = with licenses; [ mit ];
    };
  };
  nvim-tabline = buildVimPluginFrom2Nix {
    pname = "nvim-tabline";
    version = "2022-02-21";
    src = fetchurl {
      url = "https://github.com/crispgm/nvim-tabline/archive/cb908965b67aac4093162523b8939a7c568adc30.tar.gz";
      sha256 = "1lha3czdb5vnr9rf2f992k8qsgdg1d4d61zr5kg8vm9gxfdnmdgc";
    };
    meta = with lib; {
      description = "nvim port of tabline.vim with Lua";
      homepage = "https://github.com/crispgm/nvim-tabline";
      license = with licenses; [ mit ];
    };
  };
  telescope-heading-nvim = buildVimPluginFrom2Nix {
    pname = "telescope-heading-nvim";
    version = "2022-12-04";
    src = fetchurl {
      url = "https://github.com/crispgm/telescope-heading.nvim/archive/b1969c1b1b3de52c45b4c440e0784c33b5814954.tar.gz";
      sha256 = "1bjrcd5vckk9psmn016r01ng6frl1rklr4jkiz3jxwq2dk08v4xr";
    };
    meta = with lib; {
      description = "An extension for telescope.nvim that allows you to switch between headings";
      homepage = "https://github.com/crispgm/telescope-heading.nvim";
      license = with licenses; [ mit ];
    };
  };
  bookmarks-nvim = buildVimPluginFrom2Nix {
    pname = "bookmarks-nvim";
    version = "2022-12-09";
    src = fetchurl {
      url = "https://github.com/crusj/bookmarks.nvim/archive/556ed5ea89549223216297ac2d97689b7a595b68.tar.gz";
      sha256 = "1kd0rc8w72257ry3p1hfc3if4m8q9h8zkx0x9hdys6pc2v85bbhw";
    };
    meta = with lib; {
      description = "Remember file locations and sort by time and frequency";
      homepage = "https://github.com/crusj/bookmarks.nvim";
      license = with licenses; [ mit ];
    };
  };
  hierarchy-tree-go-nvim = buildVimPluginFrom2Nix {
    pname = "hierarchy-tree-go-nvim";
    version = "2022-12-01";
    src = fetchurl {
      url = "https://github.com/crusj/hierarchy-tree-go.nvim/archive/9fab9ddefe81edab4a144824955d2d085db3f49a.tar.gz";
      sha256 = "1s6w7zidf7cnhh89vzisklaa8mawkc96g01sw2whcjqhwql71fyj";
    };
    meta = with lib; {
      description = "Golang Hierarchy tree views";
      homepage = "https://github.com/crusj/hierarchy-tree-go.nvim";
      license = with licenses; [ mit ];
    };
  };
  structrue-go-nvim = buildVimPluginFrom2Nix {
    pname = "structrue-go-nvim";
    version = "2022-09-29";
    src = fetchurl {
      url = "https://github.com/crusj/structrue-go.nvim/archive/4282b860cde0f5f25a1fb1af3ea8edb0db278e73.tar.gz";
      sha256 = "14gmm1hmma1kmd6g4mn5kypm4qk1bgvdmj2db7da47f6i0y256nj";
    };
    meta = with lib; {
      description = "A better structured display of golang symbols information";
      homepage = "https://github.com/crusj/structrue-go.nvim";
      license = with licenses; [ mit ];
    };
  };
  yaml-nvim = buildVimPluginFrom2Nix {
    pname = "yaml-nvim";
    version = "2022-10-23";
    src = fetchurl {
      url = "https://github.com/cuducos/yaml.nvim/archive/3b5b83a5064389ffa080f15a69cde0825ed7f9e6.tar.gz";
      sha256 = "0mjmy0171hkwn4kr19flcr4fnwz8l1gmwalcdi24mmmxinv41bai";
    };
    meta = with lib; {
      description = "🍒 YAML toolkit for Neovim users";
      homepage = "https://github.com/cuducos/yaml.nvim";
      license = with licenses; [ gpl3Only ];
    };
  };
  telescope-tmuxinator-nvim = buildVimPluginFrom2Nix {
    pname = "telescope-tmuxinator-nvim";
    version = "2021-08-19";
    src = fetchurl {
      url = "https://github.com/danielpieper/telescope-tmuxinator.nvim/archive/9b51e2dc870c46aa57e277bb70b2c1c000a7a857.tar.gz";
      sha256 = "0g39l6dc0wh0grzh4nc6q8w82plsdb9i1dqhkycbimnhmij1cf3k";
    };
    meta = with lib; {
      description = "Integration for tmuxinator with telescope.nvim";
      homepage = "https://github.com/danielpieper/telescope-tmuxinator.nvim";
      license = with licenses; [ mit ];
    };
  };
  neogen = buildVimPluginFrom2Nix {
    pname = "neogen";
    version = "2022-11-11";
    src = fetchurl {
      url = "https://github.com/danymat/neogen/archive/91b093f11f9f7131d16a0a0f3de31d32a582d3d0.tar.gz";
      sha256 = "0z6smi26p3hv4jjdpj8a1d2y5xqhni3cyf6v35hqa155sk24dkiz";
    };
    meta = with lib; {
      description = "A better annotation generator. Supports multiple languages and annotation conventions";
      homepage = "https://github.com/danymat/neogen";
      license = with licenses; [ gpl3Only ];
    };
  };
  bubbly-nvim = buildVimPluginFrom2Nix {
    pname = "bubbly-nvim";
    version = "2022-05-31";
    src = fetchurl {
      url = "https://github.com/datwaft/bubbly.nvim/archive/d1303d951e905c36d33a272c77bcb7e479e637ab.tar.gz";
      sha256 = "0psc7m33r0ppfmxpnl0m6fmii49mh5a6w0xjbn3n1011b3z0i9wn";
    };
    meta = with lib; {
      description = "Bubbly statusline for neovim";
      homepage = "https://github.com/datwaft/bubbly.nvim";
      license = with licenses; [ mit ];
    };
  };
  nvim-markdown-preview = buildVimPluginFrom2Nix {
    pname = "nvim-markdown-preview";
    version = "2022-05-21";
    src = fetchurl {
      url = "https://github.com/davidgranstrom/nvim-markdown-preview/archive/3d6f941beb223b23122973d077522e9e2ee33068.tar.gz";
      sha256 = "102jzk5f5nnfi4h6lrjd1mj3800cvxr0n7f50ivcp3gcvbhzbzy8";
    };
    meta = with lib; {
      description = "Markdown preview for neovim using pandoc and live-server";
      homepage = "https://github.com/davidgranstrom/nvim-markdown-preview";
      license = with licenses; [ gpl3Only ];
    };
  };
  osc-nvim = buildVimPluginFrom2Nix {
    pname = "osc-nvim";
    version = "2021-08-02";
    src = fetchurl {
      url = "https://github.com/davidgranstrom/osc.nvim/archive/cc27b8a5e3ffd4cb1d8c9eaa4a2082cbaf9e4c77.tar.gz";
      sha256 = "175xm7gf08sqcpwgv6yp3k79ppxm19ysvd1p5l1zpzf4p6rhv8h6";
    };
    meta = with lib; {
      description = "Open Sound Control for Neovim";
      homepage = "https://github.com/davidgranstrom/osc.nvim";
    };
  };
  scnvim = buildVimPluginFrom2Nix {
    pname = "scnvim";
    version = "2022-11-06";
    src = fetchurl {
      url = "https://github.com/davidgranstrom/scnvim/archive/67eb22f5d913f6b8096427a0810a3ebc51156a74.tar.gz";
      sha256 = "1lfm49mwqrs28ai0976y7qyfi1r31hk06fhm57z27bgrkaja3a50";
    };
    meta = with lib; {
      description = "Neovim frontend for SuperCollider";
      homepage = "https://github.com/davidgranstrom/scnvim";
      license = with licenses; [ gpl3Only ];
    };
  };
  cinnamon-nvim = buildVimPluginFrom2Nix {
    pname = "cinnamon-nvim";
    version = "2022-12-04";
    src = fetchurl {
      url = "https://github.com/declancm/cinnamon.nvim/archive/c406ffda3a0302f32c23b24ab756ea20467d6578.tar.gz";
      sha256 = "1hsl39pk689rr58gv9slp4wrbpphwwi3lxwg3cnmjpngib5nabla";
    };
    meta = with lib; {
      description = "Smooth scrolling for ANY movement command 🤯. A Neovim plugin written in Lua!";
      homepage = "https://github.com/declancm/cinnamon.nvim";
    };
  };
  windex-nvim = buildVimPluginFrom2Nix {
    pname = "windex-nvim";
    version = "2022-07-12";
    src = fetchurl {
      url = "https://github.com/declancm/windex.nvim/archive/1e86cba6f6f55ced60d17d6c6ebd51388a637b86.tar.gz";
      sha256 = "163gvsx0nx3yd45yn9aqfiyhp0asfd7icagj4l2xkwbasbbyg0lx";
    };
    meta = with lib; {
      description = "🧼 Clean window maximizing, terminal toggling, window/tmux pane movements and more!";
      homepage = "https://github.com/declancm/windex.nvim";
      license = with licenses; [ mit ];
    };
  };
  greyjoy-nvim = buildVimPluginFrom2Nix {
    pname = "greyjoy-nvim";
    version = "2022-11-05";
    src = fetchurl {
      url = "https://github.com/desdic/greyjoy.nvim/archive/d0804c393e55f18d538ce1ead149232765b99170.tar.gz";
      sha256 = "00y5xg038q7f0mpykm8mxqhap39imamsxj7783n9pmn1iv1v885z";
    };
    meta = with lib; {
      description = "Launcher for Neovim";
      homepage = "https://github.com/desdic/greyjoy.nvim";
      license = with licenses; [ mit ];
    };
  };
  vim = buildVimPluginFrom2Nix {
    pname = "vim";
    version = "2022-11-30";
    src = fetchurl {
      url = "https://github.com/dracula/vim/archive/947e5298766f30bdb813749bf867913b29a06eac.tar.gz";
      sha256 = "1dqn5sqqczklcgbqgsyxibbvdbmkw5m4aradqwmf20mc7ysk91ib";
    };
    meta = with lib; {
      description = "🧛🏻‍♂️ Dark theme for Vim";
      homepage = "https://github.com/dracula/vim";
      license = with licenses; [ mit ];
    };
  };
  tree-climber-nvim = buildVimPluginFrom2Nix {
    pname = "tree-climber-nvim";
    version = "2022-10-14";
    src = fetchurl {
      url = "https://github.com/drybalka/tree-climber.nvim/archive/9b0c8c8358f575f924008945c74fd4f40d814cd7.tar.gz";
      sha256 = "0kvh2qr8qnc01s6lfxspfj582kr07afv4dj7jqz57rkalf8y669x";
    };
    meta = with lib; {
      description = "No description";
      homepage = "https://github.com/drybalka/tree-climber.nvim";
      license = with licenses; [ mit ];
    };
  };
  goimpl-nvim = buildVimPluginFrom2Nix {
    pname = "goimpl-nvim";
    version = "2022-07-16";
    src = fetchurl {
      url = "https://github.com/edolphin-ydf/goimpl.nvim/archive/df010c46af75f3231e5369e60dd39a69fbc9449b.tar.gz";
      sha256 = "1jmla4278ikmzy3m67aal2l837qscrd7d8525fj15mdq0asm1laf";
    };
    meta = with lib; {
      description = "Generate stub for interface on a type";
      homepage = "https://github.com/edolphin-ydf/goimpl.nvim";
    };
  };
  clipboard-image-nvim = buildVimPluginFrom2Nix {
    pname = "clipboard-image-nvim";
    version = "2022-11-10";
    src = fetchurl {
      url = "https://github.com/ekickx/clipboard-image.nvim/archive/d1550dc26729b7954f95269952e90471b838fa25.tar.gz";
      sha256 = "12177mxnji5g838qpwwic7yv24yyv1dfnk7vw2dqpymy2yic80rb";
    };
    meta = with lib; {
      description = "Neovim Lua plugin to paste image from clipboard";
      homepage = "https://github.com/ekickx/clipboard-image.nvim";
      license = with licenses; [ mit ];
    };
  };
  dirbuf-nvim = buildVimPluginFrom2Nix {
    pname = "dirbuf-nvim";
    version = "2022-08-28";
    src = fetchurl {
      url = "https://github.com/elihunter173/dirbuf.nvim/archive/ac7ad3c8e61630d15af1f6266441984f54f54fd2.tar.gz";
      sha256 = "115z2h99sc55zv2dvsm73a9dlf77zy3dv68x6ry1d8qzi415d60q";
    };
    meta = with lib; {
      description = "A file manager for Neovim which lets you edit your filesystem like you edit text";
      homepage = "https://github.com/elihunter173/dirbuf.nvim";
      license = with licenses; [ agpl3Only ];
    };
  };
  carbon-now-nvim = buildVimPluginFrom2Nix {
    pname = "carbon-now-nvim";
    version = "2022-07-15";
    src = fetchurl {
      url = "https://github.com/ellisonleao/carbon-now.nvim/archive/e64e29e5b89d20548e792b3d6c3995c08d7ee636.tar.gz";
      sha256 = "1b89fgwschm8dvj8qizzpn2nlymq5s9myfrjxjbb4f4d5r7a07wv";
    };
    meta = with lib; {
      description = "Create beautiful code snippets directly from your neovim terminal";
      homepage = "https://github.com/ellisonleao/carbon-now.nvim";
    };
  };
  glow-nvim = buildVimPluginFrom2Nix {
    pname = "glow-nvim";
    version = "2022-11-30";
    src = fetchurl {
      url = "https://github.com/ellisonleao/glow.nvim/archive/20d1cd087f8728f21a048a3b6259f6177237b39e.tar.gz";
      sha256 = "10b5z048i94wqkdvajv9bjaica1546ljyhfzdi7khz5xs805rc9y";
    };
    meta = with lib; {
      description = "A markdown preview directly in your neovim";
      homepage = "https://github.com/ellisonleao/glow.nvim";
      license = with licenses; [ mit ];
    };
  };
  nvim-plugin-template = buildVimPluginFrom2Nix {
    pname = "nvim-plugin-template";
    version = "2022-12-06";
    src = fetchurl {
      url = "https://github.com/ellisonleao/nvim-plugin-template/archive/0db755643b618e1a230470688c294cb541ff5fd7.tar.gz";
      sha256 = "1b7gpcmmvrjjr14lflxzwaazmb5padkjip6bmdb69s2rvbk85i2z";
    };
    meta = with lib; {
      description = "A neovim plugin template for github repos";
      homepage = "https://github.com/ellisonleao/nvim-plugin-template";
    };
  };
  obsidian-nvim = buildVimPluginFrom2Nix {
    pname = "obsidian-nvim";
    version = "2022-12-06";
    src = fetchurl {
      url = "https://github.com/epwalsh/obsidian.nvim/archive/5436cb037862192e24ccac89bf5fba875a54284f.tar.gz";
      sha256 = "0spxl3hggk4vqm1nmxvrd1gbpnncn5an5az15qwhd30n12hdmy0q";
    };
    meta = with lib; {
      description = "Neovim plugin for Obsidian, written in Lua";
      homepage = "https://github.com/epwalsh/obsidian.nvim";
      license = with licenses; [ asl20 ];
    };
  };
  nvim-dev-container = buildVimPluginFrom2Nix {
    pname = "nvim-dev-container";
    version = "2022-07-21";
    src = fetchurl {
      url = "https://github.com/esensar/nvim-dev-container/archive/4d01b653069ae00dcb8161b86ef337eca02b0bae.tar.gz";
      sha256 = "1wz03wqajrci4aynqwv27zm8hvhdm74zd65w967b08slh3fi3av5";
    };
    meta = with lib; {
      description = "Neovim dev container support - Mirror of https://codeberg.org/esensar/nvim-dev-container";
      homepage = "https://github.com/esensar/nvim-dev-container";
      license = with licenses; [ mit ];
    };
  };
  feline-nvim = buildVimPluginFrom2Nix {
    pname = "feline-nvim";
    version = "2022-12-04";
    src = fetchurl {
      url = "https://github.com/feline-nvim/feline.nvim/archive/573e6d1e213de976256c84e1cb2f55665549b828.tar.gz";
      sha256 = "0mvszfzwgrwg2v8x96yi5zglf42fn6gwb7d18nx17f2qysharknd";
    };
    meta = with lib; {
      description = "A minimal, stylish and customizable statusline for Neovim written in Lua";
      homepage = "https://github.com/feline-nvim/feline.nvim";
      license = with licenses; [ gpl3Only ];
    };
  };
  knap = buildVimPluginFrom2Nix {
    pname = "knap";
    version = "2022-10-06";
    src = fetchurl {
      url = "https://github.com/frabjous/knap/archive/f8a805385023a46cef71cd5baf2bea98a7a4142a.tar.gz";
      sha256 = "0w2l4bs5b5gddzy0d2pq45pd5m6i2gx11mg4ql3nhc2h37vq98zs";
    };
    meta = with lib; {
      description = "Neovim plugin for creating live-updating-as-you-type previews of LaTeX, markdown, and other files in the viewer of your choice";
      homepage = "https://github.com/frabjous/knap";
      license = with licenses; [ gpl3Only ];
    };
  };
  JpFormat-vim = buildVimPluginFrom2Nix {
    pname = "JpFormat-vim";
    version = "2019-07-12";
    src = fetchurl {
      url = "https://github.com/fuenor/JpFormat.vim/archive/02736fc184e15efa8a233caaec037aabb90ad706.tar.gz";
      sha256 = "021ivm7dhy67fi3mb9zjrzhfwg2k08cab9a55rz9af1fkdq51a8v";
    };
    meta = with lib; {
      description = "gq and text formatter for japanese text";
      homepage = "https://github.com/fuenor/JpFormat.vim";
    };
  };
  cryptoprice-nvim = buildVimPluginFrom2Nix {
    pname = "cryptoprice-nvim";
    version = "2022-03-18";
    src = fetchurl {
      url = "https://github.com/gaborvecsei/cryptoprice.nvim/archive/09bdffc47b3a959bc6d9065fb25b120fc84cdea3.tar.gz";
      sha256 = "1w39h0hfw2apay2lf90f83lpbiqakzina38w2ja2m2b1sb2a6nln";
    };
    meta = with lib; {
      description = "NeoVim plugin with which you can check the price of your favourite cryptos";
      homepage = "https://github.com/gaborvecsei/cryptoprice.nvim";
    };
  };
  memento-nvim = buildVimPluginFrom2Nix {
    pname = "memento-nvim";
    version = "2022-03-18";
    src = fetchurl {
      url = "https://github.com/gaborvecsei/memento.nvim/archive/7e5e5a86ccaec2892fc2d8197fc01a25d1cf8951.tar.gz";
      sha256 = "1758ghxl7z4hrvz76hp4lwg5z1dih24hn6z6cxq84wbbfgzjd7wj";
    };
    meta = with lib; {
      description = "A NeoVim plugin which remembers where you've been";
      homepage = "https://github.com/gaborvecsei/memento.nvim";
    };
  };
  cutlass-nvim = buildVimPluginFrom2Nix {
    pname = "cutlass-nvim";
    version = "2022-09-26";
    src = fetchurl {
      url = "https://github.com/gbprod/cutlass.nvim/archive/e607a4787ae898fe844ea678e7f5977a9358d0b1.tar.gz";
      sha256 = "0yvmxi24iw1rqbsp34kxrjazjcqx59lihi94zi0f51z890fk9hh2";
    };
    meta = with lib; {
      description = "Plugin that adds a 'cut' operation separate from 'delete' ";
      homepage = "https://github.com/gbprod/cutlass.nvim";
      license = with licenses; [ wtfpl ];
    };
  };
  nord-nvim = buildVimPluginFrom2Nix {
    pname = "nord-nvim";
    version = "2022-12-09";
    src = fetchurl {
      url = "https://github.com/gbprod/nord.nvim/archive/7656bc418ec6bcceeecb926c4eb23725933f345f.tar.gz";
      sha256 = "1g91w0pig56viaza5kr8jryac6fh2ycxylr05qygl4i78p628gjh";
    };
    meta = with lib; {
      description = " An arctic, north-bluish clean and elegant Neovim theme. ";
      homepage = "https://github.com/gbprod/nord.nvim";
      license = with licenses; [ wtfpl ];
    };
  };
  phpactor-nvim = buildVimPluginFrom2Nix {
    pname = "phpactor-nvim";
    version = "2022-10-03";
    src = fetchurl {
      url = "https://github.com/gbprod/phpactor.nvim/archive/994e513f4627fd448c360391d002326f52b074bd.tar.gz";
      sha256 = "0jyhd889fxywla1ima4lwpc68brikrwapi7v95ld2mxjkk3w9npk";
    };
    meta = with lib; {
      description = "Lua version of the Phpactor vim plugin to take advantage of the latest Neovim features";
      homepage = "https://github.com/gbprod/phpactor.nvim";
    };
  };
  stay-in-place-nvim = buildVimPluginFrom2Nix {
    pname = "stay-in-place-nvim";
    version = "2022-10-03";
    src = fetchurl {
      url = "https://github.com/gbprod/stay-in-place.nvim/archive/c7aa6caad8a0e5181abbf83f50d9d8c7d06ddd43.tar.gz";
      sha256 = "11qrbvq5hms8f0vw00cqp0arvqibcsdc1impw84v23w7f70g7gf1";
    };
    meta = with lib; {
      description = "Neovim plugin that prevent cursor from moving when using shift and filter actions";
      homepage = "https://github.com/gbprod/stay-in-place.nvim";
      license = with licenses; [ wtfpl ];
    };
  };
  substitute-nvim = buildVimPluginFrom2Nix {
    pname = "substitute-nvim";
    version = "2022-11-21";
    src = fetchurl {
      url = "https://github.com/gbprod/substitute.nvim/archive/1491b84348de39a54865f321b66bd2c03700ef04.tar.gz";
      sha256 = "1v8l41c2q4lvgbhnbvyc6c5wc4qay10fs7laa9jikj7p2zvqd72v";
    };
    meta = with lib; {
      description = "Neovim plugin introducing a new operators motions to quickly replace and exchange text";
      homepage = "https://github.com/gbprod/substitute.nvim";
      license = with licenses; [ wtfpl ];
    };
  };
  yanky-nvim = buildVimPluginFrom2Nix {
    pname = "yanky-nvim";
    version = "2022-12-09";
    src = fetchurl {
      url = "https://github.com/gbprod/yanky.nvim/archive/022899d0c30d3a6344344f05df0850574c38ac9c.tar.gz";
      sha256 = "16am666w74y8w13842qbfd71hva1rjn1vhn35hf9965hdv7gcfz6";
    };
    meta = with lib; {
      description = "Improved Yank and Put functionalities for Neovim";
      homepage = "https://github.com/gbprod/yanky.nvim";
      license = with licenses; [ wtfpl ];
    };
  };
  SmoothCursor-nvim = buildVimPluginFrom2Nix {
    pname = "SmoothCursor-nvim";
    version = "2022-12-09";
    src = fetchurl {
      url = "https://github.com/gen740/SmoothCursor.nvim/archive/cdec4c0ca2b07142b96b7e8466d4c4f8f16a8048.tar.gz";
      sha256 = "00pj60zgyhchmxg9z5c6kyg6a3p8mqgi8lgjsaa653yv410714nl";
    };
    meta = with lib; {
      description = "No description";
      homepage = "https://github.com/gen740/SmoothCursor.nvim";
      license = with licenses; [ mit ];
    };
  };
  nvim-commaround = buildVimPluginFrom2Nix {
    pname = "nvim-commaround";
    version = "2022-01-14";
    src = fetchurl {
      url = "https://github.com/gennaro-tedesco/nvim-commaround/archive/46f84e191f44dd7023128e296905fb882a74435f.tar.gz";
      sha256 = "04rgsrjjn58wys0z6riw8njr4194q4qqap03na7l8mz88mbcsi3j";
    };
    meta = with lib; {
      description = "nvim plugin to toggle comments on and off";
      homepage = "https://github.com/gennaro-tedesco/nvim-commaround";
      license = with licenses; [ mit ];
    };
  };
  leap-nvim = buildVimPluginFrom2Nix {
    pname = "leap-nvim";
    version = "2022-12-11";
    src = fetchurl {
      url = "https://github.com/ggandor/leap.nvim/archive/8f0d4a96d888f40ceff4f5a47f01ec06d48cb75a.tar.gz";
      sha256 = "12g2nc5q880kr492gd64pxcmvjsizp758knn2x1mj3wwlrhf4wws";
    };
    meta = with lib; {
      description = "🦘 Neovim's answer to the mouse: a \"clairvoyant\" interface that makes on-screen navigation quicker and more natural than ever";
      homepage = "https://github.com/ggandor/leap.nvim";
      license = with licenses; [ mit ];
    };
  };
  cybu-nvim = buildVimPluginFrom2Nix {
    pname = "cybu-nvim";
    version = "2022-11-04";
    src = fetchurl {
      url = "https://github.com/ghillb/cybu.nvim/archive/43acf0ffb51982f9217f3ebfb793d0a0adbba93b.tar.gz";
      sha256 = "1jphg49s0ml4xjlf02l3h0r2l8c5xy3yqaqg2dxzgcdi58bhd2hx";
    };
    meta = with lib; {
      description = "Neovim plugin that offers context when cycling buffers in the form of a customizable notification window";
      homepage = "https://github.com/ghillb/cybu.nvim";
      license = with licenses; [ mit ];
    };
  };
  firenvim = buildVimPluginFrom2Nix {
    pname = "firenvim";
    version = "2022-11-10";
    src = fetchurl {
      url = "https://github.com/glacambre/firenvim/archive/17a189f0f1e2d4197e00cd56dbeaed8c268bac8c.tar.gz";
      sha256 = "047g5sa4pvn5qppnik1n6nxzl354f9izivm52pvanr7gf6yr9i79";
    };
    meta = with lib; {
      description = "Embed Neovim in Chrome, Firefox & others";
      homepage = "https://github.com/glacambre/firenvim";
      license = with licenses; [ gpl3Only ];
    };
  };
  indent-guides-nvim = buildVimPluginFrom2Nix {
    pname = "indent-guides-nvim";
    version = "2021-03-26";
    src = fetchurl {
      url = "https://github.com/glepnir/indent-guides.nvim/archive/e261e5a43b5a05557a66b760a4132a6c502cc0e4.tar.gz";
      sha256 = "0yx3w60hp1gjk0wc4ilkazmiqa8r2yhhys0x6csmhzxdk7wpi8bz";
    };
    meta = with lib; {
      description = "No description";
      homepage = "https://github.com/glepnir/indent-guides.nvim";
      license = with licenses; [ mit ];
    };
  };
  lspsaga-nvim = buildVimPluginFrom2Nix {
    pname = "lspsaga-nvim";
    version = "2022-12-02";
    src = fetchurl {
      url = "https://github.com/glepnir/lspsaga.nvim/archive/2eb8d023790099b182ac0c43d13dede80f42153e.tar.gz";
      sha256 = "0mf7jg1af4z5ipikdhxf0haqqi1nrx39q33ipzgx61s8jsvmqc76";
    };
    meta = with lib; {
      description = "neovim lsp plugin ";
      homepage = "https://github.com/glepnir/lspsaga.nvim";
      license = with licenses; [ mit ];
    };
  };
  prodoc-nvim = buildVimPluginFrom2Nix {
    pname = "prodoc-nvim";
    version = "2022-08-20";
    src = fetchurl {
      url = "https://github.com/glepnir/prodoc.nvim/archive/a0838640976165ed95ecbd49bf59eb26e930c1eb.tar.gz";
      sha256 = "1d9hpd03p501wly666spgc4mbmhb1icixrczfdk3jswb25v2m6bc";
    };
    meta = with lib; {
      description = "a neovim comment and  annotation plugin using coroutine";
      homepage = "https://github.com/glepnir/prodoc.nvim";
      license = with licenses; [ mit ];
    };
  };
  projections-nvim = buildVimPluginFrom2Nix {
    pname = "projections-nvim";
    version = "2022-12-09";
    src = fetchurl {
      url = "https://github.com/GnikDroy/projections.nvim/archive/be100ad3540952542c2a1135f39cddea8a1a00de.tar.gz";
      sha256 = "15ldp5f371lcdw8jkjlf4s6xv0r3dwgb2fpypf2qhyf4svgzx4jh";
    };
    meta = with lib; {
      description = "A map to your filesystem";
      homepage = "https://github.com/GnikDroy/projections.nvim";
      license = with licenses; [ gpl3Only ];
    };
  };
  codewindow-nvim = buildVimPluginFrom2Nix {
    pname = "codewindow-nvim";
    version = "2022-10-31";
    src = fetchurl {
      url = "https://github.com/gorbit99/codewindow.nvim/archive/987b394b3c987cb9dd6c07ea57de88a4ce64f7e1.tar.gz";
      sha256 = "0j3z611204f7lcjcj0xjwfpx0753321hiph6k1rnx40sv840h1lh";
    };
    meta = with lib; {
      description = "No description";
      homepage = "https://github.com/gorbit99/codewindow.nvim";
    };
  };
  fcitx-nvim = buildVimPluginFrom2Nix {
    pname = "fcitx-nvim";
    version = "2022-06-25";
    src = fetchurl {
      url = "https://github.com/h-hg/fcitx.nvim/archive/dcb6b70888aa893d3d223bb777d4117bbdac06a7.tar.gz";
      sha256 = "06h1ryjzcznd0w2i973p9kvcwgjdrxf133jh2cgc8xf87z7diwk1";
    };
    meta = with lib; {
      description = "A Neovim plugin writing in Lua to switch and restore fcitx state for each buffer";
      homepage = "https://github.com/h-hg/fcitx.nvim";
      license = with licenses; [ mit ];
    };
  };
  ataraxis-lua = buildVimPluginFrom2Nix {
    pname = "ataraxis-lua";
    version = "2022-07-31";
    src = fetchgit {
      url = "https://git.sr.ht/~henriquehbr/ataraxis.lua";
      rev = "72e6f9e3d14218129c90b8f5ceaed68c8d68e873";
      sha256 = "16ggsip1qa970343ibxlj6sgpc8anwjwbv8gjxj0cgi0gn8slkhx";
    };
    meta = with lib; {
      description = "No description";
      homepage = "https://sr.ht/~henriquehbr/ataraxis.lua/";
    };
  };
  nvim-startup-lua = buildVimPluginFrom2Nix {
    pname = "nvim-startup-lua";
    version = "2022-07-31";
    src = fetchgit {
      url = "https://git.sr.ht/~henriquehbr/nvim-startup.lua";
      rev = "f2f450df0ea970b9e7848ab1634f01baccc1dcf8";
      sha256 = "18355a1mb4a0p2fbirzyx1axs4vl7vnmgls5hpgdw51kylffz9gp";
    };
    meta = with lib; {
      description = "No description";
      homepage = "https://sr.ht/~henriquehbr/nvim-startup.lua/";
    };
  };
  iron-nvim = buildVimPluginFrom2Nix {
    pname = "iron-nvim";
    version = "2022-12-05";
    src = fetchurl {
      url = "https://github.com/hkupty/iron.nvim/archive/bd5ad2a04195fb7a739eb973fa2d9f7ccc35ab4b.tar.gz";
      sha256 = "1svm6zfykr6zfpwsk729ki9xs2jgxzbzhny4s44hkr6h7c0q5gv8";
    };
    meta = with lib; {
      description = "Interactive Repl Over Neovim";
      homepage = "https://github.com/hkupty/iron.nvim";
      license = with licenses; [ bsd3 ];
    };
  };
  nvimux = buildVimPluginFrom2Nix {
    pname = "nvimux";
    version = "2022-05-02";
    src = fetchurl {
      url = "https://github.com/hkupty/nvimux/archive/a2cd0cab0acf6c37d999e0cfd199a9fa126a8dcf.tar.gz";
      sha256 = "0gx8d2p2w1wlcxka2rir0rmyj1zc8nlhb97v092bp8vkvad1am8s";
    };
    meta = with lib; {
      description = "Neovim as a TMUX replacement";
      homepage = "https://github.com/hkupty/nvimux";
      license = with licenses; [ asl20 ];
    };
  };
  vim-emacscommandline = buildVimPluginFrom2Nix {
    pname = "vim-emacscommandline";
    version = "2017-11-24";
    src = fetchurl {
      url = "https://github.com/houtsnip/vim-emacscommandline/archive/3363eeb1f958bd0630448fdaa5f19ba7a834b343.tar.gz";
      sha256 = "0xvx1ds4vjyly5ls56h3wrrww7bplsdwqjljchnjpqlnji2ylxh2";
    };
    meta = with lib; {
      description = "Emacs-style mappings for command-line mode in vim";
      homepage = "https://github.com/houtsnip/vim-emacscommandline";
    };
  };
  vim-hy = buildVimPluginFrom2Nix {
    pname = "vim-hy";
    version = "2022-07-18";
    src = fetchurl {
      url = "https://github.com/hylang/vim-hy/archive/650574a6095c8d911b471a9f5814129a373728af.tar.gz";
      sha256 = "0f50jr1gkf9k9pw3dpmig45s5cgqal8rzm19vqdx6cpcbx04zs2d";
    };
    meta = with lib; {
      description = "Vim files and plugins for Hy";
      homepage = "https://github.com/hylang/vim-hy";
    };
  };
  vim-fish-inkch = buildVimPluginFrom2Nix {
    pname = "vim-fish-inkch";
    version = "2022-03-06";
    src = fetchurl {
      url = "https://github.com/inkch/vim-fish/archive/e648eaf250be676eef02b3e2c9e25eabfdb2ed75.tar.gz";
      sha256 = "0ysfc4mg8jh9i10k6jzaic9fhmwaqhlr600x7ikyps84fdajddhn";
    };
    meta = with lib; {
      description = "Vim support for editing fish scripts";
      homepage = "https://github.com/inkch/vim-fish";
      license = with licenses; [ mit ];
    };
  };
  fm-nvim = buildVimPluginFrom2Nix {
    pname = "fm-nvim";
    version = "2022-10-11";
    src = fetchurl {
      url = "https://github.com/is0n/fm-nvim/archive/8e6a77049330e7c797eb9e63affd75eb796fe75e.tar.gz";
      sha256 = "0wb8swzi3dhwnxvwclfksid6wsmb5wsmx08015dgdyfh49b4a77v";
    };
    meta = with lib; {
      description = "🗂 Neovim plugin that lets you use your favorite terminal file managers (and fuzzy finders) from within Neovim";
      homepage = "https://github.com/is0n/fm-nvim";
      license = with licenses; [ gpl3Only ];
    };
  };
  jaq-nvim = buildVimPluginFrom2Nix {
    pname = "jaq-nvim";
    version = "2022-10-11";
    src = fetchurl {
      url = "https://github.com/is0n/jaq-nvim/archive/236296aae555657487d1bb4d066cbde9d79d8cd4.tar.gz";
      sha256 = "0ba5jawp4dmaxim4chvqd4wi3s1z4j65g8lv4972cj2vvmr2mglm";
    };
    meta = with lib; {
      description = "⚙️ Just Another Quickrun Plugin for Neovim in Lua";
      homepage = "https://github.com/is0n/jaq-nvim";
      license = with licenses; [ gpl3Only ];
    };
  };
  modus-theme-vim = buildVimPluginFrom2Nix {
    pname = "modus-theme-vim";
    version = "2022-10-09";
    src = fetchurl {
      url = "https://github.com/ishan9299/modus-theme-vim/archive/4d827fbf1aad55f4d62225f7b999efc5023864a3.tar.gz";
      sha256 = "0m2yn6fjzgsfvni7narwazi8399kg1gi7za8wg8pbsdkhlpz3xq3";
    };
    meta = with lib; {
      description = "Port of modus-themes in neovim";
      homepage = "https://github.com/ishan9299/modus-theme-vim";
      license = with licenses; [ mit ];
    };
  };
  mkdnflow-nvim = buildVimPluginFrom2Nix {
    pname = "mkdnflow-nvim";
    version = "2022-10-25";
    src = fetchurl {
      url = "https://github.com/jakewvincent/mkdnflow.nvim/archive/750dacc026467b135a17620eb0e14ab87c0027c9.tar.gz";
      sha256 = "06mwdqfn77zl8mvrgfm0dp74brd43hijv78yvf0qm0cm3ymagkmb";
    };
    meta = with lib; {
      description = "Fluent navigation and management of markdown notebooks";
      homepage = "https://github.com/jakewvincent/mkdnflow.nvim";
      license = with licenses; [ gpl3Only ];
    };
  };
  texmagic-nvim = buildVimPluginFrom2Nix {
    pname = "texmagic-nvim";
    version = "2022-05-15";
    src = fetchurl {
      url = "https://github.com/jakewvincent/texmagic.nvim/archive/3c0d3b63c62486f02807663f5c5948e8b237b182.tar.gz";
      sha256 = "0kmvziz350vrpb25bcmaf1q0dac1hj3vrb5llf93rdvnr2rnwdz0";
    };
    meta = with lib; {
      description = "No description";
      homepage = "https://github.com/jakewvincent/texmagic.nvim";
      license = with licenses; [ gpl3Only ];
    };
  };
  nvim-magic = buildVimPluginFrom2Nix {
    pname = "nvim-magic";
    version = "2022-12-10";
    src = fetchurl {
      url = "https://github.com/jameshiew/nvim-magic/archive/9d306f5ac272eb7f7bf9b81d80f25e9973316a97.tar.gz";
      sha256 = "050pl3n3b4bsgsysxfr18002fbjc28wycinblzjyqsyrc8565x8g";
    };
    meta = with lib; {
      description = ":genie: Pluggable framework for using AI code assistance in Neovim";
      homepage = "https://github.com/jameshiew/nvim-magic";
      license = with licenses; [ mit ];
    };
  };
  nvim-remote-containers = buildVimPluginFrom2Nix {
    pname = "nvim-remote-containers";
    version = "2022-11-03";
    src = fetchurl {
      url = "https://github.com/jamestthompson3/nvim-remote-containers/archive/5c689be74f726806754d67de4eb21539c8efb620.tar.gz";
      sha256 = "0ax6r1ngwljq60jwpiwn9pdnxcl07c7l5gb4wivi124z343sbc0z";
    };
    meta = with lib; {
      description = "Develop inside docker containers, just like VSCode";
      homepage = "https://github.com/jamestthompson3/nvim-remote-containers";
    };
  };
  carrot-nvim = buildVimPluginFrom2Nix {
    pname = "carrot-nvim";
    version = "2022-10-12";
    src = fetchurl {
      url = "https://github.com/jbyuki/carrot.nvim/archive/b6449b321664de482a8d943671e8e7a3504444be.tar.gz";
      sha256 = "1gl93fxqvx4jld784qmn4hbn8m8lcy6g38y28k436ig3jyry8s3b";
    };
    meta = with lib; {
      description = "Evaluate Neovim Lua inside Markdown";
      homepage = "https://github.com/jbyuki/carrot.nvim";
      license = with licenses; [ mit ];
    };
  };
  instant-nvim = buildVimPluginFrom2Nix {
    pname = "instant-nvim";
    version = "2022-06-25";
    src = fetchurl {
      url = "https://github.com/jbyuki/instant.nvim/archive/294b6d08143b3db8f9db7f606829270149e1a786.tar.gz";
      sha256 = "1zlzhvhlsy4m84m3z3xhvxz3ri54awf5df17wff5xgfp9430nfcz";
    };
    meta = with lib; {
      description = "collaborative editing in Neovim using built-in capabilities";
      homepage = "https://github.com/jbyuki/instant.nvim";
      license = with licenses; [ mit ];
    };
  };
  nabla-nvim = buildVimPluginFrom2Nix {
    pname = "nabla-nvim";
    version = "2022-11-22";
    src = fetchurl {
      url = "https://github.com/jbyuki/nabla.nvim/archive/c5496bb7b3e11c37630a020ebb02f00e3141f2ca.tar.gz";
      sha256 = "1hv0x5xhfa2v0ncwch9xhd7wqha0zyz51zjppramnjf621720858";
    };
    meta = with lib; {
      description = "take your scientific notes :pencil2: in Neovim";
      homepage = "https://github.com/jbyuki/nabla.nvim";
      license = with licenses; [ mit ];
    };
  };
  one-small-step-for-vimkind = buildVimPluginFrom2Nix {
    pname = "one-small-step-for-vimkind";
    version = "2022-11-19";
    src = fetchurl {
      url = "https://github.com/jbyuki/one-small-step-for-vimkind/archive/4ca4df5533da67e136fce4a906e33634889d6d76.tar.gz";
      sha256 = "0pcqxn2p58nj2652zdykrac11jjvyali3d8vwgd1wmif44vv7xpy";
    };
    meta = with lib; {
      description = "Debug adapter for Neovim plugins";
      homepage = "https://github.com/jbyuki/one-small-step-for-vimkind";
      license = with licenses; [ mit ];
    };
  };
  possession-nvim = buildVimPluginFrom2Nix {
    pname = "possession-nvim";
    version = "2022-10-09";
    src = fetchurl {
      url = "https://github.com/jedrzejboczar/possession.nvim/archive/0afa28734c6fadf625117a03759cc605b07b43ba.tar.gz";
      sha256 = "1j2yv4km32yfvi7zjyy1wgcj7nckg0g7k5ca5mflqb70rmzz4n1c";
    };
    meta = with lib; {
      description = "Flexible session management for Neovim";
      homepage = "https://github.com/jedrzejboczar/possession.nvim";
      license = with licenses; [ mit ];
    };
  };
  toggletasks-nvim = buildVimPluginFrom2Nix {
    pname = "toggletasks-nvim";
    version = "2022-11-29";
    src = fetchurl {
      url = "https://github.com/jedrzejboczar/toggletasks.nvim/archive/8567f91a0eb42f17e9134fe1fed7bfce16918ba4.tar.gz";
      sha256 = "1x0pb8si6dfmdmpxx19vp9kp5am5l00bqj1mrmyigvj0jm7bg8yy";
    };
    meta = with lib; {
      description = "Neovim task runner: JSON/YAML + toggleterm.nvim + telescope.nvim";
      homepage = "https://github.com/jedrzejboczar/toggletasks.nvim";
      license = with licenses; [ mit ];
    };
  };
  auto-pandoc-nvim = buildVimPluginFrom2Nix {
    pname = "auto-pandoc-nvim";
    version = "2022-09-05";
    src = fetchurl {
      url = "https://github.com/jghauser/auto-pandoc.nvim/archive/a2906258db9813745c479b87a7058253d5e60d17.tar.gz";
      sha256 = "1gj72sch1607rvn3xwf3q5cvcx0m46d0dgz9jn6qxkadhldpxzy9";
    };
    meta = with lib; {
      description = "A neovim plugin leveraging pandoc to help you convert your markdown files. It takes pandoc options from yaml blocks";
      homepage = "https://github.com/jghauser/auto-pandoc.nvim";
      license = with licenses; [ gpl3Only ];
    };
  };
  fold-cycle-nvim = buildVimPluginFrom2Nix {
    pname = "fold-cycle-nvim";
    version = "2022-08-17";
    src = fetchurl {
      url = "https://github.com/jghauser/fold-cycle.nvim/archive/7100300f3a8ae5b7222c07aa805f591ebbce447d.tar.gz";
      sha256 = "0xys7rflzv91zhmyr2168s5v2wi676s2p4lpp113qgq7bzjlha0y";
    };
    meta = with lib; {
      description = "This neovim plugin allows you to cycle folds open or closed";
      homepage = "https://github.com/jghauser/fold-cycle.nvim";
      license = with licenses; [ gpl3Only ];
    };
  };
  follow-md-links-nvim = buildVimPluginFrom2Nix {
    pname = "follow-md-links-nvim";
    version = "2022-10-06";
    src = fetchurl {
      url = "https://github.com/jghauser/follow-md-links.nvim/archive/ccc50e7ba191e62b4243ddd3db9b7dbddf2ee179.tar.gz";
      sha256 = "1nwqwihcr4vjzy5618qdrrxcrhga5jzwm11mc15zj9lhz9dkc2nw";
    };
    meta = with lib; {
      description = "Easily follow markdown links with this neovim plugin";
      homepage = "https://github.com/jghauser/follow-md-links.nvim";
      license = with licenses; [ gpl3Only ];
    };
  };
  kitty-runner-nvim = buildVimPluginFrom2Nix {
    pname = "kitty-runner-nvim";
    version = "2022-09-07";
    src = fetchurl {
      url = "https://github.com/jghauser/kitty-runner.nvim/archive/c41158a16af49180540cb0085c82ba4be5b395d2.tar.gz";
      sha256 = "0mwjl4aclm2rcv5gbgnchpr7ayknmscb44x42dlymhmjanqy93md";
    };
    meta = with lib; {
      description = "A neovim plugin allowing you to easily send lines from the current buffer to another kitty terminal";
      homepage = "https://github.com/jghauser/kitty-runner.nvim";
      license = with licenses; [ gpl3Only ];
    };
  };
  mkdir-nvim = buildVimPluginFrom2Nix {
    pname = "mkdir-nvim";
    version = "2022-07-23";
    src = fetchurl {
      url = "https://github.com/jghauser/mkdir.nvim/archive/c55d1dee4f099528a1853b28bb28caa802eba217.tar.gz";
      sha256 = "09ykc0cp8hw4q1gjnh1dshbrr187gnl8j6vifkllw1xwwf88iki9";
    };
    meta = with lib; {
      description = "This neovim plugin creates missing folders on save";
      homepage = "https://github.com/jghauser/mkdir.nvim";
      license = with licenses; [ gpl3Only ];
    };
  };
  papis-nvim = buildVimPluginFrom2Nix {
    pname = "papis-nvim";
    version = "2022-11-30";
    src = fetchurl {
      url = "https://github.com/jghauser/papis.nvim/archive/f0054bb0085ea8d02ec69b43ac9f0539071e2056.tar.gz";
      sha256 = "1n1jjdzzr6kf218979ycj4icwra3d2sns61zlaamaljcwkbq3qw1";
    };
    meta = with lib; {
      description = "Manage your bibliography from within your favourite editor";
      homepage = "https://github.com/jghauser/papis.nvim";
      license = with licenses; [ gpl3Only ];
    };
  };
  ariake-vim-colors = buildVimPluginFrom2Nix {
    pname = "ariake-vim-colors";
    version = "2021-02-23";
    src = fetchurl {
      url = "https://github.com/jim-at-jibba/ariake-vim-colors/archive/9fb35f1255e475631c9df24ecc5485a40360cc7b.tar.gz";
      sha256 = "00q6mwdfav3z2hk3a80ppk4risdjfg77wdq8sbw78prdpl0xrb22";
    };
    meta = with lib; {
      description = "No description";
      homepage = "https://github.com/jim-at-jibba/ariake-vim-colors";
    };
  };
  nvim-smartbufs = buildVimPluginFrom2Nix {
    pname = "nvim-smartbufs";
    version = "2021-06-14";
    src = fetchurl {
      url = "https://github.com/johann2357/nvim-smartbufs/archive/dddbfe258e41651554848d0e3421b35c1a0dcc37.tar.gz";
      sha256 = "0h6jjhwwk11j3iwrj7ycb5v7yrnzib04m14bvhkrb932f9gizr3n";
    };
    meta = with lib; {
      description = "Smart buffer management in neovim";
      homepage = "https://github.com/johann2357/nvim-smartbufs";
      license = with licenses; [ mit ];
    };
  };
  null-ls-nvim = buildVimPluginFrom2Nix {
    pname = "null-ls-nvim";
    version = "2022-12-10";
    src = fetchurl {
      url = "https://github.com/jose-elias-alvarez/null-ls.nvim/archive/adaa799264c92eea42d500c8b98e19caf32c14dc.tar.gz";
      sha256 = "1dszj121f8fn0l5k2dbny0dyd2d5b3l3vp5rg28c47mvlzvls08n";
    };
    meta = with lib; {
      description = "Use Neovim as a language server to inject LSP diagnostics, code actions, and more via Lua";
      homepage = "https://github.com/jose-elias-alvarez/null-ls.nvim";
    };
  };
  typescript-nvim = buildVimPluginFrom2Nix {
    pname = "typescript-nvim";
    version = "2022-11-30";
    src = fetchurl {
      url = "https://github.com/jose-elias-alvarez/typescript.nvim/archive/e715f6cdcaa99a172bdf4e2cfcb58e11f8aff598.tar.gz";
      sha256 = "0ls49i8c4a4igbkk1i2nd18422iiq9qy88yvd4j7jrvjylqpkh6k";
    };
    meta = with lib; {
      description = "A Lua plugin, written in TypeScript, to write TypeScript (Lua optional)";
      homepage = "https://github.com/jose-elias-alvarez/typescript.nvim";
      license = with licenses; [ unlicense ];
    };
  };
  mdeval-nvim = buildVimPluginFrom2Nix {
    pname = "mdeval-nvim";
    version = "2022-10-30";
    src = fetchurl {
      url = "https://github.com/jubnzv/mdeval.nvim/archive/2654caf8ecaad702b50199d18e39cff23d81e0ba.tar.gz";
      sha256 = "0lgzgw1a55g2z0p1hdxbv9mfwlhjwbk1ic2vwa4bwbgzi042nz6g";
    };
    meta = with lib; {
      description = "Neovim plugin that evaluates code blocks inside documents";
      homepage = "https://github.com/jubnzv/mdeval.nvim";
      license = with licenses; [ mit ];
    };
  };
  virtual-types-nvim = buildVimPluginFrom2Nix {
    pname = "virtual-types-nvim";
    version = "2022-11-01";
    src = fetchurl {
      url = "https://github.com/jubnzv/virtual-types.nvim/archive/12d55d6dc7cebddf4ab276b5934e02e0d41416a1.tar.gz";
      sha256 = "0whsbmnqcz3n02rcqm2r051xcb2z96gq8xvnxqpfg1n7gw7vq9jr";
    };
    meta = with lib; {
      description = "Neovim plugin that shows type annotations as virtual text";
      homepage = "https://github.com/jubnzv/virtual-types.nvim";
      license = with licenses; [ mit ];
    };
  };
  nvim-juliana = buildVimPluginFrom2Nix {
    pname = "nvim-juliana";
    version = "2022-11-19";
    src = fetchurl {
      url = "https://github.com/kaiuri/nvim-juliana/archive/b74982a8ff13a2843b1b4f435d6e1a15034802e7.tar.gz";
      sha256 = "01qb8h4in5lc1661gs7c3vigg0fvvxnbxcg1w3nh8lmf8fg19cq3";
    };
    meta = with lib; {
      description = "Port of Sublime's Mariana Theme to Neovim for short attention span devs";
      homepage = "https://github.com/kaiuri/nvim-juliana";
      license = with licenses; [ mit ];
    };
  };
  vim-textobj-indent = buildVimPluginFrom2Nix {
    pname = "vim-textobj-indent";
    version = "2013-01-18";
    src = fetchurl {
      url = "https://github.com/kana/vim-textobj-indent/archive/deb76867c302f933c8f21753806cbf2d8461b548.tar.gz";
      sha256 = "1ymm9xwf4xw0731kjn7skkprc5nvzwh880g738kqm7zam6mmnj65";
    };
    meta = with lib; {
      description = "Vim plugin: Text objects for indented blocks of lines";
      homepage = "https://github.com/kana/vim-textobj-indent";
    };
  };
  close-buffers-nvim = buildVimPluginFrom2Nix {
    pname = "close-buffers-nvim";
    version = "2021-11-14";
    src = fetchurl {
      url = "https://github.com/kazhala/close-buffers.nvim/archive/3acbcad1211572342632a6c0151f839e7dead27f.tar.gz";
      sha256 = "19iwjbglyq4r99bhbj337qd251893g3x4qh6h2fsj8skqn9a3aaj";
    };
    meta = with lib; {
      description = ":bookmark_tabs: Delete multiple vim buffers based on different conditions";
      homepage = "https://github.com/kazhala/close-buffers.nvim";
      license = with licenses; [ mit ];
    };
  };
  monochrome-nvim = buildVimPluginFrom2Nix {
    pname = "monochrome-nvim";
    version = "2021-07-14";
    src = fetchurl {
      url = "https://github.com/kdheepak/monochrome.nvim/archive/2de78d9688ea4a177bcd9be554ab9192337d35ff.tar.gz";
      sha256 = "115jkwnv4208vyrgxvjlrzdqqzm6fl7alzz60dnjnrsmn303nwfk";
    };
    meta = with lib; {
      description = "A monochrome colorscheme for neovim";
      homepage = "https://github.com/kdheepak/monochrome.nvim";
      license = with licenses; [ mit ];
    };
  };
  im-select-nvim = buildVimPluginFrom2Nix {
    pname = "im-select-nvim";
    version = "2022-07-31";
    src = fetchurl {
      url = "https://github.com/keaising/im-select.nvim/archive/5271f73dcf776d7d76f2781fd6e785a8fcc0ffc0.tar.gz";
      sha256 = "1xdgnp147mk1q1bbcnpmfnvxghn7jgn53ym7h7n6qzl1wdxlpi8q";
    };
    meta = with lib; {
      description = "Switch Input Method automatically depends on Neovim's edit mode ";
      homepage = "https://github.com/keaising/im-select.nvim";
      license = with licenses; [ mit ];
    };
  };
  nvim-ufo = buildVimPluginFrom2Nix {
    pname = "nvim-ufo";
    version = "2022-12-03";
    src = fetchurl {
      url = "https://github.com/kevinhwang91/nvim-ufo/archive/e988139f6f2d3b3fb5cb512a164636ed7dc41c1f.tar.gz";
      sha256 = "01j7wfvsk3xr9y0shzx91axgr3pxl92hjnzgxgpvvjrd109i96k8";
    };
    meta = with lib; {
      description = "Not UFO in the sky, but an ultra fold in Neovim";
      homepage = "https://github.com/kevinhwang91/nvim-ufo";
      license = with licenses; [ bsd3 ];
    };
  };
  s3edit-nvim = buildVimPluginFrom2Nix {
    pname = "s3edit-nvim";
    version = "2022-10-19";
    src = fetchurl {
      url = "https://github.com/kiran94/s3edit.nvim/archive/a7e215e7aa8bc97318d9b11f48d03c866caa4d2a.tar.gz";
      sha256 = "14jh0n4xsdcillz1ayk7hdzmjbmj32v5f3i0zyfnq0qhin61pa62";
    };
    meta = with lib; {
      description = "Edit files from S3 directly from Neovim";
      homepage = "https://github.com/kiran94/s3edit.nvim";
      license = with licenses; [ mit ];
    };
  };
  sqlite-lua = buildVimPluginFrom2Nix {
    pname = "sqlite-lua";
    version = "2022-11-18";
    src = fetchurl {
      url = "https://github.com/kkharji/sqlite.lua/archive/53cac3fdb5f5e4e63e243232b6eccf3c764ae18a.tar.gz";
      sha256 = "0rk42kgjlw1444i2fd9993zkfnhjswz54s3hyzyy6ch1kb8hn998";
    };
    meta = with lib; {
      description = "SQLite LuaJIT binding with a very simple api";
      homepage = "https://github.com/kkharji/sqlite.lua";
      license = with licenses; [ mit ];
    };
  };
  nvim-test = buildVimPluginFrom2Nix {
    pname = "nvim-test";
    version = "2022-12-02";
    src = fetchurl {
      url = "https://github.com/klen/nvim-test/archive/00e876c31ee9bf028fe500191b8ecfef9bc34dc7.tar.gz";
      sha256 = "1nq3qv0jz6s4sm1hmh4b9pziaiivrcgqm2a856ngicr97pvgikdi";
    };
    meta = with lib; {
      description = "A Neovim wrapper for running tests";
      homepage = "https://github.com/klen/nvim-test";
      license = with licenses; [ mit ];
    };
  };
  kmonad-vim = buildVimPluginFrom2Nix {
    pname = "kmonad-vim";
    version = "2022-03-20";
    src = fetchurl {
      url = "https://github.com/kmonad/kmonad-vim/archive/37978445197ab00edeb5b731e9ca90c2b141723f.tar.gz";
      sha256 = "0q4z72angj2kr6mfxh6bqi76xhy8qpkwkr4vk2c6xf0n3vvihbjh";
    };
    meta = with lib; {
      description = "Vim editing support for kmonad config files";
      homepage = "https://github.com/kmonad/kmonad-vim";
      license = with licenses; [ gpl3Only ];
    };
  };
  peepsight-nvim = buildVimPluginFrom2Nix {
    pname = "peepsight-nvim";
    version = "2022-12-11";
    src = fetchurl {
      url = "https://github.com/koenverburg/peepsight.nvim/archive/6aca1feee9d22580cd78e4962ca6f2146b09aaae.tar.gz";
      sha256 = "00xxmj827nv8dp6cyrvi8qxab8i7x6f4x8ncg2jwj964f18cw4jn";
    };
    meta = with lib; {
      description = "Focus on one function at a time";
      homepage = "https://github.com/koenverburg/peepsight.nvim";
    };
  };
  vacuumline-nvim = buildVimPluginFrom2Nix {
    pname = "vacuumline-nvim";
    version = "2022-03-13";
    src = fetchurl {
      url = "https://github.com/konapun/vacuumline.nvim/archive/5f207f81d399004085df64fec4aeb5136422beba.tar.gz";
      sha256 = "1srq6607gxqxwg3glcb7h95b0d02qx96zkmfa1k4c81m05rj64d8";
    };
    meta = with lib; {
      description = "A prebuilt configuration for galaxyline inspired by airline";
      homepage = "https://github.com/konapun/vacuumline.nvim";
      license = with licenses; [ mit ];
    };
  };
  mellow-nvim = buildVimPluginFrom2Nix {
    pname = "mellow-nvim";
    version = "2022-10-26";
    src = fetchurl {
      url = "https://github.com/kvrohit/mellow.nvim/archive/8743f5ae38408e7dc655014379dbb7c90afeb528.tar.gz";
      sha256 = "1v5v0zlnnqz76jv4m62gna3x0jlyscz0z1y2nfyirj7la93zm4rp";
    };
    meta = with lib; {
      description = "A soothing dark color scheme for neovim and friends";
      homepage = "https://github.com/kvrohit/mellow.nvim";
    };
  };
  rasmus-nvim = buildVimPluginFrom2Nix {
    pname = "rasmus-nvim";
    version = "2022-10-10";
    src = fetchurl {
      url = "https://github.com/kvrohit/rasmus.nvim/archive/187b40998fd0d03e915699bfc37a616f3e6ccb23.tar.gz";
      sha256 = "176fkpr7s4c6ysx5xmw6m3a0q5swnjc5a1b4w4xnnn13d43mjql1";
    };
    meta = with lib; {
      description = "A color scheme for Neovim";
      homepage = "https://github.com/kvrohit/rasmus.nvim";
    };
  };
  blue-moon = buildVimPluginFrom2Nix {
    pname = "blue-moon";
    version = "2022-12-07";
    src = fetchurl {
      url = "https://github.com/kyazdani42/blue-moon/archive/8fcdcdf76e7a120299d41fa80206887ca7b1ca58.tar.gz";
      sha256 = "1lnr95zqybd9v14z51zrl10snw932i8fa693wk6bnam3nnngm1zl";
    };
    meta = with lib; {
      description = "A dark color scheme for Neovim derived from palenight and carbonight";
      homepage = "https://github.com/kyazdani42/blue-moon";
    };
  };
  nvim-surround = buildVimPluginFrom2Nix {
    pname = "nvim-surround";
    version = "2022-11-24";
    src = fetchurl {
      url = "https://github.com/kylechui/nvim-surround/archive/6b45fbffdabb2d8cd80d310006c92e59cec8fd74.tar.gz";
      sha256 = "0xsgr6agj7svsdmq83gjh3hr722dslnlp8l5nkrmszf0ai7rlyqd";
    };
    meta = with lib; {
      description = "Add/change/delete surrounding delimiter pairs with ease. Written with :heart: in Lua";
      homepage = "https://github.com/kylechui/nvim-surround";
      license = with licenses; [ mit ];
    };
  };
  cobalt2-nvim = buildVimPluginFrom2Nix {
    pname = "cobalt2-nvim";
    version = "2022-12-07";
    src = fetchurl {
      url = "https://github.com/lalitmee/cobalt2.nvim/archive/b6310d191ffd4f1c576cf1f55bd7c6bdb33b825d.tar.gz";
      sha256 = "1p3bhlk6cdx48g9a3w9hd155bipw17sm7m9l6pjmz795x5fymx1q";
    };
    meta = with lib; {
      description = "cobalt2 theme for neovim in Lua using colorbuddy";
      homepage = "https://github.com/lalitmee/cobalt2.nvim";
      license = with licenses; [ mit ];
    };
  };
  overlength-nvim = buildVimPluginFrom2Nix {
    pname = "overlength-nvim";
    version = "2022-08-10";
    src = fetchurl {
      url = "https://github.com/lcheylus/overlength.nvim/archive/3715b66d10ae0a68667e50c650c2ef3e5ab9f1e7.tar.gz";
      sha256 = "0p24a2fk0y84gph8i1ij4l26fbwi8s1gz4iq77g64c1rb54285zm";
    };
    meta = with lib; {
      description = "A small Neovim plugin to highlight too long lines";
      homepage = "https://github.com/lcheylus/overlength.nvim";
      license = with licenses; [ mit ];
    };
  };
  gh-nvim = buildVimPluginFrom2Nix {
    pname = "gh-nvim";
    version = "2022-12-11";
    src = fetchurl {
      url = "https://github.com/ldelossa/gh.nvim/archive/bc731bb53909481995ac2edb4bf6418c051fec1a.tar.gz";
      sha256 = "05zadg32pz2mzim6npvbp0aw1dxf7s3b8qsgqapjx41c7v48xkyy";
    };
    meta = with lib; {
      description = "A fully featured GitHub integration for performing code reviews in Neovim";
      homepage = "https://github.com/ldelossa/gh.nvim";
      license = with licenses; [ mit ];
    };
  };
  vimdark = buildVimPluginFrom2Nix {
    pname = "vimdark";
    version = "2022-03-20";
    src = fetchurl {
      url = "https://github.com/ldelossa/vimdark/archive/ffd7240f8346cb61ab80eda84b78f8983a3c69bf.tar.gz";
      sha256 = "0jz1w3gw64sj6pw6l3ahdwg97f7bagnyib4c8k5fbfx860q899rp";
    };
    meta = with lib; {
      description = "A dark theme for vim based on vim-monotonic and chrome's dark reader";
      homepage = "https://github.com/ldelossa/vimdark";
      license = with licenses; [ mit ];
    };
  };
  vim-svelte-plugin = buildVimPluginFrom2Nix {
    pname = "vim-svelte-plugin";
    version = "2022-10-20";
    src = fetchurl {
      url = "https://github.com/leafOfTree/vim-svelte-plugin/archive/a7161aed8dec74508bbf98224b7e68d63be1207a.tar.gz";
      sha256 = "0rbzsv7hij3pkhyc8dywq12r0m0dcynjifp9fap21lq2wl36p8y2";
    };
    meta = with lib; {
      description = "Vim syntax and indent plugin for .svelte files";
      homepage = "https://github.com/leafOfTree/vim-svelte-plugin";
      license = with licenses; [ unlicense ];
    };
  };
  sherbet-nvim = buildVimPluginFrom2Nix {
    pname = "sherbet-nvim";
    version = "2022-11-27";
    src = fetchurl {
      url = "https://github.com/lewpoly/sherbet.nvim/archive/339d4dc1e48217bdd5eaf8b7b69629c7a16be684.tar.gz";
      sha256 = "0k5c2k0pqzn29cg60fj28j02nzxlxzrx6i0jf9gdhz7hn5znqxs7";
    };
    meta = with lib; {
      description = "Neovim colorscheme written in Lua";
      homepage = "https://github.com/lewpoly/sherbet.nvim";
      license = with licenses; [ gpl3Only ];
    };
  };
  key-menu-nvim = buildVimPluginFrom2Nix {
    pname = "key-menu-nvim";
    version = "2022-11-23";
    src = fetchurl {
      url = "https://github.com/linty-org/key-menu.nvim/archive/6951c45cbb0b2add549d282b0b526d1f0322f96e.tar.gz";
      sha256 = "134f0lzgmfgxp19nmpcha04f05vcv1q0m6gq8r7d25xmrnwlbv29";
    };
    meta = with lib; {
      description = "Key mapping hints in a floating window";
      homepage = "https://github.com/linty-org/key-menu.nvim";
    };
  };
  readline-nvim = buildVimPluginFrom2Nix {
    pname = "readline-nvim";
    version = "2022-08-13";
    src = fetchurl {
      url = "https://github.com/linty-org/readline.nvim/archive/cab666cbd026dea9c817182e22255ecb3b3419b1.tar.gz";
      sha256 = "14ip3zv98m7fl988fwib13c62bwvmswmhwpk28ds5w17nxv11kvx";
    };
    meta = with lib; {
      description = "Readline motions and deletions in Neovim";
      homepage = "https://github.com/linty-org/readline.nvim";
    };
  };
  kimbox = buildVimPluginFrom2Nix {
    pname = "kimbox";
    version = "2022-11-28";
    src = fetchurl {
      url = "https://github.com/lmburns/kimbox/archive/65e566d9d67780a16450bbc546d087d9c60a7b3f.tar.gz";
      sha256 = "0dbnhjskksg070gsrhvba1jsniwf5bqbnyn2s0as8h20bka1r7sj";
    };
    meta = with lib; {
      description = "Kimbie Dark Neovim colorscheme";
      homepage = "https://github.com/lmburns/kimbox";
    };
  };
  github-colors = buildVimPluginFrom2Nix {
    pname = "github-colors";
    version = "2022-12-09";
    src = fetchurl {
      url = "https://github.com/lourenci/github-colors/archive/590cbcb99936c43b2ff3d294270a6e19d036f74d.tar.gz";
      sha256 = "0gp1lp4msmms1iglnyxqvh6qx0a525gz1zd1bxjrn3sf2rdbhy6v";
    };
    meta = with lib; {
      description = "Yet another GitHub colorscheme";
      homepage = "https://github.com/lourenci/github-colors";
      license = with licenses; [ mit ];
    };
  };
  gruvbox-baby = buildVimPluginFrom2Nix {
    pname = "gruvbox-baby";
    version = "2022-12-07";
    src = fetchurl {
      url = "https://github.com/luisiacc/gruvbox-baby/archive/309b405d64af29126b1eb8d9be2f280ee2aec15d.tar.gz";
      sha256 = "1265dlzav659dnzll1i5gk8ndcljcq8qsr0zi9xrzrcxm84279f1";
    };
    meta = with lib; {
      description = "Gruvbox theme for neovim with full 🎄TreeSitter support. ";
      homepage = "https://github.com/luisiacc/gruvbox-baby";
      license = with licenses; [ mit ];
    };
  };
  lsp-format-nvim = buildVimPluginFrom2Nix {
    pname = "lsp-format-nvim";
    version = "2022-11-25";
    src = fetchurl {
      url = "https://github.com/lukas-reineke/lsp-format.nvim/archive/ca0df5c8544e51517209ea7b86ecc522c98d4f0a.tar.gz";
      sha256 = "1s7xqwx1a3ybwargdw9qn2vgqd9ad3qi9cqwijgzsw3r17kgw5v0";
    };
    meta = with lib; {
      description = "A wrapper around Neovims native LSP formatting";
      homepage = "https://github.com/lukas-reineke/lsp-format.nvim";
    };
  };
  nnn-nvim = buildVimPluginFrom2Nix {
    pname = "nnn-nvim";
    version = "2022-11-04";
    src = fetchurl {
      url = "https://github.com/luukvbaal/nnn.nvim/archive/17f05c306e6906b4b6cd477e603697fd352960e8.tar.gz";
      sha256 = "19m0gb9xdlhfgvs6yz0219mgb37wllg944pbhw7s39xszc2bc8r3";
    };
    meta = with lib; {
      description = "File manager for Neovim powered by nnn";
      homepage = "https://github.com/luukvbaal/nnn.nvim";
      license = with licenses; [ bsd3 ];
    };
  };
  attempt-nvim = buildVimPluginFrom2Nix {
    pname = "attempt-nvim";
    version = "2022-06-11";
    src = fetchurl {
      url = "https://github.com/m-demare/attempt.nvim/archive/0b3628aa348061f4da17e090bbd34b55a46eea2f.tar.gz";
      sha256 = "0nz5z724n36nicwn5z0cds6hk7c7jbm3vy63yck2wfrx9r06y9bw";
    };
    meta = with lib; {
      description = "Manage temporary buffers";
      homepage = "https://github.com/m-demare/attempt.nvim";
      license = with licenses; [ mit ];
    };
  };
  hlargs-nvim = buildVimPluginFrom2Nix {
    pname = "hlargs-nvim";
    version = "2022-10-20";
    src = fetchurl {
      url = "https://github.com/m-demare/hlargs.nvim/archive/e75b0501f47564099a6c3b4502232e650fdd8e82.tar.gz";
      sha256 = "1758i0yh0zc5wkmhca7iqvsqfz1jgkfvz32cy1zjiglpqjm154sm";
    };
    meta = with lib; {
      description = "Highlight arguments' definitions and usages, using Treesitter";
      homepage = "https://github.com/m-demare/hlargs.nvim";
      license = with licenses; [ gpl3Only ];
    };
  };
  baleia-nvim = buildVimPluginFrom2Nix {
    pname = "baleia-nvim";
    version = "2022-05-17";
    src = fetchurl {
      url = "https://github.com/m00qek/baleia.nvim/archive/af6a17b21336599df8f17a8c1186b414330b8b44.tar.gz";
      sha256 = "14iv3axi67jvf4vjxrsbgrzan6xhqfcbywyrg7329apsynml56bd";
    };
    meta = with lib; {
      description = "Integration  Colorize text with ANSI escape sequences (8, 16, 256 or TrueColor)";
      homepage = "https://github.com/m00qek/baleia.nvim";
    };
  };
  plugin-template-nvim = buildVimPluginFrom2Nix {
    pname = "plugin-template-nvim";
    version = "2022-06-10";
    src = fetchurl {
      url = "https://github.com/m00qek/plugin-template.nvim/archive/b988d049ac9484acd5feb32bff883a14e1e5e52b.tar.gz";
      sha256 = "1mzijw3jfrkxzffqilqb0axp66dgw7d491rjy3cb3j75ass7pwfw";
    };
    meta = with lib; {
      description = "A template to create Neovim plugins written in Lua";
      homepage = "https://github.com/m00qek/plugin-template.nvim";
    };
  };
  autoclose-nvim = buildVimPluginFrom2Nix {
    pname = "autoclose-nvim";
    version = "2022-09-04";
    src = fetchurl {
      url = "https://github.com/m4xshen/autoclose.nvim/archive/c283288e75b83f11f9cbc227e997e02cc24ffc9c.tar.gz";
      sha256 = "1acf73cgk9gj6yxi28qqrhq2631v3gzx36fn641rzm8xmaw0qmzl";
    };
    meta = with lib; {
      description = "A minimalist autoclose plugin for Neovim written in Lua";
      homepage = "https://github.com/m4xshen/autoclose.nvim";
      license = with licenses; [ mit ];
    };
  };
  reaper-nvim = buildVimPluginFrom2Nix {
    pname = "reaper-nvim";
    version = "2021-01-29";
    src = fetchurl {
      url = "https://github.com/madskjeldgaard/reaper-nvim/archive/dc30b618bb0e2c47b7e0dce781527627291b3365.tar.gz";
      sha256 = "06c0mcfki8yqkd30airpqq62wc26zkmb87qacwca4l2aycvxl42v";
    };
    meta = with lib; {
      description = "Reaper plugin for neovim. Remote control your daw with almost 4000 actions without leaving your favourite text editor";
      homepage = "https://github.com/madskjeldgaard/reaper-nvim";
    };
  };
  JABS-nvim = buildVimPluginFrom2Nix {
    pname = "JABS-nvim";
    version = "2022-12-08";
    src = fetchurl {
      url = "https://github.com/matbme/JABS.nvim/archive/90c1dd953f0726bfaf482803fc78ad720c87df47.tar.gz";
      sha256 = "0q02c5wwvlmax7pyw88ji7pl59kksfp83zinlkz50ylhsdjqigrf";
    };
    meta = with lib; {
      description = "Just Another Buffer Switcher for Neovim";
      homepage = "https://github.com/matbme/JABS.nvim";
      license = with licenses; [ gpl3Only ];
    };
  };
  tidy-nvim = buildVimPluginFrom2Nix {
    pname = "tidy-nvim";
    version = "2022-09-17";
    src = fetchurl {
      url = "https://github.com/mcauley-penney/tidy.nvim/archive/9b15a0eb12d6d4f0bb5c197c1f5b72bcc57f09ff.tar.gz";
      sha256 = "03swsf1gi6z1ya4m8h0fshf38853vrf35zbasbxqc1h8l7mqh9q6";
    };
    meta = with lib; {
      description = "A small Neovim plugin to remove trailing whitespace and empty lines at end of file on every save";
      homepage = "https://github.com/mcauley-penney/tidy.nvim";
    };
  };
  zenbones-nvim = buildVimPluginFrom2Nix {
    pname = "zenbones-nvim";
    version = "2022-10-22";
    src = fetchurl {
      url = "https://github.com/mcchrish/zenbones.nvim/archive/0f7e9eb1ef309098e69e5e317508e9a7af299d94.tar.gz";
      sha256 = "1ly70irn36bxz1gyxhk656i3gj3qmwqrrimsa154zfk75hgwr167";
    };
    meta = with lib; {
      description = "🪨 A collection of contrast-based Vim/Neovim colorschemes";
      homepage = "https://github.com/mcchrish/zenbones.nvim";
      license = with licenses; [ mit ];
    };
  };
  meliora-nvim = buildVimPluginFrom2Nix {
    pname = "meliora-nvim";
    version = "2022-12-08";
    src = fetchurl {
      url = "https://github.com/ramojus/meliora.nvim/archive/9430f7b7bd809f7a45ea3db6208f4197f526b372.tar.gz";
      sha256 = "1p4vgqk5iaas7b6sadqi7c1bdalhdxy8rb9x1i3m4a5xackvvphf";
    };
    meta = with lib; {
      description = "Meliora colors for Neovim";
      homepage = "https://github.com/ramojus/meliora.nvim";
      license = with licenses; [ mit ];
    };
  };
  modicator-nvim = buildVimPluginFrom2Nix {
    pname = "modicator-nvim";
    version = "2022-11-30";
    src = fetchurl {
      url = "https://github.com/melkster/modicator.nvim/archive/27c60a13836515a30700d59c530538fc63e5b3ed.tar.gz";
      sha256 = "03xjyq2a9psh2a99dpd7ikc2mvay1gxfr10w6q27ms3mcd76r86s";
    };
    meta = with lib; {
      description = "Cursor line number mode indicator";
      homepage = "https://github.com/melkster/modicator.nvim";
      license = with licenses; [ mit ];
    };
  };
  nvim-treehopper = buildVimPluginFrom2Nix {
    pname = "nvim-treehopper";
    version = "2022-09-20";
    src = fetchurl {
      url = "https://github.com/mfussenegger/nvim-treehopper/archive/674e9f28815eb9bff1bb11d1f557e4221df05b32.tar.gz";
      sha256 = "0nbrd8g6z9igrc3p3mnlnxk3wv7p8fxhrivzj5yk330qp685xlki";
    };
    meta = with lib; {
      description = "Region selection with hints on the AST nodes of a document powered by treesitter";
      homepage = "https://github.com/mfussenegger/nvim-treehopper";
      license = with licenses; [ gpl3Only ];
    };
  };
  sniprun = buildVimPluginFrom2Nix {
    pname = "sniprun";
    version = "2022-11-16";
    src = fetchurl {
      url = "https://github.com/michaelb/sniprun/archive/c37086a0d12b2053bf147c2f4643c0c92318c0c2.tar.gz";
      sha256 = "149ydwibxa0cxb3f8p3h65xq85kyx9am7ym8n7hvn18g2cky5p1s";
    };
    meta = with lib; {
      description = "A neovim plugin to run lines/blocs of code (independently of the rest of the file), supporting multiples languages";
      homepage = "https://github.com/michaelb/sniprun";
      license = with licenses; [ mit ];
    };
  };
  nvim-luaref = buildVimPluginFrom2Nix {
    pname = "nvim-luaref";
    version = "2022-02-17";
    src = fetchurl {
      url = "https://github.com/milisims/nvim-luaref/archive/9cd3ed50d5752ffd56d88dd9e395ddd3dc2c7127.tar.gz";
      sha256 = "02x1z1swcpbzyzsam7s1xlb9b0iyy49qk9wrnl47c21wbhdrhlfx";
    };
    meta = with lib; {
      description = "Add a vim :help reference for lua ";
      homepage = "https://github.com/milisims/nvim-luaref";
      license = with licenses; [ mit ];
    };
  };
  import-nvim = buildVimPluginFrom2Nix {
    pname = "import-nvim";
    version = "2022-10-25";
    src = fetchurl {
      url = "https://github.com/miversen33/import.nvim/archive/ae0204208ecd1eb2239f3597df6a9b2dc5686b37.tar.gz";
      sha256 = "0d6j76i6jp3mxcvbah9fx8l6yhxcnfhp8wcqijna30813dhi5snh";
    };
    meta = with lib; {
      description = "A safe require override with niceties";
      homepage = "https://github.com/miversen33/import.nvim";
      license = with licenses; [ mit ];
    };
  };
  iswap-nvim = buildVimPluginFrom2Nix {
    pname = "iswap-nvim";
    version = "2022-10-26";
    src = fetchurl {
      url = "https://github.com/mizlan/iswap.nvim/archive/317e79c5210e392e01b097b9d42f622a5d02114a.tar.gz";
      sha256 = "1s9xa4lcrjfi9195zb6g6bcarm3z5gym0gjg85fk8z0f1jds18cz";
    };
    meta = with lib; {
      description = "Interactively select and swap function arguments, list elements, and more. Powered by tree-sitter";
      homepage = "https://github.com/mizlan/iswap.nvim";
      license = with licenses; [ mit ];
    };
  };
  iron-nvim-mnacamura = buildVimPluginFrom2Nix {
    pname = "iron-nvim-mnacamura";
    version = "2021-12-19";
    src = fetchurl {
      url = "https://github.com/mnacamura/iron.nvim/archive/0b8748a1e3194b1239372111c1902cf7a14e10fc.tar.gz";
      sha256 = "1mavmzfm8nrb1a33a2im35plmhlc5lzf940rvi5svpwh93dhd7ma";
    };
    meta = with lib; {
      description = "A fork of IRON, Interactive Repl Over Neovim";
      homepage = "https://github.com/mnacamura/iron.nvim";
      license = with licenses; [ bsd3 ];
    };
  };
  nvim-srcerite = buildVimPluginFrom2Nix {
    pname = "nvim-srcerite";
    version = "2022-07-23";
    src = fetchurl {
      url = "https://github.com/mnacamura/nvim-srcerite/archive/ab4f02b3786b595fb3d0604ed784c6564d2d1004.tar.gz";
      sha256 = "0xn8k85mmkhiy2508sbyiqqqhw17a38vp6p2rvla79h0hkz7k67g";
    };
    meta = with lib; {
      description = "A colorscheme for Neovim inspired by Srcery";
      homepage = "https://github.com/mnacamura/nvim-srcerite";
    };
  };
  vim-fennel-syntax = buildVimPluginFrom2Nix {
    pname = "vim-fennel-syntax";
    version = "2021-07-08";
    src = fetchurl {
      url = "https://github.com/mnacamura/vim-fennel-syntax/archive/de616bba32ddd1ecbef30e76aca80d1fbcf8e95c.tar.gz";
      sha256 = "1xiyjr66nhg9bv6nkvl90vas85i5qizlbbpqsss235qxx3yf9w9i";
    };
    meta = with lib; {
      description = "Vim syntax highlighting for Fennel";
      homepage = "https://github.com/mnacamura/vim-fennel-syntax";
      license = with licenses; [ mit ];
    };
  };
  vim-r7rs-syntax = buildVimPluginFrom2Nix {
    pname = "vim-r7rs-syntax";
    version = "2021-07-09";
    src = fetchurl {
      url = "https://github.com/mnacamura/vim-r7rs-syntax/archive/e5f1d0cf9974154f00aa9a249dadce9c7bfc5c65.tar.gz";
      sha256 = "0iz6n1c8h6yijd40lzmfjlxa7fym3hh7b57yavfz39bgzihz24nj";
    };
    meta = with lib; {
      description = "Vim syntax highlighting for R7RS Scheme and Gauche";
      homepage = "https://github.com/mnacamura/vim-r7rs-syntax";
      license = with licenses; [ mit ];
    };
  };
  dial-nvim = buildVimPluginFrom2Nix {
    pname = "dial-nvim";
    version = "2022-12-08";
    src = fetchurl {
      url = "https://github.com/monaqa/dial.nvim/archive/f6d274bd8e32be65b99f1052a8b5353ef5e702d7.tar.gz";
      sha256 = "0xblm82fqmckgg1g966y24cyvb5ham01i2xdfvfdrzqikx12pfhn";
    };
    meta = with lib; {
      description = "enhanced increment/decrement plugin for Neovim";
      homepage = "https://github.com/monaqa/dial.nvim";
      license = with licenses; [ mit ];
    };
  };
  matchparen-nvim = buildVimPluginFrom2Nix {
    pname = "matchparen-nvim";
    version = "2022-09-22";
    src = fetchurl {
      url = "https://github.com/monkoose/matchparen.nvim/archive/dc511ea561bb34c99d0fad9a6fd08bb0e4187a5e.tar.gz";
      sha256 = "0m64lj45z1da5786n16x1bz6xqipzypqb3mcrh370fphb6klynjb";
    };
    meta = with lib; {
      description = "alternative to matchparen neovim plugin ";
      homepage = "https://github.com/monkoose/matchparen.nvim";
      license = with licenses; [ mit ];
    };
  };
  legendary-nvim = buildVimPluginFrom2Nix {
    pname = "legendary-nvim";
    version = "2022-12-08";
    src = fetchurl {
      url = "https://github.com/mrjones2014/legendary.nvim/archive/7be09ac0cf0ac12d65e41c706822a24eb0b92971.tar.gz";
      sha256 = "07n4w570ylb71s0hpgpzra8jjfs8h6mwl8vq6i25qcpnxsyr6dcc";
    };
    meta = with lib; {
      description = "🗺️ A legend for your keymaps, commands, and autocmds, with which-key.nvim integration";
      homepage = "https://github.com/mrjones2014/legendary.nvim";
      license = with licenses; [ mit ];
    };
  };
  luv-vimdocs = buildVimPluginFrom2Nix {
    pname = "luv-vimdocs";
    version = "2022-05-08";
    src = fetchurl {
      url = "https://github.com/nanotee/luv-vimdocs/archive/4b37ef2755906e7f8b9a066b718d502684b55274.tar.gz";
      sha256 = "137jk7nskdj41fga0jm966zkbk1mi1ffm2xcsr6shjf2f3gfs6ma";
    };
    meta = with lib; {
      description = "No description";
      homepage = "https://github.com/nanotee/luv-vimdocs";
      license = with licenses; [ asl20 ];
    };
  };
  nvim-lsp-basics = buildVimPluginFrom2Nix {
    pname = "nvim-lsp-basics";
    version = "2022-05-08";
    src = fetchurl {
      url = "https://github.com/nanotee/nvim-lsp-basics/archive/632714bd3ab355eb6e725b5a78cd8730f12d14d2.tar.gz";
      sha256 = "1zsbmqz1j022mkg95kvhf7nnxjphlzgsq6fs1gj1hqizp4rgjg3h";
    };
    meta = with lib; {
      description = "Basic wrappers for LSP features";
      homepage = "https://github.com/nanotee/nvim-lsp-basics";
      license = with licenses; [ mit ];
    };
  };
  sqls-nvim = buildVimPluginFrom2Nix {
    pname = "sqls-nvim";
    version = "2022-07-08";
    src = fetchurl {
      url = "https://github.com/nanotee/sqls.nvim/archive/a0048b7018c99b68456f91b4aa42ce288f0c0774.tar.gz";
      sha256 = "0jph3hfcmkf11m1hxc91h6j590hw0pnc1gkx3wmsqd0w4m1z40qp";
    };
    meta = with lib; {
      description = "Neovim plugin for sqls that leverages the built-in LSP client";
      homepage = "https://github.com/nanotee/sqls.nvim";
      license = with licenses; [ mit ];
    };
  };
  tabby-nvim = buildVimPluginFrom2Nix {
    pname = "tabby-nvim";
    version = "2022-11-30";
    src = fetchurl {
      url = "https://github.com/nanozuki/tabby.nvim/archive/ad80d32ba42b0c7f3a06b5754b7f669bf71eadf0.tar.gz";
      sha256 = "0sa345vjjflzmq39ln1fm7bnskcdns8y1q68xjg55yr0zzanrgk5";
    };
    meta = with lib; {
      description = "A declarative, highly configurable, and neovim style tabline plugin. Use your nvim tabs as a workspace multiplexer!";
      homepage = "https://github.com/nanozuki/tabby.nvim";
      license = with licenses; [ mit ];
    };
  };
  xresources-nvim = buildVimPluginFrom2Nix {
    pname = "xresources-nvim";
    version = "2021-11-23";
    src = fetchurl {
      url = "https://github.com/nekonako/xresources-nvim/archive/745b4df924a6c4a7d8026a3fb3a7fa5f78e6f582.tar.gz";
      sha256 = "1xnw9cf81x5rwiql78ghhda0jjcap9qxrvzv9101kljwzz3klzvj";
    };
    meta = with lib; {
      description = "🎨 Neovim colorscheme based on your xresources color";
      homepage = "https://github.com/nekonako/xresources-nvim";
      license = with licenses; [ gpl2Only ];
    };
  };
  nvim-toggler = buildVimPluginFrom2Nix {
    pname = "nvim-toggler";
    version = "2022-12-04";
    src = fetchurl {
      url = "https://github.com/nguyenvukhang/nvim-toggler/archive/a9d320d2338611ef5310c3844c39d761dbf23769.tar.gz";
      sha256 = "1ad11i0qd5qnzl8vyhm3n9n4y8921d31knaz5vhqb78ygd539v1p";
    };
    meta = with lib; {
      description = "invert text in vim, purely with lua";
      homepage = "https://github.com/nguyenvukhang/nvim-toggler";
      license = with licenses; [ mit ];
    };
  };
  neomux = buildVimPluginFrom2Nix {
    pname = "neomux";
    version = "2021-12-23";
    src = fetchurl {
      url = "https://github.com/nikvdp/neomux/archive/7fa6754f3c781ca99fd533217443b1e4f86611d4.tar.gz";
      sha256 = "028hcvhvap4p3gqg4h43arizpwzp1vs6dvrhh6s0by10d902867s";
    };
    meta = with lib; {
      description = "No description";
      homepage = "https://github.com/nikvdp/neomux";
      license = with licenses; [ mit ];
    };
  };
  numbers-nvim = buildVimPluginFrom2Nix {
    pname = "numbers-nvim";
    version = "2022-09-19";
    src = fetchurl {
      url = "https://github.com/nkakouros-original/numbers.nvim/archive/d1f95879a4cdf339f59e6a2dc6aef26912cf554c.tar.gz";
      sha256 = "1k2bhiy8r35lr3rj79z5xh63g6k51dwkca5vzd100gnqr7mkcaxd";
    };
    meta = with lib; {
      description = "Toggles relativenumbers when not needed";
      homepage = "https://github.com/nkakouros-original/numbers.nvim";
      license = with licenses; [ gpl3Only ];
    };
  };
  nvim-cokeline = buildVimPluginFrom2Nix {
    pname = "nvim-cokeline";
    version = "2022-09-11";
    src = fetchurl {
      url = "https://github.com/noib3/nvim-cokeline/archive/501f93ec84af0d505d95d3827cad470b9c5e86dc.tar.gz";
      sha256 = "0ik4x53d1mszdr7w9cn542bj8k9fqzxnzv9g96bx20rnklpinddv";
    };
    meta = with lib; {
      description = ":nose: A minimal Neovim bufferline";
      homepage = "https://github.com/noib3/nvim-cokeline";
      license = with licenses; [ mit ];
    };
  };
  nvim-completion = buildVimPluginFrom2Nix {
    pname = "nvim-completion";
    version = "2022-12-01";
    src = fetchurl {
      url = "https://github.com/noib3/nvim-completion/archive/0c540aa9c8a0989f05d451271806ccc259c7557f.tar.gz";
      sha256 = "1h1y36kp4kdah4x3hhs866f165y1jln9krr96h3yd707w456dlfn";
    };
    meta = with lib; {
      description = ":zap: An async autocompletion framework for Neovim";
      homepage = "https://github.com/noib3/nvim-completion";
      license = with licenses; [ mit ];
    };
  };
  nvim-base16-lua = buildVimPluginFrom2Nix {
    pname = "nvim-base16-lua";
    version = "2019-10-16";
    src = fetchurl {
      url = "https://github.com/norcalli/nvim-base16.lua/archive/b336f40462b3ca1ad16a17c195b83731a2942d9a.tar.gz";
      sha256 = "1nxs9xk37x2vkcijhrd8svslphjvlpj4bm0jw2yswrk3nxjjjj94";
    };
    meta = with lib; {
      description = "Programmatic lua library for setting base16 themes in Neovim";
      homepage = "https://github.com/norcalli/nvim-base16.lua";
    };
  };
  cmdbuf-nvim = buildVimPluginFrom2Nix {
    pname = "cmdbuf-nvim";
    version = "2022-12-05";
    src = fetchurl {
      url = "https://github.com/notomo/cmdbuf.nvim/archive/1e9dcb8882283326f7c1511ccd1b882f453d50f6.tar.gz";
      sha256 = "1nr960sks152d150w6cd8645yzqy58plv7l8sd3gm73mjw2k8hq4";
    };
    meta = with lib; {
      description = "Alternative command-line window plugin for neovim";
      homepage = "https://github.com/notomo/cmdbuf.nvim";
      license = with licenses; [ mit ];
    };
  };
  gesture-nvim = buildVimPluginFrom2Nix {
    pname = "gesture-nvim";
    version = "2022-12-05";
    src = fetchurl {
      url = "https://github.com/notomo/gesture.nvim/archive/25ba80cd4c2f0d4a014acefbd7dfb0d0a2cec086.tar.gz";
      sha256 = "0889ys2dzhs4xak4arna84akihw2aa8dkak8cg3jny62qsscrl1x";
    };
    meta = with lib; {
      description = "Mouse gesture plugin for neovim";
      homepage = "https://github.com/notomo/gesture.nvim";
      license = with licenses; [ mit ];
    };
  };
  kosmikoa-nvim = buildVimPluginFrom2Nix {
    pname = "kosmikoa-nvim";
    version = "2021-11-19";
    src = fetchurl {
      url = "https://github.com/novakne/kosmikoa.nvim/archive/a32b908fb2018f0f0ed1b92ff334db0d317f5dd7.tar.gz";
      sha256 = "0dq260294w6398rc98vlhcxkszha3s0j1kz1wf7ln6in7qs8av9j";
    };
    meta = with lib; {
      description = "A dark color scheme for Neovim with support for LSP, Treesitter. This mirror is deprecated. Use the repo at https://sr.ht/~novakane/kosmikoa.nvim/";
      homepage = "https://github.com/novakne/kosmikoa.nvim";
      license = with licenses; [ mit ];
    };
  };
  BufOnly-nvim = buildVimPluginFrom2Nix {
    pname = "BufOnly-nvim";
    version = "2021-07-05";
    src = fetchurl {
      url = "https://github.com/numToStr/BufOnly.nvim/archive/30579c2851743b00c4547c324a16f2c1cfa5a41c.tar.gz";
      sha256 = "0gwc6pa8cph5ic96jxi3ax4pcxr13vy4indhp505d464cb981ljm";
    };
    meta = with lib; {
      description = "Lua/Neovim port of BufOnly.vim with some changes";
      homepage = "https://github.com/numToStr/BufOnly.nvim";
    };
  };
  Comment-nvim = buildVimPluginFrom2Nix {
    pname = "Comment-nvim";
    version = "2022-11-18";
    src = fetchurl {
      url = "https://github.com/numToStr/Comment.nvim/archive/5f01c1a89adafc52bf34e3bf690f80d9d726715d.tar.gz";
      sha256 = "1ach7c186aygyrxbpd06vjkwglzlcbpd2w5m6jk661z85lcsa8p3";
    };
    meta = with lib; {
      description = ":brain: :muscle: // Smart and powerful comment plugin for neovim. Supports treesitter, dot repeat, left-right/up-down motions, hooks, and more";
      homepage = "https://github.com/numToStr/Comment.nvim";
      license = with licenses; [ mit ];
    };
  };
  colortils-nvim = buildVimPluginFrom2Nix {
    pname = "colortils-nvim";
    version = "2022-10-07";
    src = fetchurl {
      url = "https://github.com/nvim-colortils/colortils.nvim/archive/49bbc9c849fa279378d451765f4a978878691c42.tar.gz";
      sha256 = "0y83f557q45s3vn9k7ixzf6gkk8cms3g2cs2jvbmxas0xin0vn1q";
    };
    meta = with lib; {
      description = "Some color utils for neovim";
      homepage = "https://github.com/nvim-colortils/colortils.nvim";
      license = with licenses; [ gpl2Only ];
    };
  };
  neo-tree-nvim = buildVimPluginFrom2Nix {
    pname = "neo-tree-nvim";
    version = "2022-11-27";
    src = fetchurl {
      url = "https://github.com/nvim-neo-tree/neo-tree.nvim/archive/7c6903b05b13c5d4c3882c896a59e6101cb51ea7.tar.gz";
      sha256 = "0fan63p8viq27yqq3zz8bk5r71vvgw3cppslq9wpf7sh8w168ymv";
    };
    meta = with lib; {
      description = "Neovim plugin to manage the file system and other tree like structures";
      homepage = "https://github.com/nvim-neo-tree/neo-tree.nvim";
      license = with licenses; [ mit ];
    };
  };
  neotest = buildVimPluginFrom2Nix {
    pname = "neotest";
    version = "2022-12-10";
    src = fetchurl {
      url = "https://github.com/nvim-neotest/neotest/archive/21f4b943ea3a39c3046aac9d286bdc13be6f50da.tar.gz";
      sha256 = "08q7rd3bk28w18v4qddys3jqx3p6bsbzzjaf4niz79ny5q3ixzvs";
    };
    meta = with lib; {
      description = "An extensible framework for interacting with tests within NeoVim";
      homepage = "https://github.com/nvim-neotest/neotest";
      license = with licenses; [ mit ];
    };
  };
  telescope-bibtex-nvim = buildVimPluginFrom2Nix {
    pname = "telescope-bibtex-nvim";
    version = "2022-11-20";
    src = fetchurl {
      url = "https://github.com/nvim-telescope/telescope-bibtex.nvim/archive/d7c6f51936ecc29a550ea958faef15061879c533.tar.gz";
      sha256 = "1rhxfs989f3wwi3drr74sk9x4pnjnpsc35aly08n1d5xsnh1g87k";
    };
    meta = with lib; {
      description = "A telescope.nvim extension to search and paste bibtex entries into your TeX files";
      homepage = "https://github.com/nvim-telescope/telescope-bibtex.nvim";
      license = with licenses; [ mit ];
    };
  };
  nvim-treesitter-context = buildVimPluginFrom2Nix {
    pname = "nvim-treesitter-context";
    version = "2022-11-23";
    src = fetchurl {
      url = "https://github.com/nvim-treesitter/nvim-treesitter-context/archive/5fda0b9a2a9049ecc9900e2d86d9ddebab95b0c5.tar.gz";
      sha256 = "19s99qi850z156k0mwiab8qc27sml5xgky93cnnzqfgr8xvkjys9";
    };
    meta = with lib; {
      description = "Show code context";
      homepage = "https://github.com/nvim-treesitter/nvim-treesitter-context";
      license = with licenses; [ mit ];
    };
  };
  colorful-winsep-nvim = buildVimPluginFrom2Nix {
    pname = "colorful-winsep-nvim";
    version = "2022-11-22";
    src = fetchurl {
      url = "https://github.com/nvim-zh/colorful-winsep.nvim/archive/bb06c8678b1f879f14264aaba721098cc5495768.tar.gz";
      sha256 = "1yd4an2l4ng11h922s3w02grsdhgkq4qj6kk5pr7zyvs6mpascgd";
    };
    meta = with lib; {
      description = "Make your nvim window separators colorful";
      homepage = "https://github.com/nvim-zh/colorful-winsep.nvim";
      license = with licenses; [ mit ];
    };
  };
  vn-night-nvim = buildVimPluginFrom2Nix {
    pname = "vn-night-nvim";
    version = "2022-06-04";
    src = fetchurl {
      url = "https://github.com/nxvu699134/vn-night.nvim/archive/79edbafd73e47fa2909cf3791fbe9e8b78b55156.tar.gz";
      sha256 = "0y1knkiwzsblwcgka16zrrk65f9s3krkc0qj46j8mysff6025cx5";
    };
    meta = with lib; {
      description = "No description";
      homepage = "https://github.com/nxvu699134/vn-night.nvim";
      license = with licenses; [ mit ];
    };
  };
  NeoNoName-lua = buildVimPluginFrom2Nix {
    pname = "NeoNoName-lua";
    version = "2022-10-05";
    src = fetchurl {
      url = "https://github.com/nyngwang/NeoNoName.lua/archive/575f48c708dd19f2c873c3abb42b15a49060ab47.tar.gz";
      sha256 = "1gpyvxbcdkv6h9z4vpfj1fyhcajkwfq38ppp0ivjipclw0lhr71y";
    };
    meta = with lib; {
      description = "Layout-preserving buffer deletion with the trick of `[No Name]` buffer";
      homepage = "https://github.com/nyngwang/NeoNoName.lua";
    };
  };
  NeoRoot-lua = buildVimPluginFrom2Nix {
    pname = "NeoRoot-lua";
    version = "2022-04-19";
    src = fetchurl {
      url = "https://github.com/nyngwang/NeoRoot.lua/archive/998b3c08bf91c523c6fa502ca0dabf14c24d67ae.tar.gz";
      sha256 = "16nqc1ypnj366vdvp99gawd5lhqp094w2a72mabfi3gpslxg8m19";
    };
    meta = with lib; {
      description = "Yet another light-weight rooter written in Lua";
      homepage = "https://github.com/nyngwang/NeoRoot.lua";
    };
  };
  goto-breakpoints-nvim = buildVimPluginFrom2Nix {
    pname = "goto-breakpoints-nvim";
    version = "2022-08-18";
    src = fetchurl {
      url = "https://github.com/ofirgall/goto-breakpoints.nvim/archive/af43bb905cbff6c8ebb8e6438b75853b7baf1c74.tar.gz";
      sha256 = "16lf0b8wxfg8mjb6gkqyyv94irhixif0rzb40516v2hlfxz7sw8h";
    };
    meta = with lib; {
      description = "Cycle between breakpoints with keymappings for nvim-dap";
      homepage = "https://github.com/ofirgall/goto-breakpoints.nvim";
      license = with licenses; [ mit ];
    };
  };
  ofirkai-nvim = buildVimPluginFrom2Nix {
    pname = "ofirkai-nvim";
    version = "2022-11-11";
    src = fetchurl {
      url = "https://github.com/ofirgall/ofirkai.nvim/archive/4f9f8570179bc26fd94a7913c42858a01db70af3.tar.gz";
      sha256 = "1pk0v6pr0g489jlpmfrxvdfia4vawapln54j51i9m60vdail6x86";
    };
    meta = with lib; {
      description = "Color scheme for neovim, based on SublimeText 4 monokai";
      homepage = "https://github.com/ofirgall/ofirkai.nvim";
      license = with licenses; [ mit ];
    };
  };
  open-nvim = buildVimPluginFrom2Nix {
    pname = "open-nvim";
    version = "2022-10-29";
    src = fetchurl {
      url = "https://github.com/ofirgall/open.nvim/archive/3375a7925ba79e6ead7d878003bb5b493bd1044b.tar.gz";
      sha256 = "19b1gnjpsl8s6wxabxnyw2az0h34vap8lpd86w8asgj5iaqi2c3x";
    };
    meta = with lib; {
      description = "Open the current word with custom openers, GitHub shorthands for example";
      homepage = "https://github.com/ofirgall/open.nvim";
      license = with licenses; [ gpl3Only ];
    };
  };
  nvim-hardline = buildVimPluginFrom2Nix {
    pname = "nvim-hardline";
    version = "2022-09-06";
    src = fetchurl {
      url = "https://github.com/ojroques/nvim-hardline/archive/81f8dafc1abfdd836f8b13abc903b0b82ca67c7b.tar.gz";
      sha256 = "0lhzyyh4jblrf75nc941a6pmv2bjhnhvkmn24d0q0vxadafi4d3f";
    };
    meta = with lib; {
      description = "A simple Neovim statusline";
      homepage = "https://github.com/ojroques/nvim-hardline";
      license = with licenses; [ bsd2 ];
    };
  };
  nvim-lspfuzzy = buildVimPluginFrom2Nix {
    pname = "nvim-lspfuzzy";
    version = "2022-09-26";
    src = fetchurl {
      url = "https://github.com/ojroques/nvim-lspfuzzy/archive/7c9f861fdf0adc4a4361355f892c4a3f7431bfa9.tar.gz";
      sha256 = "05h3y3wxcmza9dzwddy4p0c1ab31bcsj00w15ykgnl842amrsrzl";
    };
    meta = with lib; {
      description = "A Neovim plugin to make the LSP client use FZF";
      homepage = "https://github.com/ojroques/nvim-lspfuzzy";
      license = with licenses; [ bsd2 ];
    };
  };
  gopher-nvim = buildVimPluginFrom2Nix {
    pname = "gopher-nvim";
    version = "2022-11-13";
    src = fetchurl {
      url = "https://github.com/olexsmir/gopher.nvim/archive/e8fe6c5b153646c28d0e63026083374bbdecb9e2.tar.gz";
      sha256 = "1zbmcj35m39h8gmcs842yk62kbnixqjl0wbi1vhcv3wmwvszji1s";
    };
    meta = with lib; {
      description = "Neovim plugin for make golang development easiest";
      homepage = "https://github.com/olexsmir/gopher.nvim";
    };
  };
  persisted-nvim = buildVimPluginFrom2Nix {
    pname = "persisted-nvim";
    version = "2022-11-16";
    src = fetchurl {
      url = "https://github.com/olimorris/persisted.nvim/archive/769c1308311e4093260ca0d5d465a77ab3125ca3.tar.gz";
      sha256 = "1r9zq6cf587nhvksfsz90s2zl3hxsfvv04ldh343fas75zpi229b";
    };
    meta = with lib; {
      description = "💾 Simple session management for Neovim with git branching, autoloading and Telescope support";
      homepage = "https://github.com/olimorris/persisted.nvim";
      license = with licenses; [ mit ];
    };
  };
  poimandres-nvim = buildVimPluginFrom2Nix {
    pname = "poimandres-nvim";
    version = "2022-11-13";
    src = fetchurl {
      url = "https://github.com/olivercederborg/poimandres.nvim/archive/be4ea8d437cd963550d102d90415962e9734f909.tar.gz";
      sha256 = "17p55glnnx0ih3j32rzfvgwfjar3l42y8ckdcr1dr4f1bmrfgvbh";
    };
    meta = with lib; {
      description = "Poimandres colorscheme for Neovim written in Lua";
      homepage = "https://github.com/olivercederborg/poimandres.nvim";
    };
  };
  lspkind-nvim = buildVimPluginFrom2Nix {
    pname = "lspkind-nvim";
    version = "2022-09-22";
    src = fetchurl {
      url = "https://github.com/onsails/lspkind.nvim/archive/c68b3a003483cf382428a43035079f78474cd11e.tar.gz";
      sha256 = "1fzx91w32ypyhi3x7l07zc0wzqpphws1jz1siipzih12yq327xrh";
    };
    meta = with lib; {
      description = "vscode-like pictograms for neovim lsp completion items";
      homepage = "https://github.com/onsails/lspkind.nvim";
      license = with licenses; [ mit ];
    };
  };
  scribe-nvim = buildVimPluginFrom2Nix {
    pname = "scribe-nvim";
    version = "2022-10-24";
    src = fetchurl {
      url = "https://github.com/Ostralyan/scribe.nvim/archive/8e82eb126b87d2b03cda00a7970cca85695cc6fa.tar.gz";
      sha256 = "1i0blc5m4cc7n7r0g4hrqdkgax8wrkcfhzsjqqpg1p7n9jgm9v5n";
    };
    meta = with lib; {
      description = "An easy note taking plugin";
      homepage = "https://github.com/Ostralyan/scribe.nvim";
      license = with licenses; [ gpl3Only ];
    };
  };
  telescope-alternate-nvim = buildVimPluginFrom2Nix {
    pname = "telescope-alternate-nvim";
    version = "2022-09-27";
    src = fetchurl {
      url = "https://github.com/otavioschwanck/telescope-alternate.nvim/archive/ac5483808731e9eb1527ed89f92d885c649637fc.tar.gz";
      sha256 = "04p1mk0jj7bkpspyl85mq4xikd1wxj9q2xhzsibilmzla120p0fx";
    };
    meta = with lib; {
      description = "Alternate between common files using pre-defined regexp.  Just map the patterns and starting navigating between files that are related";
      homepage = "https://github.com/otavioschwanck/telescope-alternate.nvim";
    };
  };
  tmux-awesome-manager-nvim = buildVimPluginFrom2Nix {
    pname = "tmux-awesome-manager-nvim";
    version = "2022-11-28";
    src = fetchurl {
      url = "https://github.com/otavioschwanck/tmux-awesome-manager.nvim/archive/c2e787c5cfbdd5e0f23ebd89fd53f1a8a7583fa9.tar.gz";
      sha256 = "1kml8pbsjwx1bjig72kj6fdvlgcari6vic30p24mfkl2lhxinrbc";
    };
    meta = with lib; {
      description = "TMUX Commands manager / runner for Neovim";
      homepage = "https://github.com/otavioschwanck/tmux-awesome-manager.nvim";
    };
  };
  cphelper-nvim = buildVimPluginFrom2Nix {
    pname = "cphelper-nvim";
    version = "2022-09-11";
    src = fetchurl {
      url = "https://github.com/p00f/cphelper.nvim/archive/c873e28fa743324bb949ef0f33eeaf49d059af08.tar.gz";
      sha256 = "0lb28iwmy2pky1y259b2vlpy029yn7c6hcsf523dgv26ny5q73j4";
    };
    meta = with lib; {
      description = "Neovim helper for competitive programming. Use https://sr.ht/~p00f/cphelper.nvim instead";
      homepage = "https://github.com/p00f/cphelper.nvim";
      license = with licenses; [ mit ];
    };
  };
  nvim-scrollbar = buildVimPluginFrom2Nix {
    pname = "nvim-scrollbar";
    version = "2022-12-07";
    src = fetchurl {
      url = "https://github.com/petertriho/nvim-scrollbar/archive/f45aecbba9c402282dfc99721e0ad4c08710907c.tar.gz";
      sha256 = "12bnk4qs0xnf4cn9vinxslivadpp4pwwgpqigzq2f1hwpw90fcgz";
    };
    meta = with lib; {
      description = "Extensible Neovim Scrollbar";
      homepage = "https://github.com/petertriho/nvim-scrollbar";
      license = with licenses; [ mit ];
    };
  };
  zenburn-nvim = buildVimPluginFrom2Nix {
    pname = "zenburn-nvim";
    version = "2022-11-23";
    src = fetchurl {
      url = "https://github.com/phha/zenburn.nvim/archive/cc78ddba1d65f885d3928692ee628ed40216b900.tar.gz";
      sha256 = "0vfgnyhp6g730c5m3ijrzywcb39jn5yjv96kwz0fjj5bd3z4dvmk";
    };
    meta = with lib; {
      description = "Zenburn for the modern age";
      homepage = "https://github.com/phha/zenburn.nvim";
      license = with licenses; [ mit ];
    };
  };
  consolation-nvim = buildVimPluginFrom2Nix {
    pname = "consolation-nvim";
    version = "2021-09-01";
    src = fetchurl {
      url = "https://github.com/pianocomposer321/consolation.nvim/archive/9111a1e5204e6d522e0229569f5f2841faa7a72f.tar.gz";
      sha256 = "0dldx3mm8a5sm6bgrgpmr6kxhwkq4j5wwgqg5y1djqsx0c8xhxp1";
    };
    meta = with lib; {
      description = "A general-purpose terminal wrapper and management plugin for neovim, written in lua";
      homepage = "https://github.com/pianocomposer321/consolation.nvim";
    };
  };
  yabs-nvim = buildVimPluginFrom2Nix {
    pname = "yabs-nvim";
    version = "2022-05-09";
    src = fetchurl {
      url = "https://github.com/pianocomposer321/yabs.nvim/archive/88bdb5c557448960be3cb9d3da64e52009e7bef9.tar.gz";
      sha256 = "032h765cdw251xns4c6r0pwwa1gvbv8lkcb77k7xb7nrlkgdij1f";
    };
    meta = with lib; {
      description = "Yet Another Build System/Code Runner for Neovim, written in lua";
      homepage = "https://github.com/pianocomposer321/yabs.nvim";
      license = with licenses; [ agpl3Only ];
    };
  };
  pantran-nvim = buildVimPluginFrom2Nix {
    pname = "pantran-nvim";
    version = "2022-10-23";
    src = fetchurl {
      url = "https://github.com/potamides/pantran.nvim/archive/3d287f74d056edf19416ee14e021090eb17f4276.tar.gz";
      sha256 = "1fy2i397wc1g7w56757xzk5m0ng0j8qc9s2h9zwdlgkych7kngpf";
    };
    meta = with lib; {
      description = "Use your favorite machine translation engines without having to leave your favorite editor";
      homepage = "https://github.com/potamides/pantran.nvim";
      license = with licenses; [ mit ];
    };
  };
  github-nvim-theme = buildVimPluginFrom2Nix {
    pname = "github-nvim-theme";
    version = "2022-10-10";
    src = fetchurl {
      url = "https://github.com/projekt0n/github-nvim-theme/archive/a0632f9fa9b696896d4b427de0c84c1e9f192204.tar.gz";
      sha256 = "19ir6znd2aa4ly3kvbibr9lrk3kri4vi9wzcyr73scsw1ql2brc5";
    };
    meta = with lib; {
      description = "Github's Neovim themes ";
      homepage = "https://github.com/projekt0n/github-nvim-theme";
      license = with licenses; [ mit ];
    };
  };
  codeql-nvim = buildVimPluginFrom2Nix {
    pname = "codeql-nvim";
    version = "2022-11-07";
    src = fetchurl {
      url = "https://github.com/pwntester/codeql.nvim/archive/8e1a24cc18506cddd6073f57e70f1c2e5a15f832.tar.gz";
      sha256 = "0gdi242jiwy43j3bddb76fa89fxzxkpxkc8vlsximlpnzlz61rmc";
    };
    meta = with lib; {
      description = "CodeQL plugin for Neovim";
      homepage = "https://github.com/pwntester/codeql.nvim";
    };
  };
  nvim-goc-lua = buildVimPluginFrom2Nix {
    pname = "nvim-goc-lua";
    version = "2022-09-15";
    src = fetchurl {
      url = "https://github.com/rafaelsq/nvim-goc.lua/archive/7d23d820feeb30c6346b8a4f159466ee77e855fd.tar.gz";
      sha256 = "0yhjx4bl08hcvlnz151q2m36flwr9dkj5iviwp6vq7666arx8ps6";
    };
    meta = with lib; {
      description = "Go Coverage for Neovim";
      homepage = "https://github.com/rafaelsq/nvim-goc.lua";
      license = with licenses; [ mit ];
    };
  };
  tabline-framework-nvim = buildVimPluginFrom2Nix {
    pname = "tabline-framework-nvim";
    version = "2022-11-05";
    src = fetchurl {
      url = "https://github.com/rafcamlet/tabline-framework.nvim/archive/dae473260d577b6c2d975293e81c9b78d7716ec3.tar.gz";
      sha256 = "1m2g5wivh8vp5gn06m1c1icra9d14fvwjcs64bj02y7ysf643f4i";
    };
    meta = with lib; {
      description = "User-friendly framework for building your dream tabline in a few lines of code";
      homepage = "https://github.com/rafcamlet/tabline-framework.nvim";
      license = with licenses; [ mit ];
    };
  };
  requirements-txt-vim = buildVimPluginFrom2Nix {
    pname = "requirements-txt-vim";
    version = "2022-11-01";
    src = fetchurl {
      url = "https://github.com/raimon49/requirements.txt.vim/archive/d1a03f3ff17044491e2044cdd4f0ab8161b1dae2.tar.gz";
      sha256 = "0343l8smac2vkfw1k72rpsqs5y00ial04k6lsjd7sv4dnca3mcxa";
    };
    meta = with lib; {
      description = "the Requirements File Format syntax support for Vim";
      homepage = "https://github.com/raimon49/requirements.txt.vim";
      license = with licenses; [ mit ];
    };
  };
  ccls-nvim = buildVimPluginFrom2Nix {
    pname = "ccls-nvim";
    version = "2022-11-08";
    src = fetchurl {
      url = "https://github.com/ranjithshegde/ccls.nvim/archive/37c772b07d25054a51ec36f1767e1d64224fb38d.tar.gz";
      sha256 = "01vzsdkcrg4k736pzj6zbzdgizn6i5b8f7y1mdd1r6qm7pdd98kx";
    };
    meta = with lib; {
      description = "Neovim plugin for ccls language server. Leverages off-spec extensions to  LSP client with AST browser";
      homepage = "https://github.com/ranjithshegde/ccls.nvim";
      license = with licenses; [ gpl2Only ];
    };
  };
  go-nvim = buildVimPluginFrom2Nix {
    pname = "go-nvim";
    version = "2022-12-08";
    src = fetchurl {
      url = "https://github.com/ray-x/go.nvim/archive/a16482773ef4a85f845daff37a7179ea2e2eedf8.tar.gz";
      sha256 = "1wr4k7z2pi45pxnmb78g31kjbscal0a957jjs22hh9j465xib38d";
    };
    meta = with lib; {
      description = "Modern Go plugin for Neovim, based on gopls, treesitter AST, Dap and a variety of go tools";
      homepage = "https://github.com/ray-x/go.nvim";
      license = with licenses; [ mit ];
    };
  };
  guihua-lua = buildVimPluginFrom2Nix {
    pname = "guihua-lua";
    version = "2022-11-29";
    src = fetchurl {
      url = "https://github.com/ray-x/guihua.lua/archive/6026fcca876e2dad6f379c856d3f31ec51bb8b54.tar.gz";
      sha256 = "1a75ycidrc1r9qfhnd7spdza5jm1k5pf803502jrpknkv5pay502";
    };
    meta = with lib; {
      description = "A GUI library for Neovim plugin developers";
      homepage = "https://github.com/ray-x/guihua.lua";
      license = with licenses; [ mit ];
    };
  };
  navigator-lua = buildVimPluginFrom2Nix {
    pname = "navigator-lua";
    version = "2022-11-28";
    src = fetchurl {
      url = "https://github.com/ray-x/navigator.lua/archive/7965d9c1bc3b1af84b276c3bbe615cbc22d8cc81.tar.gz";
      sha256 = "0031kzb4symj712nncn7nq2ij1mw0d9a8s70zc9ypq9cys1hhfs0";
    };
    meta = with lib; {
      description = "Source code analysis & navigation plugin for Neovim. Navigate codes like a breeze🎐.  Exploring LSP and 🌲Treesitter symbols a piece of 🍰. Take control like a boss 🦍";
      homepage = "https://github.com/ray-x/navigator.lua";
      license = with licenses; [ mit ];
    };
  };
  sad-nvim = buildVimPluginFrom2Nix {
    pname = "sad-nvim";
    version = "2022-08-30";
    src = fetchurl {
      url = "https://github.com/ray-x/sad.nvim/archive/01b7d84f4f73c8963f5933f09e88c833757bc7d8.tar.gz";
      sha256 = "1l0wbszvvmwhnf38165iyrrn5c952cv26f4wnnh3lxw23168xdim";
    };
    meta = with lib; {
      description = "Space Age seD in Neovim. A project-wide find and replace plugin for Neovim";
      homepage = "https://github.com/ray-x/sad.nvim";
      license = with licenses; [ gpl3Only ];
    };
  };
  starry-nvim = buildVimPluginFrom2Nix {
    pname = "starry-nvim";
    version = "2022-12-08";
    src = fetchurl {
      url = "https://github.com/ray-x/starry.nvim/archive/b94c97a15b0327ead470ba761c9780c62381cc96.tar.gz";
      sha256 = "067bn5bjp9zaxsaphxcxs7yfh4niyh3f5vn5sgaprjd0l98s0b3c";
    };
    meta = with lib; {
      description = "A pack of modern nvim color schemes: material, moonlight, Dracula (blood), Monokai, Mariana, Emerald, earlysummer, middlenight_blue... Fully support Treesitter, LSP and a variety of plugins";
      homepage = "https://github.com/ray-x/starry.nvim";
      license = with licenses; [ gpl2Only ];
    };
  };
  web-tools-nvim = buildVimPluginFrom2Nix {
    pname = "web-tools-nvim";
    version = "2022-11-02";
    src = fetchurl {
      url = "https://github.com/ray-x/web-tools.nvim/archive/afc031e5e68e212e17067b950cd09be980ad0520.tar.gz";
      sha256 = "1dhfwswg9w01qahazqaqk8901k9ddy9irmjy0083w6kmrgzd30cq";
    };
    meta = with lib; {
      description = "Neovim plugin for web developers";
      homepage = "https://github.com/ray-x/web-tools.nvim";
    };
  };
  heirline-nvim = buildVimPluginFrom2Nix {
    pname = "heirline-nvim";
    version = "2022-12-09";
    src = fetchurl {
      url = "https://github.com/rebelot/heirline.nvim/archive/556666aabb57c227cbb14a996b30b2934e5ff7b1.tar.gz";
      sha256 = "09w96xc28fr1408166vr6iang3s349mnia665vr7dj5lc3akzplf";
    };
    meta = with lib; {
      description = "Heirline.nvim is a no-nonsense Neovim Statusline plugin designed around recursive inheritance to be exceptionally fast and versatile";
      homepage = "https://github.com/rebelot/heirline.nvim";
      license = with licenses; [ mit ];
    };
  };
  telekasten-nvim = buildVimPluginFrom2Nix {
    pname = "telekasten-nvim";
    version = "2022-11-27";
    src = fetchurl {
      url = "https://github.com/renerocksai/telekasten.nvim/archive/9de25d16574b5eb0d9f548a456d9595e1cf82eb2.tar.gz";
      sha256 = "17wq34cy0svhhxxydfpp9c2rc08bi65h25mqvv8n8ad052kx20lv";
    };
    meta = with lib; {
      description = "A Neovim (lua) plugin for working with a markdown zettelkasten / wiki and mixing it with a journal, based on telescope.nvim";
      homepage = "https://github.com/renerocksai/telekasten.nvim";
      license = with licenses; [ mit ];
    };
  };
  other-nvim = buildVimPluginFrom2Nix {
    pname = "other-nvim";
    version = "2022-11-15";
    src = fetchurl {
      url = "https://github.com/rgroli/other.nvim/archive/9afecea37c9b5ffed65a21de9e585d548de7778a.tar.gz";
      sha256 = "1f70b8j9jglw09wa3pcinciv1q9cac32z36p3xjy0n8l31c3h7lh";
    };
    meta = with lib; {
      description = "Open alternative files for the current buffer";
      homepage = "https://github.com/rgroli/other.nvim";
      license = with licenses; [ mit ];
    };
  };
  vim-gfm-syntax = buildVimPluginFrom2Nix {
    pname = "vim-gfm-syntax";
    version = "2022-08-01";
    src = fetchurl {
      url = "https://github.com/rhysd/vim-gfm-syntax/archive/95ec295ccc803afc925c01e6efe328779e1261e9.tar.gz";
      sha256 = "0fs8i7jn3jkr69lpnjasi38prj506j91gyc0csj06jz1j3lj4bki";
    };
    meta = with lib; {
      description = "GitHub Flavored Markdown syntax highlight extension for Vim";
      homepage = "https://github.com/rhysd/vim-gfm-syntax";
      license = with licenses; [ mit ];
    };
  };
  highlight-current-n-nvim = buildVimPluginFrom2Nix {
    pname = "highlight-current-n-nvim";
    version = "2022-12-03";
    src = fetchurl {
      url = "https://github.com/rktjmp/highlight-current-n.nvim/archive/bac803d821d06d5f1e58b31af1cf2e5f9a5fb4ad.tar.gz";
      sha256 = "0q3angzs6akh3zd36r9vm95k0a41llr6j8wig7si5k1p5zqv9jb7";
    };
    meta = with lib; {
      description = "Highlights the current /, ? or * match under your cursor when pressing n or N and gets out of the way afterwards";
      homepage = "https://github.com/rktjmp/highlight-current-n.nvim";
      license = with licenses; [ mit ];
    };
  };
  pact-nvim = buildVimPluginFrom2Nix {
    pname = "pact-nvim";
    version = "2022-12-05";
    src = fetchurl {
      url = "https://github.com/rktjmp/pact.nvim/archive/f386954893a19315fbce52bcdfd8a5b4cc8db71b.tar.gz";
      sha256 = "1j0x9xw0hqg0ff5kqlq34kq299qric5zdxwwxfbhsj2za4n1gypb";
    };
    meta = with lib; {
      description = "🔪🩸🐐 semver aware package manager for neovim";
      homepage = "https://github.com/rktjmp/pact.nvim";
      license = with licenses; [ mit ];
    };
  };
  paperplanes-nvim = buildVimPluginFrom2Nix {
    pname = "paperplanes-nvim";
    version = "2022-09-29";
    src = fetchurl {
      url = "https://github.com/rktjmp/paperplanes.nvim/archive/d704b2e1e594b32d454cc7e0c5f2cf9b391e3cc1.tar.gz";
      sha256 = "1931zg8ma200jdbs38kd08j2668bj5j4j628n3z9l7sk4rzj9hiy";
    };
    meta = with lib; {
      description = "Neovim :airplane: Pastebins";
      homepage = "https://github.com/rktjmp/paperplanes.nvim";
      license = with licenses; [ mit ];
    };
  };
  shenzhen-solitaire-nvim = buildVimPluginFrom2Nix {
    pname = "shenzhen-solitaire-nvim";
    version = "2022-07-29";
    src = fetchurl {
      url = "https://github.com/rktjmp/shenzhen-solitaire.nvim/archive/3ef058d18405383d5c8326be7d07c5a40791eb70.tar.gz";
      sha256 = "03ispqbmh5vnnxlnv270khdhhz66nci9ip79lpwk5gsssm7s9dsd";
    };
    meta = with lib; {
      description = "Shenzhen I/O Solitaire, now in Neovim";
      homepage = "https://github.com/rktjmp/shenzhen-solitaire.nvim";
    };
  };
  pounce-nvim = buildVimPluginFrom2Nix {
    pname = "pounce-nvim";
    version = "2022-08-23";
    src = fetchurl {
      url = "https://github.com/rlane/pounce.nvim/archive/a573820b20882c70d241a1ac94aa27670442c027.tar.gz";
      sha256 = "1270m2brapavgvv61y718pap2x11x3iznn0hknyjygvxiql1pjxg";
    };
    meta = with lib; {
      description = "Incremental fuzzy search motion plugin for Neovim";
      homepage = "https://github.com/rlane/pounce.nvim";
    };
  };
  onenord-nvim = buildVimPluginFrom2Nix {
    pname = "onenord-nvim";
    version = "2022-12-10";
    src = fetchurl {
      url = "https://github.com/rmehri01/onenord.nvim/archive/d6ff2f0f4b4e16cc458a45abafa80718f3101db9.tar.gz";
      sha256 = "14kwxsjzlrpfsnsb0mn5b7l6bw39hhlialahf07760cgp9s22n8v";
    };
    meta = with lib; {
      description = "🏔️ A Neovim theme that combines the Nord and Atom One Dark color palettes for a more vibrant programming experience";
      homepage = "https://github.com/rmehri01/onenord.nvim";
      license = with licenses; [ mit ];
    };
  };
  boo-colorscheme-nvim = buildVimPluginFrom2Nix {
    pname = "boo-colorscheme-nvim";
    version = "2022-10-25";
    src = fetchurl {
      url = "https://github.com/rockerBOO/boo-colorscheme-nvim/archive/a54e1734eed11b0a5b4ab1bf7a8148edb9f1ef5f.tar.gz";
      sha256 = "1gxrdwlqmvqv3fg5icmskz5m4g0bjn08jhdl2glcjj4ngg5amfgb";
    };
    meta = with lib; {
      description = "Boo is a colorscheme for Neovim with handcrafted support for LSP, Tree-sitter";
      homepage = "https://github.com/rockerBOO/boo-colorscheme-nvim";
      license = with licenses; [ mit ];
    };
  };
  arctic-nvim = buildVimPluginFrom2Nix {
    pname = "arctic-nvim";
    version = "2022-10-23";
    src = fetchurl {
      url = "https://github.com/rockyzhang24/arctic.nvim/archive/7a2f7ae1339678a80ae2dc940598c10d7d854685.tar.gz";
      sha256 = "1p2nyq74402q8qlk4f1kxgviyql1pwjba4ga0m0sj0y2b7pnxw0d";
    };
    meta = with lib; {
      description = "Neovim color scheme ported from VSCode Dark+";
      homepage = "https://github.com/rockyzhang24/arctic.nvim";
      license = with licenses; [ mit ];
    };
  };
  coc-tailwind-intellisense = buildVimPluginFrom2Nix {
    pname = "coc-tailwind-intellisense";
    version = "2021-09-07";
    src = fetchurl {
      url = "https://github.com/rodrigore/coc-tailwind-intellisense/archive/129fbd9dc33f6f7d3daa5e1e0b98dc4352f30290.tar.gz";
      sha256 = "1l1zyvxvg5qmr29h1sl1divy6m0m4s7a18rhx8fxn8wdqx7y35wx";
    };
    meta = with lib; {
      description = "Coc.nvim extension for Tailwind CSS IntelliSense ";
      homepage = "https://github.com/rodrigore/coc-tailwind-intellisense";
    };
  };
  rose-pine = buildVimPluginFrom2Nix {
    pname = "rose-pine";
    version = "2022-12-03";
    src = fetchurl {
      url = "https://github.com/rose-pine/neovim/archive/7610f245821e98232e7ee8dcbf3364725807187d.tar.gz";
      sha256 = "1fscyq8h3fh5pqxkk31haw0mvnwvrw22nmbrjlbrb6d4337j20i1";
    };
    meta = with lib; {
      description = "Soho vibes for Neovim";
      homepage = "https://github.com/rose-pine/neovim";
      license = with licenses; [ mit ];
    };
  };
  nvim-comment-frame = buildVimPluginFrom2Nix {
    pname = "nvim-comment-frame";
    version = "2022-10-11";
    src = fetchurl {
      url = "https://github.com/s1n7ax/nvim-comment-frame/archive/7a7d34ee7a236a89ffe5674bf794358ee12a7df8.tar.gz";
      sha256 = "1nfm5jcsc0vaz1hc4i5fi1r0cq735sdnsa814wvzqlzy5v45q55l";
    };
    meta = with lib; {
      description = "Detects the language using treesitter and adds a comment block";
      homepage = "https://github.com/s1n7ax/nvim-comment-frame";
      license = with licenses; [ mit ];
    };
  };
  nvim-terminal = buildVimPluginFrom2Nix {
    pname = "nvim-terminal";
    version = "2022-06-29";
    src = fetchurl {
      url = "https://github.com/s1n7ax/nvim-terminal/archive/e058de4b8029d7605b17275f30f83be8f8df5f62.tar.gz";
      sha256 = "03pf0hzf5d06z3bysjpzid69jihx770344kkc3qw2pi8w560rrlf";
    };
    meta = with lib; {
      description = "A Lua-Neovim plugin that toggles a terminal";
      homepage = "https://github.com/s1n7ax/nvim-terminal";
      license = with licenses; [ mit ];
    };
  };
  sort-nvim = buildVimPluginFrom2Nix {
    pname = "sort-nvim";
    version = "2022-07-08";
    src = fetchurl {
      url = "https://github.com/sQVe/sort.nvim/archive/9e4065625317128f6a1c826f4a36f9b47600417a.tar.gz";
      sha256 = "0drwk8vqx215s1n8bml0g6zf5x1qr4z7rnas3fvi2m6zidk5i2v9";
    };
    meta = with lib; {
      description = "Sorting plugin for Neovim that supports line-wise and delimiter sorting";
      homepage = "https://github.com/sQVe/sort.nvim";
      license = with licenses; [ mit ];
    };
  };
  chartoggle-nvim = buildVimPluginFrom2Nix {
    pname = "chartoggle-nvim";
    version = "2022-07-21";
    src = fetchurl {
      url = "https://github.com/saifulapm/chartoggle.nvim/archive/e96641c7ee7972033f832b7f4af78d9ed04b130f.tar.gz";
      sha256 = "1x2a7m2j1l3i14lmr05967a6c4xvnami93nvlpd9aw58hxwdmlsx";
    };
    meta = with lib; {
      description = "Toggle character in Neovim";
      homepage = "https://github.com/saifulapm/chartoggle.nvim";
      license = with licenses; [ mit ];
    };
  };
  nvim-unception = buildVimPluginFrom2Nix {
    pname = "nvim-unception";
    version = "2022-11-17";
    src = fetchurl {
      url = "https://github.com/samjwill/nvim-unception/archive/5a803a17aa7871be10dbfae4f4a6eb0dd2b0e76a.tar.gz";
      sha256 = "0gisph4ig4mdh2c7dfkc5n3ksckp83998ds3acmwjp74cqs3bdrc";
    };
    meta = with lib; {
      description = "A plugin that leverages Neovim's built-in RPC functionality to simplify opening files from within Neovim's terminal emulator without unintentionally nesting sessions";
      homepage = "https://github.com/samjwill/nvim-unception";
      license = with licenses; [ mit ];
    };
  };
  image-nvim = buildVimPluginFrom2Nix {
    pname = "image-nvim";
    version = "2022-11-23";
    src = fetchurl {
      url = "https://github.com/samodostal/image.nvim/archive/dc11753ba86afdabff3e0d3f73925424e391bc00.tar.gz";
      sha256 = "0n01vknn4c77if2ddg8llpn5i7wmyv5jx520z2rsg278yf4sprjk";
    };
    meta = with lib; {
      description = "🖼️ Image Viewer as ASCII Art for Neovim written in Lua";
      homepage = "https://github.com/samodostal/image.nvim";
      license = with licenses; [ mit ];
    };
  };
  melange = buildVimPluginFrom2Nix {
    pname = "melange";
    version = "2022-06-13";
    src = fetchurl {
      url = "https://github.com/savq/melange/archive/78af754ad22828ea3558e2990326b8aa39730918.tar.gz";
      sha256 = "09fzxiiwq4ncjx4adnmyp88lhnyxy4x2jrgslvw2mn2qk5v3vp82";
    };
    meta = with lib; {
      description = "🗡️ Warm colorscheme for Neovim and beyond";
      homepage = "https://github.com/savq/melange";
      license = with licenses; [ mit ];
    };
  };
  paq-nvim = buildVimPluginFrom2Nix {
    pname = "paq-nvim";
    version = "2022-12-02";
    src = fetchurl {
      url = "https://github.com/savq/paq-nvim/archive/51f5cb97c5b329b1c94c6aa0e1ac99d499cd6c15.tar.gz";
      sha256 = "0c9wvfgybdqbn034h2f3ykadv7m8pklg3fmy2c1bn1r28xawa7i4";
    };
    meta = with lib; {
      description = "🌚  Neovim package manager";
      homepage = "https://github.com/savq/paq-nvim";
      license = with licenses; [ mit ];
    };
  };
  killersheep-nvim = buildVimPluginFrom2Nix {
    pname = "killersheep-nvim";
    version = "2022-05-11";
    src = fetchurl {
      url = "https://github.com/seandewar/killersheep.nvim/archive/506823c47b854df02e78d5fec9468ab0e542dcf5.tar.gz";
      sha256 = "19n45z3vic1w96xs8f1sgpbpc2m62rcy79zhqfac13pdlfzs7fi7";
    };
    meta = with lib; {
      description = "Neovim port of killersheep (with blood!)";
      homepage = "https://github.com/seandewar/killersheep.nvim";
    };
  };
  nvimesweeper = buildVimPluginFrom2Nix {
    pname = "nvimesweeper";
    version = "2022-04-26";
    src = fetchurl {
      url = "https://github.com/seandewar/nvimesweeper/archive/b40a5714340d54e4ea8374e8831304a090340ccb.tar.gz";
      sha256 = "0q25ix44d9ap0l6ls9y6v3hhg5n5554ng3bphw8hjvsg06kjxw2h";
    };
    meta = with lib; {
      description = "Play Minesweeper in your favourite text editor (Neovim 0.7+)";
      homepage = "https://github.com/seandewar/nvimesweeper";
      license = with licenses; [ mit ];
    };
  };
  vim-textobj-parameter = buildVimPluginFrom2Nix {
    pname = "vim-textobj-parameter";
    version = "2017-05-16";
    src = fetchurl {
      url = "https://github.com/sgur/vim-textobj-parameter/archive/201144f19a1a7081033b3cf2b088916dd0bcb98c.tar.gz";
      sha256 = "1l1b1gz1ckbl5c68ri1gnlkyyc3dqr65m3hlgdplhmy1lyzf8p0v";
    };
    meta = with lib; {
      description = "A fork of textobj-parameter 0.1.0";
      homepage = "https://github.com/sgur/vim-textobj-parameter";
    };
  };
  Abstract-cs = buildVimPluginFrom2Nix {
    pname = "Abstract-cs";
    version = "2022-10-21";
    src = fetchurl {
      url = "https://github.com/Abstract-IDE/Abstract-cs/archive/4f19d4b1bf7bd0cfc0f820cbbec7e9285088f700.tar.gz";
      sha256 = "1yb8g7dhcw00pyga0ns6sjfqx9fhh3myh6bfr4z8wz08kwqy46dm";
    };
    meta = with lib; {
      description = "Colorscheme for (neo)vim written in lua, specially made for roshnivim with Tree-sitter support";
      homepage = "https://github.com/Abstract-IDE/Abstract-cs";
    };
  };
  nvim-numbertoggle = buildVimPluginFrom2Nix {
    pname = "nvim-numbertoggle";
    version = "2022-12-05";
    src = fetchurl {
      url = "https://github.com/sitiom/nvim-numbertoggle/archive/a3c65a6960a69aef97cb34b2791c7e3e8fa3236b.tar.gz";
      sha256 = "07mx1vd4l9rc8p0xznnrj7crpc6w55y3vxir9gfg572i8nkhxf80";
    };
    meta = with lib; {
      description = "Neovim plugin to automatically toggle between relative and absolute line numbers. Written in Lua";
      homepage = "https://github.com/sitiom/nvim-numbertoggle";
      license = with licenses; [ mit ];
    };
  };
  christmas-vim = buildVimPluginFrom2Nix {
    pname = "christmas-vim";
    version = "2021-12-24";
    src = fetchurl {
      url = "https://github.com/skanehira/christmas.vim/archive/f243b269787a8b638777fd48d3f392a4d6da8beb.tar.gz";
      sha256 = "0jnpcamc1yx2bwm05s55m397mnhhxj9j8ck2rzphlcqza3g31fz4";
    };
    meta = with lib; {
      description = "No description";
      homepage = "https://github.com/skanehira/christmas.vim";
    };
  };
  unruly-worker = buildVimPluginFrom2Nix {
    pname = "unruly-worker";
    version = "2022-03-22";
    src = fetchurl {
      url = "https://github.com/slugbyte/unruly-worker/archive/6046d8fedf84ee6cb344d4e248a74b4586cb6e14.tar.gz";
      sha256 = "1pcab6n484a28rk9h8dxg7xiq6rl5ml21j3wpqan8m38y420asld";
    };
    meta = with lib; {
      description = "A ridiculously fun alternative nvim keymap for the workman keyboard layout";
      homepage = "https://github.com/slugbyte/unruly-worker";
      license = with licenses; [ unlicense ];
    };
  };
  inc-rename-nvim = buildVimPluginFrom2Nix {
    pname = "inc-rename-nvim";
    version = "2022-11-04";
    src = fetchurl {
      url = "https://github.com/smjonas/inc-rename.nvim/archive/48c4aa2be19f79e79b465a9bb37ee9fbe6c606f5.tar.gz";
      sha256 = "0gcqcmaql3iv8p63db3pw1ra1h6xzv334whqs2vx2ba2v0gpa83q";
    };
    meta = with lib; {
      description = "Incremental LSP renaming based on Neovim's command-preview feature";
      homepage = "https://github.com/smjonas/inc-rename.nvim";
      license = with licenses; [ mit ];
    };
  };
  snippet-converter-nvim = buildVimPluginFrom2Nix {
    pname = "snippet-converter-nvim";
    version = "2022-11-09";
    src = fetchurl {
      url = "https://github.com/smjonas/snippet-converter.nvim/archive/059fb3d081a334853896d535534aaf0a53aced4f.tar.gz";
      sha256 = "0ff57y9lmzckb9miz97zc4h91ayqdahq681cp2dd0rszqww97kvi";
    };
    meta = with lib; {
      description = "Bundle snippets from multiple sources and convert them to your format of choice";
      homepage = "https://github.com/smjonas/snippet-converter.nvim";
      license = with licenses; [ mpl20 ];
    };
  };
  hydrovim = buildVimPluginFrom2Nix {
    pname = "hydrovim";
    version = "2022-11-13";
    src = fetchurl {
      url = "https://github.com/smzm/hydrovim/archive/2188f5a1ed05a05e2a4dab35398599aa314d9d6a.tar.gz";
      sha256 = "1jg7dqxacf28zhjgcr7wpl1gihw5z6n6d2d8s8rc3m41k35fv30m";
    };
    meta = with lib; {
      description = "➡️ Run python code inside Neovim ";
      homepage = "https://github.com/smzm/hydrovim";
    };
  };
  yaml-companion-nvim = buildVimPluginFrom2Nix {
    pname = "yaml-companion-nvim";
    version = "2022-11-06";
    src = fetchurl {
      url = "https://github.com/someone-stole-my-name/yaml-companion.nvim/archive/03f66e5e9c8b26a35b14593f24697f9a3bc64e48.tar.gz";
      sha256 = "0ymcmms3j6jyg8gfzshbqx4zgz3pg9lic6xhpyx0km3y0038inlg";
    };
    meta = with lib; {
      description = "Get, set and autodetect YAML schemas in your buffers";
      homepage = "https://github.com/someone-stole-my-name/yaml-companion.nvim";
      license = with licenses; [ mit ];
    };
  };
  startup-nvim = buildVimPluginFrom2Nix {
    pname = "startup-nvim";
    version = "2022-03-28";
    src = fetchurl {
      url = "https://github.com/startup-nvim/startup.nvim/archive/00bede05e89d9d11bf5e1e848f3d67a0fe7552a7.tar.gz";
      sha256 = "1lhlq3xpwl9h2ai8cfjn2js50hipksnz6vk4z20m4sryq9glkq28";
    };
    meta = with lib; {
      description = "A highly configurable neovim startup screen";
      homepage = "https://github.com/startup-nvim/startup.nvim";
      license = with licenses; [ gpl2Only ];
    };
  };
  gkeep-nvim = buildVimPluginFrom2Nix {
    pname = "gkeep-nvim";
    version = "2022-09-20";
    src = fetchurl {
      url = "https://github.com/stevearc/gkeep.nvim/archive/d388f03fba7c306c889362bd810e6c111d38c972.tar.gz";
      sha256 = "0aml7wncz5lf7lghbmzpzcrydnrs5g81mlxkzq3vpj6zfxnf5870";
    };
    meta = with lib; {
      description = "Google Keep integration for Neovim";
      homepage = "https://github.com/stevearc/gkeep.nvim";
      license = with licenses; [ mit ];
    };
  };
  overseer-nvim = buildVimPluginFrom2Nix {
    pname = "overseer-nvim";
    version = "2022-12-06";
    src = fetchurl {
      url = "https://github.com/stevearc/overseer.nvim/archive/358f0e5bb8600316fc790bd400aa5a507290affd.tar.gz";
      sha256 = "0662hh8yfmk81cr7ll3ybj3mjlry85pl9gvcgkiiyqw5wq1vsrb6";
    };
    meta = with lib; {
      description = "A task runner and job management plugin for Neovim";
      homepage = "https://github.com/stevearc/overseer.nvim";
      license = with licenses; [ mit ];
    };
  };
  qf-helper-nvim = buildVimPluginFrom2Nix {
    pname = "qf-helper-nvim";
    version = "2022-01-28";
    src = fetchurl {
      url = "https://github.com/stevearc/qf_helper.nvim/archive/84ca8af5f272a5c0e3ca30e287a0b9219e23a774.tar.gz";
      sha256 = "0mpk12cggraf5b20s19h43vfs9schxdh5lpayirmlb8my6f05axv";
    };
    meta = with lib; {
      description = "A collection of improvements for the quickfix buffer";
      homepage = "https://github.com/stevearc/qf_helper.nvim";
      license = with licenses; [ mit ];
    };
  };
  vim-yoink = buildVimPluginFrom2Nix {
    pname = "vim-yoink";
    version = "2021-09-15";
    src = fetchurl {
      url = "https://github.com/svermeulen/vim-yoink/archive/89ed6934679fdbc3c20f552b50b1f869f624cd22.tar.gz";
      sha256 = "1j46bd3kjmxmd2vd1dfvpy8wi694bs0khd43ji0qspgns9f0a20z";
    };
    meta = with lib; {
      description = "Vim plugin that maintains a yank history to cycle between when pasting";
      homepage = "https://github.com/svermeulen/vim-yoink";
      license = with licenses; [ mit ];
    };
  };
  vimpeccable = buildVimPluginFrom2Nix {
    pname = "vimpeccable";
    version = "2021-12-28";
    src = fetchurl {
      url = "https://github.com/svermeulen/vimpeccable/archive/bd19b2a86a3d4a0ee184412aa3edb7ed57025d56.tar.gz";
      sha256 = "0wgv655syxiqq1b4qbls2x6zgjj131q9plhd4sqy7shjybrmfl7h";
    };
    meta = with lib; {
      description = "Neovim plugin that allows you to easily map keys directly to lua code inside your init.lua";
      homepage = "https://github.com/svermeulen/vimpeccable";
      license = with licenses; [ mit ];
    };
  };
  smart-term-esc-nvim = buildVimPluginFrom2Nix {
    pname = "smart-term-esc-nvim";
    version = "2021-09-27";
    src = fetchurl {
      url = "https://github.com/sychen52/smart-term-esc.nvim/archive/168cd1a9e4649038e356b293005e5714e6e9f190.tar.gz";
      sha256 = "1lldf028a9a3a721avrwzai60msiaib30a18rsa98wa5fnvsi60j";
    };
    meta = with lib; {
      description = "Escape terminal \"smartly\" with <Esc> in Neovim";
      homepage = "https://github.com/sychen52/smart-term-esc.nvim";
    };
  };
  nlsp-settings-nvim = buildVimPluginFrom2Nix {
    pname = "nlsp-settings-nvim";
    version = "2022-12-09";
    src = fetchurl {
      url = "https://github.com/tamago324/nlsp-settings.nvim/archive/99382d02a1156851bc5285a8dca02ec5cc857946.tar.gz";
      sha256 = "0d1p0riy5n8nv7d3ficf090vc1g1gj3rs18pn8362ics9kcz88y6";
    };
    meta = with lib; {
      description = "A plugin for setting Neovim LSP with JSON or YAML files";
      homepage = "https://github.com/tamago324/nlsp-settings.nvim";
      license = with licenses; [ mit ];
    };
  };
  staline-nvim = buildVimPluginFrom2Nix {
    pname = "staline-nvim";
    version = "2022-11-13";
    src = fetchurl {
      url = "https://github.com/tamton-aquib/staline.nvim/archive/2eca8217b393cebbeed43fbcd426a6b4c1d4058a.tar.gz";
      sha256 = "00gq7527xxzambnspi4qs2bkrgnrqfhpy1p36pjp487z6lwiiq8g";
    };
    meta = with lib; {
      description = "A modern lightweight statusline and bufferline plugin for neovim in lua. Mainly uses unicode symbols for showing info";
      homepage = "https://github.com/tamton-aquib/staline.nvim";
      license = with licenses; [ mit ];
    };
  };
  monokai-nvim = buildVimPluginFrom2Nix {
    pname = "monokai-nvim";
    version = "2022-10-01";
    src = fetchurl {
      url = "https://github.com/tanvirtin/monokai.nvim/archive/6fb4f7fee6ce7106fbde36149eeec91e55751a22.tar.gz";
      sha256 = "1xd5jfiwlrx7f4akrjm14q3by0kp0qf3ks7pf23vjvn5ciryfraj";
    };
    meta = with lib; {
      description = "Monokai theme for Neovim written in Lua";
      homepage = "https://github.com/tanvirtin/monokai.nvim";
      license = with licenses; [ mit ];
    };
  };
  vgit-nvim = buildVimPluginFrom2Nix {
    pname = "vgit-nvim";
    version = "2022-11-01";
    src = fetchurl {
      url = "https://github.com/tanvirtin/vgit.nvim/archive/2989c6cfab6836c8f10cb71b73807902044772cd.tar.gz";
      sha256 = "0r38nlw4vy8gb7f556p6d2vvmx3qr5x3s9km484jm3jx7pyjr07f";
    };
    meta = with lib; {
      description = "Visual git plugin for Neovim";
      homepage = "https://github.com/tanvirtin/vgit.nvim";
      license = with licenses; [ mit ];
    };
  };
  vim-workspace = buildVimPluginFrom2Nix {
    pname = "vim-workspace";
    version = "2021-11-25";
    src = fetchurl {
      url = "https://github.com/thaerkh/vim-workspace/archive/c26b473f9b073f24bacecd38477f44c5cd1f5a62.tar.gz";
      sha256 = "073j8fprmrx5qvssqkmc7l9660y77cplbvf826nyjxvr03vhay4i";
    };
    meta = with lib; {
      description = "📑 Automated Vim session management with file auto-save and persistent undo history";
      homepage = "https://github.com/thaerkh/vim-workspace";
      license = with licenses; [ asl20 ];
    };
  };
  tailwindcss-colors-nvim = buildVimPluginFrom2Nix {
    pname = "tailwindcss-colors-nvim";
    version = "2021-12-24";
    src = fetchurl {
      url = "https://github.com/themaxmarchuk/tailwindcss-colors.nvim/archive/ccb5be2f84673c1a0ef90a0c0a76733e85e5265b.tar.gz";
      sha256 = "0f109vnqbd364x5zrgbr3v9mxl9b5qn5vf8p7kw0mlkr92rina8g";
    };
    meta = with lib; {
      description = "Highlights Tailwind CSS class names when @tailwindcss/language-server is connected";
      homepage = "https://github.com/themaxmarchuk/tailwindcss-colors.nvim";
      license = with licenses; [ mit ];
    };
  };
  themer-lua = buildVimPluginFrom2Nix {
    pname = "themer-lua";
    version = "2022-11-10";
    src = fetchurl {
      url = "https://github.com/ThemerCorp/themer.lua/archive/ec1e098eb81b8fe33befa40ddfd78b98fc6455d4.tar.gz";
      sha256 = "1hbdfwpvrbfszc078p2zdlp196mkswac463d6dmhy5rwkg43yyp9";
    };
    meta = with lib; {
      description = "A simple, minimal highlighter plugin for neovim";
      homepage = "https://github.com/ThemerCorp/themer.lua";
      license = with licenses; [ gpl3Only ];
    };
  };
  nvim-deus = buildVimPluginFrom2Nix {
    pname = "nvim-deus";
    version = "2021-08-26";
    src = fetchurl {
      url = "https://github.com/theniceboy/nvim-deus/archive/6baf3218d71bb52920887cb8f08c734ab94fe42f.tar.gz";
      sha256 = "1ypy9dp7j6g8148bcikwxxwaarw0pwa9adn743z6lv4672wbimqs";
    };
    meta = with lib; {
      description = "vim-deus with treesitter support";
      homepage = "https://github.com/theniceboy/nvim-deus";
    };
  };
  tokyodark-nvim = buildVimPluginFrom2Nix {
    pname = "tokyodark-nvim";
    version = "2022-10-21";
    src = fetchurl {
      url = "https://github.com/tiagovla/tokyodark.nvim/archive/9e940a11935b61da2fc2a170adca7b67eebcdc45.tar.gz";
      sha256 = "1svmm1ab3m0vjn8b0wnfzqccljiagyy6wdws1gwwrvm29qx76qp5";
    };
    meta = with lib; {
      description = "A clean dark theme written in lua for neovim";
      homepage = "https://github.com/tiagovla/tokyodark.nvim";
    };
  };
  zephyrium = buildVimPluginFrom2Nix {
    pname = "zephyrium";
    version = "2022-02-20";
    src = fetchurl {
      url = "https://github.com/titanzero/zephyrium/archive/c8f6c4b803c22aad7302be37a7bda3380f6e8e9c.tar.gz";
      sha256 = "1gdf3mp029fbglaaw9a3z763yxwawwpwdcwjlzmda5gficw6ig6z";
    };
    meta = with lib; {
      description = "A dark color scheme for Vim, based on Zephyr, written in Lua";
      homepage = "https://github.com/titanzero/zephyrium";
      license = with licenses; [ mit ];
    };
  };
  astronauta-nvim = buildVimPluginFrom2Nix {
    pname = "astronauta-nvim";
    version = "2021-11-09";
    src = fetchurl {
      url = "https://github.com/tjdevries/astronauta.nvim/archive/edc19d30a3c51a8c3fc3f606008e5b4238821f1e.tar.gz";
      sha256 = "061lqiy6l5sbcgdipr2g6mxa4br703kp0q2pb78ldrf5kikbhif5";
    };
    meta = with lib; {
      description = "You now feel at home traveling to the moon";
      homepage = "https://github.com/tjdevries/astronauta.nvim";
      license = with licenses; [ mit ];
    };
  };
  express-line-nvim = buildVimPluginFrom2Nix {
    pname = "express-line-nvim";
    version = "2021-12-01";
    src = fetchurl {
      url = "https://github.com/tjdevries/express_line.nvim/archive/30f04edb9647d9ea7c08d0bdbfad33faf5bcda57.tar.gz";
      sha256 = "0s9a4if9sr6rdhdkpg447j2r4r0mcq4gs7jsh5qg8jhdw2sxdpng";
    };
    meta = with lib; {
      description = "WIP: Statusline written in pure lua. Supports co-routines, functions and jobs";
      homepage = "https://github.com/tjdevries/express_line.nvim";
      license = with licenses; [ mit ];
    };
  };
  gruvbuddy-nvim = buildVimPluginFrom2Nix {
    pname = "gruvbuddy-nvim";
    version = "2021-04-15";
    src = fetchurl {
      url = "https://github.com/tjdevries/gruvbuddy.nvim/archive/52bdae82517d7767dbd287141b9aabceeab0f9a5.tar.gz";
      sha256 = "0vlsj2sbl1cgzz087b2v7ybf1hhq1vkdwd6v9iiyijvcdvgxx966";
    };
    meta = with lib; {
      description = "Gruvbox colors using https://github.com/tjdevries/colorbuddy.vim";
      homepage = "https://github.com/tjdevries/gruvbuddy.nvim";
      license = with licenses; [ mit ];
    };
  };
  vlog-nvim = buildVimPluginFrom2Nix {
    pname = "vlog-nvim";
    version = "2020-08-04";
    src = fetchurl {
      url = "https://github.com/tjdevries/vlog.nvim/archive/300e43f1628935aa9fec0560f3c7c483b3d38db2.tar.gz";
      sha256 = "15wvc90hs006l3yh93p1c7dc0zqqcgywdrcch4gy7sxbzc1hplw1";
    };
    meta = with lib; {
      description = "Single file, no dependency, easy copy & paste log file to add to your neovim lua plugins";
      homepage = "https://github.com/tjdevries/vlog.nvim";
      license = with licenses; [ mit ];
    };
  };
  peek-nvim = buildVimPluginFrom2Nix {
    pname = "peek-nvim";
    version = "2022-11-11";
    src = fetchurl {
      url = "https://github.com/toppair/peek.nvim/archive/18284b64f6c5103ccf18d6b53f288d2b2de2dc4a.tar.gz";
      sha256 = "1zyqbxyajynr4hzs8xm0w92f4ahhk4c53hrjdvmlszbg9zrry20z";
    };
    meta = with lib; {
      description = "Markdown preview plugin for Neovim";
      homepage = "https://github.com/toppair/peek.nvim";
      license = with licenses; [ mit ];
    };
  };
  reach-nvim = buildVimPluginFrom2Nix {
    pname = "reach-nvim";
    version = "2022-11-21";
    src = fetchurl {
      url = "https://github.com/toppair/reach.nvim/archive/f86830357941cca8a31f19601153087ea9524d22.tar.gz";
      sha256 = "0f35g9h3rfjfzgxr8b0759y8dkzhgdsagvbfh6q519q9q0bm1qs5";
    };
    meta = with lib; {
      description = "Buffer, mark, tabpage, colorscheme switcher for Neovim";
      homepage = "https://github.com/toppair/reach.nvim";
      license = with licenses; [ mit ];
    };
  };
  nvim-blame-line = buildVimPluginFrom2Nix {
    pname = "nvim-blame-line";
    version = "2022-05-04";
    src = fetchurl {
      url = "https://github.com/tveskag/nvim-blame-line/archive/b3d94f0ed5882d3d1c843c69788b9670476e1f42.tar.gz";
      sha256 = "11ysrhkfswi4vwwynk37xianjgi83g83clqglsm35lql9lf8qnqh";
    };
    meta = with lib; {
      description = "A small plugin that uses neovims virtual text to print git blame info at the end of the current line";
      homepage = "https://github.com/tveskag/nvim-blame-line";
      license = with licenses; [ mit ];
    };
  };
  hibiscus-nvim = buildVimPluginFrom2Nix {
    pname = "hibiscus-nvim";
    version = "2022-12-10";
    src = fetchurl {
      url = "https://github.com/udayvir-singh/hibiscus.nvim/archive/cffb437d8013336af1fc9e77ad051495a8cb1b37.tar.gz";
      sha256 = "047q24cpb1s4m2qzn1qrxndlxfzrz2bb79sqpfl2ssvnfn28sihb";
    };
    meta = with lib; {
      description = ":hibiscus: Flavored Fennel Macros for Neovim";
      homepage = "https://github.com/udayvir-singh/hibiscus.nvim";
      license = with licenses; [ mit ];
    };
  };
  tangerine-nvim = buildVimPluginFrom2Nix {
    pname = "tangerine-nvim";
    version = "2022-12-10";
    src = fetchurl {
      url = "https://github.com/udayvir-singh/tangerine.nvim/archive/4d47f809e98da3c64cdd7c8ca349dc9c7b12054b.tar.gz";
      sha256 = "1s6r5c406xidg6jrvhlj0np3hzbwadhqindyhfrspxa3fhfslfir";
    };
    meta = with lib; {
      description = "🍊 Sweet Fennel integration for Neovim";
      homepage = "https://github.com/udayvir-singh/tangerine.nvim";
      license = with licenses; [ mit ];
    };
  };
  ccc-nvim = buildVimPluginFrom2Nix {
    pname = "ccc-nvim";
    version = "2022-11-23";
    src = fetchurl {
      url = "https://github.com/uga-rosa/ccc.nvim/archive/db80a70d5fc66e0700bc7c05f19da45221851bd0.tar.gz";
      sha256 = "0c25yr8ycfykd1nj9ql6hzp40qfljygvgdsv1n3xd4yyidyc6fj9";
    };
    meta = with lib; {
      description = "Super powerful color picker / colorizer plugin";
      homepage = "https://github.com/uga-rosa/ccc.nvim";
      license = with licenses; [ mit ];
    };
  };
  barbecue-nvim = buildVimPluginFrom2Nix {
    pname = "barbecue-nvim";
    version = "2022-12-07";
    src = fetchurl {
      url = "https://github.com/utilyre/barbecue.nvim/archive/50b3c69a39f70d7b99661d82f37bb9b04eca25bd.tar.gz";
      sha256 = "14lqng5fz1hff3003dy92syjmjbp1w3pr85vqvzk5w1bmghg62x5";
    };
    meta = with lib; {
      description = "A VS Code like winbar for Neovim";
      homepage = "https://github.com/utilyre/barbecue.nvim";
      license = with licenses; [ mit ];
    };
  };
  complementree-nvim = buildVimPluginFrom2Nix {
    pname = "complementree-nvim";
    version = "2022-10-17";
    src = fetchurl {
      url = "https://github.com/vigoux/complementree.nvim/archive/cdc8253ae150a391a6e20b712d2d039d37087788.tar.gz";
      sha256 = "1v8kg9isvjq92b0jlb4maac0rzmhivbag6wqywhfw5mbgakn4khd";
    };
    meta = with lib; {
      description = "Tree-sitter powered syntax-aware completion framework";
      homepage = "https://github.com/vigoux/complementree.nvim";
      license = with licenses; [ bsd3 ];
    };
  };
  mason-nvim = buildVimPluginFrom2Nix {
    pname = "mason-nvim";
    version = "2022-12-10";
    src = fetchurl {
      url = "https://github.com/williamboman/mason.nvim/archive/e8bf53119572622f9c45c82f4ef9443a4d37df4b.tar.gz";
      sha256 = "1rhz3j384a75yq2gb4lmp846qi2hdk79f24zmdr5z47v7m31bzjz";
    };
    meta = with lib; {
      description = "Portable package manager for Neovim that runs everywhere Neovim runs. Easily install and manage LSP servers, DAP servers, linters, and formatters";
      homepage = "https://github.com/williamboman/mason.nvim";
      license = with licenses; [ asl20 ];
    };
  };
  nvim-lsp-installer = buildVimPluginFrom2Nix {
    pname = "nvim-lsp-installer";
    version = "2022-11-12";
    src = fetchurl {
      url = "https://github.com/williamboman/nvim-lsp-installer/archive/17e0bfa5f2c8854d1636fcd036dc8284db136baa.tar.gz";
      sha256 = "1ac0kmvy01a085rssly3zr9g0niwmzvif10y0i0b90z5nq7z3lif";
    };
    meta = with lib; {
      description = "Further development has moved to https://github.com/williamboman/mason.nvim!";
      homepage = "https://github.com/williamboman/nvim-lsp-installer";
      license = with licenses; [ asl20 ];
    };
  };
  nvim-projectconfig = buildVimPluginFrom2Nix {
    pname = "nvim-projectconfig";
    version = "2021-11-10";
    src = fetchurl {
      url = "https://github.com/windwp/nvim-projectconfig/archive/05fd34831e170db269d1b84597615bcdcdde930e.tar.gz";
      sha256 = "1xfh4vd01n1khnxiz6ywpbzj6nf5mkqxvr93f5brz2s90pnw3527";
    };
    meta = with lib; {
      description = "neovim projectconfig";
      homepage = "https://github.com/windwp/nvim-projectconfig";
      license = with licenses; [ mit ];
    };
  };
  nvim-spectre = buildVimPluginFrom2Nix {
    pname = "nvim-spectre";
    version = "2022-12-07";
    src = fetchurl {
      url = "https://github.com/nvim-pack/nvim-spectre/archive/c332c9c0574a531392818baf4020b86ba5575942.tar.gz";
      sha256 = "1yfgrljy60vb1ar67ydpzd7d1x2l10pf4hl1vybz7ypcvnp5laki";
    };
    meta = with lib; {
      description = "Find the enemy and replace them with dark power";
      homepage = "https://github.com/nvim-pack/nvim-spectre";
      license = with licenses; [ mit ];
    };
  };
  windline-nvim = buildVimPluginFrom2Nix {
    pname = "windline-nvim";
    version = "2022-11-27";
    src = fetchurl {
      url = "https://github.com/windwp/windline.nvim/archive/047c6175e7871cd17e79f1c53f923f6695370bbe.tar.gz";
      sha256 = "1jccqxiq6fv5zr9kwv0xhdfryy1mcnz7yxp85grhkqw2hz3cn6lx";
    };
    meta = with lib; {
      description = "Animation statusline, floating window statusline. Use lua + luv make some wind";
      homepage = "https://github.com/windwp/windline.nvim";
      license = with licenses; [ mit ];
    };
  };
  commented-nvim = buildVimPluginFrom2Nix {
    pname = "commented-nvim";
    version = "2022-03-12";
    src = fetchurl {
      url = "https://github.com/winston0410/commented.nvim/archive/be322c5ef455800984705cee97490a5450f072bc.tar.gz";
      sha256 = "15jg3z7iqxbrjayzxjjbl5539aqilhsdhz1pl1lgiwffh8asbx3s";
    };
    meta = with lib; {
      description = "Neovim commenting plugin in Lua. Support operator, motions and more than 60 languages! :fire:";
      homepage = "https://github.com/winston0410/commented.nvim";
      license = with licenses; [ mit ];
    };
  };
  sj-nvim = buildVimPluginFrom2Nix {
    pname = "sj-nvim";
    version = "2022-12-07";
    src = fetchurl {
      url = "https://github.com/woosaaahh/sj.nvim/archive/2e06233c2076390d6f9dab0f166667e8703a59c6.tar.gz";
      sha256 = "12s3h6pc8kg3njzsqjkad0iybs9p2l3sa32rjs4slh4cgv2yi20l";
    };
    meta = with lib; {
      description = "Search based navigation combined with quick jump features";
      homepage = "https://github.com/woosaaahh/sj.nvim";
      license = with licenses; [ mit ];
    };
  };
  competitest-nvim = buildVimPluginFrom2Nix {
    pname = "competitest-nvim";
    version = "2022-12-10";
    src = fetchurl {
      url = "https://github.com/xeluxee/competitest.nvim/archive/459cadd512c1f2514b0e69a4e691ab5383b15cf1.tar.gz";
      sha256 = "0wq6dnsgp7pr964bpqxq06m32hk7z4d61mfh0p389zmz9fwyqiwg";
    };
    meta = with lib; {
      description = "CompetiTest.nvim is a Neovim plugin to automate testcases management and checking for Competitive Programming";
      homepage = "https://github.com/xeluxee/competitest.nvim";
    };
  };
  link-visitor-nvim = buildVimPluginFrom2Nix {
    pname = "link-visitor-nvim";
    version = "2022-08-30";
    src = fetchurl {
      url = "https://github.com/xiyaowong/link-visitor.nvim/archive/d151a85a3b29251e8f1190b87e1b409425bbe313.tar.gz";
      sha256 = "096cshd6shg21prjcz6mi0icvlz5c05hgr26m66x738mjmg52g0v";
    };
    meta = with lib; {
      description = "Let me help you open the links!";
      homepage = "https://github.com/xiyaowong/link-visitor.nvim";
    };
  };
  nvim-cursorword = buildVimPluginFrom2Nix {
    pname = "nvim-cursorword";
    version = "2022-06-22";
    src = fetchurl {
      url = "https://github.com/xiyaowong/nvim-cursorword/archive/c0f2958ec729b47be2dba0d79ef43d005dac9f4e.tar.gz";
      sha256 = "05crhganvhi0ldnaxf2ixx8jmazv0im35rr72y6b7b1216iqwxsj";
    };
    meta = with lib; {
      description = "highlight the word under the cursor";
      homepage = "https://github.com/xiyaowong/nvim-cursorword";
    };
  };
  nvim-transparent = buildVimPluginFrom2Nix {
    pname = "nvim-transparent";
    version = "2022-07-11";
    src = fetchurl {
      url = "https://github.com/xiyaowong/nvim-transparent/archive/1a3d7d3b7670fecbbfddd3fc999ddea5862ac3c2.tar.gz";
      sha256 = "1z38816wvx3908fcaln90ca8x33qv4f4yhglgway2rnchbipprrl";
    };
    meta = with lib; {
      description = "Remove all background colors to make nvim transparent";
      homepage = "https://github.com/xiyaowong/nvim-transparent";
    };
  };
  virtcolumn-nvim = buildVimPluginFrom2Nix {
    pname = "virtcolumn-nvim";
    version = "2022-08-13";
    src = fetchurl {
      url = "https://github.com/xiyaowong/virtcolumn.nvim/archive/cd9485d64a0763c5572272e03d70cbff1f91fde0.tar.gz";
      sha256 = "0vizmfk28ahfi89dzqg7ag3j7frp7yhjsllcyryfaiv6hvviqa60";
    };
    meta = with lib; {
      description = "Display a line as the colorcolumn";
      homepage = "https://github.com/xiyaowong/virtcolumn.nvim";
    };
  };
  nvim-hlchunk = buildVimPluginFrom2Nix {
    pname = "nvim-hlchunk";
    version = "2022-09-19";
    src = fetchurl {
      url = "https://github.com/yaocccc/nvim-hlchunk/archive/95b85972ee92a874ae98cbfc4a2809f8e87d4bee.tar.gz";
      sha256 = "0vwbp9chdqy5hrci14fg8j5gs50z4pgbzfqp90d78x241mi82acw";
    };
    meta = with lib; {
      description = "hignlight chunk numbercolumn plug of nvim";
      homepage = "https://github.com/yaocccc/nvim-hlchunk";
      license = with licenses; [ mit ];
    };
  };
  nvim-lines-lua = buildVimPluginFrom2Nix {
    pname = "nvim-lines-lua";
    version = "2022-10-19";
    src = fetchurl {
      url = "https://github.com/yaocccc/nvim-lines.lua/archive/8821b26e08c98973cdb21ca3b969a0690d6a7ad3.tar.gz";
      sha256 = "0x22xy0kqynh8qg0lkchp2jyyz027hijr6lml8ijdzw9v03a0034";
    };
    meta = with lib; {
      description = "a neovim statusline & tabline plug";
      homepage = "https://github.com/yaocccc/nvim-lines.lua";
      license = with licenses; [ mit ];
    };
  };
  calvera-dark-nvim = buildVimPluginFrom2Nix {
    pname = "calvera-dark-nvim";
    version = "2021-08-13";
    src = fetchurl {
      url = "https://github.com/hoppercomplex/calvera-dark.nvim/archive/84802d0bde047ce79ebfddc1800800f0bd67f37a.tar.gz";
      sha256 = "0pjaz7bhn5lcv8qmpzhg35h0ml4867lcnkqfrw4xn0402khsjgca";
    };
    meta = with lib; {
      description = "Calvera Dark Colorscheme for Neovim written in Lua with built-in support for native LSP, TreeSitter and many more plugins";
      homepage = "https://github.com/hoppercomplex/calvera-dark.nvim";
      license = with licenses; [ gpl2Only ];
    };
  };
  minimal-nvim = buildVimPluginFrom2Nix {
    pname = "minimal-nvim";
    version = "2022-11-03";
    src = fetchurl {
      url = "https://github.com/Yazeed1s/minimal.nvim/archive/22d837b814d3bd22625640ef63cc73b8507f291d.tar.gz";
      sha256 = "0pn4vi8njcqdpnxzbws9rndxm5vj9xn7qzcjzp2ih6pg5fbq1was";
    };
    meta = with lib; {
      description = "No description";
      homepage = "https://github.com/Yazeed1s/minimal.nvim";
    };
  };
  omni-vim = buildVimPluginFrom2Nix {
    pname = "omni-vim";
    version = "2022-06-17";
    src = fetchurl {
      url = "https://github.com/yonlu/omni.vim/archive/6c0f3015b1d6f2ae59c12cc380c629b965d3dc62.tar.gz";
      sha256 = "1g6vbis3nanzj1v7sz7f7x1kqcsjn5jj7aic3h0s8j7c4sx2p75s";
    };
    meta = with lib; {
      description = "🎨 Omni color scheme for Neovim";
      homepage = "https://github.com/yonlu/omni.vim";
    };
  };
  nvim-pqf = buildVimPluginFrom2Nix {
    pname = "nvim-pqf";
    version = "2022-10-23";
    src = fetchurl {
      url = "https://gitlab.com/api/v4/projects/yorickpeterse%2Fnvim-pqf/repository/archive.tar.gz?sha=d15582d3d0c09280f371fa5f21537cf4530ed330";
      sha256 = "1vwfd2kyfjl992zr4qsf1lnrcw02ng6wc2gfq7bxbm5wrx5b1a1z";
    };
    meta = with lib; {
      description = "Prettier quickfix/location list windows for NeoVim";
      homepage = "https://gitlab.com/yorickpeterse/nvim-pqf";
    };
  };
  nvim-window = buildVimPluginFrom2Nix {
    pname = "nvim-window";
    version = "2022-03-23";
    src = fetchurl {
      url = "https://gitlab.com/api/v4/projects/yorickpeterse%2Fnvim-window/repository/archive.tar.gz?sha=dd0a6b230003ef35524853d71e5413f88fd2ba74";
      sha256 = "0q745ynvk6pmv5ndi8hykwm09mc9z9ib52dipa3fsz3jmi4gmm7m";
    };
    meta = with lib; {
      description = "Easily jump between NeoVim windows";
      homepage = "https://gitlab.com/yorickpeterse/nvim-window";
    };
  };
  copilot-cmp = buildVimPluginFrom2Nix {
    pname = "copilot-cmp";
    version = "2022-10-12";
    src = fetchurl {
      url = "https://github.com/zbirenbaum/copilot-cmp/archive/84d5a0e8e4d1638e7554899cb7b642fa24cf463f.tar.gz";
      sha256 = "1hqj64k9xyp1ih9pqc9rbjqn7s9pxs9j0997wmsvppf2bigj4sgq";
    };
    meta = with lib; {
      description = "Lua plugin to turn github copilot into a cmp source";
      homepage = "https://github.com/zbirenbaum/copilot-cmp";
      license = with licenses; [ mit ];
    };
  };
  neodim = buildVimPluginFrom2Nix {
    pname = "neodim";
    version = "2022-11-02";
    src = fetchurl {
      url = "https://github.com/zbirenbaum/neodim/archive/c346344ade2ce709e6bd282f10e43778672b861e.tar.gz";
      sha256 = "0gisbmdl2mahfacpfirrcs9dhlbk9qr10r3gi0mi6nwd7nhhxgkm";
    };
    meta = with lib; {
      description = "Neovim plugin for dimming the highlights of unused functions, variables, parameters, and more";
      homepage = "https://github.com/zbirenbaum/neodim";
    };
  };
  color-picker-nvim = buildVimPluginFrom2Nix {
    pname = "color-picker-nvim";
    version = "2022-08-16";
    src = fetchurl {
      url = "https://github.com/ziontee113/color-picker.nvim/archive/2b4a4a408278271909e3eb13fe0715f856c7b4d8.tar.gz";
      sha256 = "0d3q37xxs2bn8ncf36vx8cng8vp5gidg89bd28yywixv289nxdnx";
    };
    meta = with lib; {
      description = "A powerful Neovim plugin that lets users choose & modify RGB/HSL/HEX colors. ";
      homepage = "https://github.com/ziontee113/color-picker.nvim";
      license = with licenses; [ mit ];
    };
  };
  icon-picker-nvim = buildVimPluginFrom2Nix {
    pname = "icon-picker-nvim";
    version = "2022-08-28";
    src = fetchurl {
      url = "https://github.com/ziontee113/icon-picker.nvim/archive/0f3b2648f6f8e788bc8dfe37bc9bb18b565cfc3c.tar.gz";
      sha256 = "1a2mfd311bi9z19japb82am84wq5yk893y78qvi4q4z91lvw8vkf";
    };
    meta = with lib; {
      description = "This is a Neovim plugin that helps you pick Nerd Font Icons, Symbols & Emojis";
      homepage = "https://github.com/ziontee113/icon-picker.nvim";
      license = with licenses; [ mit ];
    };
  };
  syntax-tree-surfer = buildVimPluginFrom2Nix {
    pname = "syntax-tree-surfer";
    version = "2022-09-18";
    src = fetchurl {
      url = "https://github.com/ziontee113/syntax-tree-surfer/archive/d6d518f48dcc4441b11ee3e6cefd48fa1e09568a.tar.gz";
      sha256 = "1ry94ylf8c0qm9z1dsvp7p4qililad28gpxgdj28yif38qly5gl9";
    };
    meta = with lib; {
      description = "A plugin for Neovim that helps you surf through your document and move elements around using the nvim-treesitter API";
      homepage = "https://github.com/ziontee113/syntax-tree-surfer";
      license = with licenses; [ mit ];
    };
  };
}
