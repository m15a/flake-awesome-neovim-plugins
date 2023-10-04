{ lib, buildVimPluginFrom2Nix, fetchurl, fetchgit }:

{
  visual-nvim = buildVimPluginFrom2Nix {
    pname = "visual-nvim";
    version = "2023-09-02";
    src = fetchurl {
      url = "https://github.com/00sapo/visual.nvim/archive/189baea92b78c1b3ba63e5012ed4550a8c3dae50.tar.gz";
      sha256 = "0c49gv9ns8jvb94mkvfbhmj1pqkkf6899wyrnwccw63xgwjncjmi";
    };
    meta = with lib; {
      description = "First select, then edit. A helix/kakoune-like editing in neovim";
      homepage = "https://github.com/00sapo/visual.nvim";
      license = with licenses; [ gpl3Only ];
    };
  };
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
  vitesse-nvim = buildVimPluginFrom2Nix {
    pname = "vitesse-nvim";
    version = "2023-07-12";
    src = fetchurl {
      url = "https://github.com/2nthony/vitesse.nvim/archive/1fd79ce42185e81e5396d2b8fb563dfaec477bfc.tar.gz";
      sha256 = "079as5q5kv631hsq9gh9p7dzc4fkrq3mbfniqxa6p1h1068vwjbf";
    };
    meta = with lib; {
      description = "Vitesse theme for neovim in Lua using colorbuddy";
      homepage = "https://github.com/2nthony/vitesse.nvim";
    };
  };
  darkman-nvim = buildVimPluginFrom2Nix {
    pname = "darkman-nvim";
    version = "2023-10-01";
    src = fetchurl {
      url = "https://github.com/4e554c4c/darkman.nvim/archive/ca2b3b39d52a20c6f1ed01974561900d68204b19.tar.gz";
      sha256 = "0a58cwy7pfzlapx9ay3zbaqyx64zwj9sxn31nr414ljc069r2ba5";
    };
    meta = with lib; {
      description = "A neovim plugin for interfacing with the freedesktop dark mode standard";
      homepage = "https://github.com/4e554c4c/darkman.nvim";
      license = with licenses; [ mit ];
    };
  };
  repolink-nvim = buildVimPluginFrom2Nix {
    pname = "repolink-nvim";
    version = "2023-09-11";
    src = fetchurl {
      url = "https://github.com/9seconds/repolink.nvim/archive/a8b35579ce497f7cebb785bc35095d709d021721.tar.gz";
      sha256 = "0vc664sznhks8l3rq61v7chjky1dcrp84yvwbzxacw6zjjz0cvjb";
    };
    meta = with lib; {
      description = "Create HTTP permalinks to your Git web frontend hosts";
      homepage = "https://github.com/9seconds/repolink.nvim";
      license = with licenses; [ mit ];
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
    version = "2023-07-20";
    src = fetchurl {
      url = "https://github.com/AckslD/messages.nvim/archive/24dbb56829d1ed2d8d878e9f5547478441838567.tar.gz";
      sha256 = "0548hkrgwdabrkll028snzw8dsi4v40si41x6gdh51qwm8qbrqws";
    };
    meta = with lib; {
      description = "Capture and show any messages in a customisable (floating) buffer";
      homepage = "https://github.com/AckslD/messages.nvim";
    };
  };
  muren-nvim = buildVimPluginFrom2Nix {
    pname = "muren-nvim";
    version = "2023-08-26";
    src = fetchurl {
      url = "https://github.com/AckslD/muren.nvim/archive/818c09097dba1322b2ca099e35f7471feccfef93.tar.gz";
      sha256 = "15yhbls476scx2x1xvlwfqwk4i0fn6vdn6w35ck2s1wxh3rdy0c6";
    };
    meta = with lib; {
      description = "Multiple replacements in neovim";
      homepage = "https://github.com/AckslD/muren.nvim";
    };
  };
  nvim-FeMaco-lua = buildVimPluginFrom2Nix {
    pname = "nvim-FeMaco-lua";
    version = "2023-08-28";
    src = fetchurl {
      url = "https://github.com/AckslD/nvim-FeMaco.lua/archive/c4e9c71c9ca595772a360435bdf91bee3f9d32b1.tar.gz";
      sha256 = "1hhjlipnrmcjm60rpy8fk7gbc417yf88bfchlfvp1lhfmvgy9ihv";
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
    version = "2023-05-19";
    src = fetchurl {
      url = "https://github.com/AckslD/swenv.nvim/archive/08aea3e8809ab00dfcab3cebb466dcb8001ad162.tar.gz";
      sha256 = "0025y4qy93cpbraz641d3mgmil4wp61hfpgkcvj1z01ikj78q330";
    };
    meta = with lib; {
      description = "Tiny plugin to quickly switch python virtual environments from within neovim without restarting";
      homepage = "https://github.com/AckslD/swenv.nvim";
    };
  };
  nordic-nvim = buildVimPluginFrom2Nix {
    pname = "nordic-nvim";
    version = "2023-09-26";
    src = fetchurl {
      url = "https://github.com/AlexvZyl/nordic.nvim/archive/be1bab59c56668af7020af11190ec7fcd25d59b4.tar.gz";
      sha256 = "0i50mqcbhbdldpd13gmi5v98wp15ilhbdiv2z422zyp8n7fbraix";
    };
    meta = with lib; {
      description = "🌒  Nord for Neovim, but warmer and darker.  Supports a variety of plugins and other platforms";
      homepage = "https://github.com/AlexvZyl/nordic.nvim";
      license = with licenses; [ mit ];
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
  deadcolumn-nvim = buildVimPluginFrom2Nix {
    pname = "deadcolumn-nvim";
    version = "2023-06-03";
    src = fetchurl {
      url = "https://github.com/Bekaboo/deadcolumn.nvim/archive/b9b5e237371ae5379e280e4df9ecf62e4bc8d7a5.tar.gz";
      sha256 = "098cpm3rzcmrjvxx0b82x9d6mpxf1hrf96dnwcz1qiz169v04l58";
    };
    meta = with lib; {
      description = "A neovim plugin that shows colorcolumn dynamically";
      homepage = "https://github.com/Bekaboo/deadcolumn.nvim";
      license = with licenses; [ gpl3Only ];
    };
  };
  code-runner-nvim = buildVimPluginFrom2Nix {
    pname = "code-runner-nvim";
    version = "2023-05-25";
    src = fetchurl {
      url = "https://github.com/CRAG666/code_runner.nvim/archive/01ce754d162170a3fcf372ad9f188a65c010f235.tar.gz";
      sha256 = "17i1y37kv3xqqrarm2143yigs889sj45spgkv2jdd6f0h2mzba2d";
    };
    meta = with lib; {
      description = "Neovim plugin.The best code runner you could have, it is like the one in vscode but with super powers, it manages projects like in intellij but without being slow";
      homepage = "https://github.com/CRAG666/code_runner.nvim";
      license = with licenses; [ mit ];
    };
  };
  flyboy = buildVimPluginFrom2Nix {
    pname = "flyboy";
    version = "2023-09-04";
    src = fetchurl {
      url = "https://github.com/CamdenClark/flyboy/archive/e8ef3be75e2b6c505d50615cbd93c1de36f7509d.tar.gz";
      sha256 = "1c8z639nq0xsg6h5wrb3rpaj27zk1shgvmk73mwj3b6k412bq4p3";
    };
    meta = with lib; {
      description = "a lightweight ChatGPT plugin for neovim";
      homepage = "https://github.com/CamdenClark/flyboy";
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
    version = "2023-10-02";
    src = fetchurl {
      url = "https://github.com/Civitasv/cmake-tools.nvim/archive/40a06124961b2b319cca53fb2a53a1cecc2fbaa3.tar.gz";
      sha256 = "04cwpni1k5924rilihgmzqrppxb4x6zyl730xdi5mjw5pm1q0qn9";
    };
    meta = with lib; {
      description = "CMake integration in Neovim";
      homepage = "https://github.com/Civitasv/cmake-tools.nvim";
      license = with licenses; [ gpl3Only ];
    };
  };
  cosmic-ui = buildVimPluginFrom2Nix {
    pname = "cosmic-ui";
    version = "2022-12-30";
    src = fetchurl {
      url = "https://github.com/CosmicNvim/cosmic-ui/archive/c0b14531999f2bfef3d927c4dcd57a1a8fed5ee9.tar.gz";
      sha256 = "0zl1kwffmf3vlwv39v92nyj847ipb7g4snjz7dmz4af94w0wq2n1";
    };
    meta = with lib; {
      description = "Cosmic-UI is a simple wrapper around specific vim functionality. Built in order to provide a quick and easy way to create a Cosmic UI experience with Neovim!";
      homepage = "https://github.com/CosmicNvim/cosmic-ui";
      license = with licenses; [ gpl3Only ];
    };
  };
  indent-o-matic = buildVimPluginFrom2Nix {
    pname = "indent-o-matic";
    version = "2023-06-03";
    src = fetchurl {
      url = "https://github.com/Darazaki/indent-o-matic/archive/4d11e98f523d3c4500b1dc33f0d1a248a4f69719.tar.gz";
      sha256 = "126s0vxkvz3v1hmj1ziyqb73r2ia5d606g7hrjwnbbpwkhgmf9jn";
    };
    meta = with lib; {
      description = "Dumb automatic fast indentation detection for Neovim written in Lua";
      homepage = "https://github.com/Darazaki/indent-o-matic";
      license = with licenses; [ mit ];
    };
  };
  jester = buildVimPluginFrom2Nix {
    pname = "jester";
    version = "2023-06-01";
    src = fetchurl {
      url = "https://github.com/David-Kunz/jester/archive/424b96970ac49da7b1298502e03143a8f11d5bcf.tar.gz";
      sha256 = "03fwh88p7pgci871fnc0g9nbhivn4775w5564l8qi7d7p3awanzz";
    };
    meta = with lib; {
      description = "A Neovim plugin to easily run and debug Jest tests";
      homepage = "https://github.com/David-Kunz/jester";
      license = with licenses; [ unlicense ];
    };
  };
  Leetbuddy-nvim = buildVimPluginFrom2Nix {
    pname = "Leetbuddy-nvim";
    version = "2023-08-27";
    src = fetchurl {
      url = "https://github.com/Dhanus3133/Leetbuddy.nvim/archive/fd689478cb192908204985e4630066074f73034c.tar.gz";
      sha256 = "17ih4rabskfgdmc7algq1q49gn380z961jh7zvv3nrj22fyj22a3";
    };
    meta = with lib; {
      description = "Solve Leetcode problems within Neovim 🔥";
      homepage = "https://github.com/Dhanus3133/Leetbuddy.nvim";
      license = with licenses; [ mit ];
    };
  };
  cellular-automaton-nvim = buildVimPluginFrom2Nix {
    pname = "cellular-automaton-nvim";
    version = "2023-09-01";
    src = fetchurl {
      url = "https://github.com/Eandrju/cellular-automaton.nvim/archive/b7d056dab963b5d3f2c560d92937cb51db61cb5b.tar.gz";
      sha256 = "1q5jld30caa67zk4dasya399f9n8cjr43lbr4zrgkkhqfvzz86ba";
    };
    meta = with lib; {
      description = "A useless plugin that might help you cope with stubbornly broken tests or overall lack of sense in life. It lets you execute aesthetically pleasing, cellular automaton animations based on the content of neovim buffer";
      homepage = "https://github.com/Eandrju/cellular-automaton.nvim";
      license = with licenses; [ mit ];
    };
  };
  vs-tasks-nvim = buildVimPluginFrom2Nix {
    pname = "vs-tasks-nvim";
    version = "2023-06-02";
    src = fetchurl {
      url = "https://github.com/EthanJWright/vs-tasks.nvim/archive/82b921f15a23b7e5655e52f4b8880de4c29c0ea0.tar.gz";
      sha256 = "07vi6qxrmvc8afph7wd5wrvy9qccazi77knr4kk1px5jl3xa79ij";
    };
    meta = with lib; {
      description = "A telescope plugin that runs tasks similar to VS Code's task implementation";
      homepage = "https://github.com/EthanJWright/vs-tasks.nvim";
    };
  };
  nvim = buildVimPluginFrom2Nix {
    pname = "nvim";
    version = "2023-05-11";
    src = fetchurl {
      url = "https://github.com/Everblush/nvim/archive/9a0e695fdd57b340d3ba2b72406e3ca519029f25.tar.gz";
      sha256 = "178mw1qi0p2x74mccigjh48ngnrwx7lmamx8wcl01gcn2gswmizb";
    };
    meta = with lib; {
      description = "A port of everblush.vim but written in lua";
      homepage = "https://github.com/Everblush/nvim";
      license = with licenses; [ mit ];
    };
  };
  commander-nvim = buildVimPluginFrom2Nix {
    pname = "commander-nvim";
    version = "2023-09-11";
    src = fetchurl {
      url = "https://github.com/FeiyouG/commander.nvim/archive/4b325d0b8ce1c7d441238f0ab8e0d4dc3b65b3f8.tar.gz";
      sha256 = "10nxv05x6vmm7bcjys19dvdlc63s46b31l2imy9vk594jdv8zj94";
    };
    meta = with lib; {
      description = "Create and manage keybindings and commands in a more organized manner, and search them quickly through Telescope";
      homepage = "https://github.com/FeiyouG/commander.nvim";
      license = with licenses; [ mit ];
    };
  };
  aquarium-vim = buildVimPluginFrom2Nix {
    pname = "aquarium-vim";
    version = "2023-02-12";
    src = fetchurl {
      url = "https://github.com/FrenzyExists/aquarium-vim/archive/d09b1feda1148797aa5ff0dbca8d8e3256d028d5.tar.gz";
      sha256 = "0bx4rglpaw9n8nhwiwfwdlc7nvw9lgcmkq8dqqqwbg3jfan2sicy";
    };
    meta = with lib; {
      description = "🌊 Aquarium, a simple vibrant dark theme for vim 🗒";
      homepage = "https://github.com/FrenzyExists/aquarium-vim";
      license = with licenses; [ mit ];
    };
  };
  rasi-vim = buildVimPluginFrom2Nix {
    pname = "rasi-vim";
    version = "2023-02-08";
    src = fetchurl {
      url = "https://github.com/Fymyte/rasi.vim/archive/eac9969cf935cd4380987dc99bfa10d69d3f34a6.tar.gz";
      sha256 = "07i242rk3a9f15avqy1inncq1bbrd29w6mpphnrh4gylkn393x6k";
    };
    meta = with lib; {
      description = "Rofi config syntax highlighting for vim";
      homepage = "https://github.com/Fymyte/rasi.vim";
      license = with licenses; [ mit ];
    };
  };
  NotebookNavigator-nvim = buildVimPluginFrom2Nix {
    pname = "NotebookNavigator-nvim";
    version = "2023-09-26";
    src = fetchurl {
      url = "https://github.com/GCBallesteros/NotebookNavigator.nvim/archive/42f44e2e05070d854466aff7146f0441e5d78d3f.tar.gz";
      sha256 = "1zv7hnvsqs8jrwf2jxm76vbfaajm0prsgc94jk1wg2h5axxbwnjc";
    };
    meta = with lib; {
      description = "A neovim plugin to navigate and execute code cells";
      homepage = "https://github.com/GCBallesteros/NotebookNavigator.nvim";
    };
  };
  rainbow-delimiters-nvim = buildVimPluginFrom2Nix {
    pname = "rainbow-delimiters-nvim";
    version = "2023-10-03";
    src = fetchurl {
      url = "https://github.com/HiPhish/rainbow-delimiters.nvim/archive/652345bd1aa333f60c9cbb1259f77155786e5514.tar.gz";
      sha256 = "15vi1jhmpj7plkyavmixi84f81z0p1v8g18m79gaszbiivsvzz6q";
    };
    meta = with lib; {
      description = "Rainbow delimiters for Neovim with Tree-sitter";
      homepage = "https://github.com/HiPhish/rainbow-delimiters.nvim";
      license = with licenses; [ asl20 ];
    };
  };
  obs-nvim = buildVimPluginFrom2Nix {
    pname = "obs-nvim";
    version = "2023-09-05";
    src = fetchurl {
      url = "https://github.com/IlyasYOY/obs.nvim/archive/6d77193d48b6cbd4aca1d2a560c43cc2b0ee9fbf.tar.gz";
      sha256 = "0ham7f2wphsppp15y0889x0s1xmspvg3g5hvc7fdfi5jqcsx8q9g";
    };
    meta = with lib; {
      description = "Obsidian-like NeoVim plugin";
      homepage = "https://github.com/IlyasYOY/obs.nvim";
      license = with licenses; [ asl20 ];
    };
  };
  nvim-cartographer = buildVimPluginFrom2Nix {
    pname = "nvim-cartographer";
    version = "2023-06-19";
    src = fetchurl {
      url = "https://github.com/Iron-E/nvim-cartographer/archive/7bc643d48eae0c29dcea0d875d8f390e0f9f925b.tar.gz";
      sha256 = "1m1gvwvrqb4nfkk1c1xjrr5181r3qqqlybjxc92fgqc18ks34ga9";
    };
    meta = with lib; {
      description = "Create Neovim `:map`pings in Lua with ease!";
      homepage = "https://github.com/Iron-E/nvim-cartographer";
    };
  };
  nvim-ts-context-commentstring = buildVimPluginFrom2Nix {
    pname = "nvim-ts-context-commentstring";
    version = "2023-09-30";
    src = fetchurl {
      url = "https://github.com/JoosepAlviste/nvim-ts-context-commentstring/archive/0c136439fb93fd94db9106250ff6f6858101422b.tar.gz";
      sha256 = "08nifxw6qsrj7fjsjlkl0jj1lzphqvkbknwpyr8v0ajnp4lcpkgn";
    };
    meta = with lib; {
      description = "Neovim treesitter plugin for setting the commentstring based on the cursor location in a file";
      homepage = "https://github.com/JoosepAlviste/nvim-ts-context-commentstring";
      license = with licenses; [ mit ];
    };
  };
  lsp-setup-nvim = buildVimPluginFrom2Nix {
    pname = "lsp-setup-nvim";
    version = "2023-09-20";
    src = fetchurl {
      url = "https://github.com/junnplus/lsp-setup.nvim/archive/7276e54faf4af909b6ea171975fd4179ebe65cec.tar.gz";
      sha256 = "0xvgdflwnzlswk877wwbclfz2fj7s00asdhvln8ij7q5mk3zm66r";
    };
    meta = with lib; {
      description = "A simple wrapper for nvim-lspconfig and mason-lspconfig to easily setup LSP servers";
      homepage = "https://github.com/junnplus/lsp-setup.nvim";
      license = with licenses; [ asl20 ];
    };
  };
  nvim-custom-diagnostic-highlight = buildVimPluginFrom2Nix {
    pname = "nvim-custom-diagnostic-highlight";
    version = "2023-05-09";
    src = fetchurl {
      url = "https://github.com/Kasama/nvim-custom-diagnostic-highlight/archive/c126fa5b44a21df779c36eea28e73d3f89e85801.tar.gz";
      sha256 = "0y77mi70214sb8lq6k35y7azqlzn28rvk439q1dps3w3hc05jpn1";
    };
    meta = with lib; {
      description = "Simple plugin to add Highlights based on diagnostics";
      homepage = "https://github.com/Kasama/nvim-custom-diagnostic-highlight";
      license = with licenses; [ mit ];
    };
  };
  LuaSnip = buildVimPluginFrom2Nix {
    pname = "LuaSnip";
    version = "2023-10-03";
    src = fetchurl {
      url = "https://github.com/L3MON4D3/LuaSnip/archive/6085dfd1808fb0059e13d160317a10c3a68c5407.tar.gz";
      sha256 = "0ncjvnfgf25sr5gbxqpz8vf856w39k9rmw8ayyxrqvhmqawx6ag7";
    };
    meta = with lib; {
      description = "Snippet Engine for Neovim written in Lua";
      homepage = "https://github.com/L3MON4D3/LuaSnip";
      license = with licenses; [ asl20 ];
    };
  };
  trailblazer-nvim = buildVimPluginFrom2Nix {
    pname = "trailblazer-nvim";
    version = "2023-04-08";
    src = fetchurl {
      url = "https://github.com/LeonHeidelbach/trailblazer.nvim/archive/674bb6254a376a234d0d243366224122fc064eab.tar.gz";
      sha256 = "1dm2qq544gl2vpz2qzlb76mmvhh6mrxf3j5a13qa5hs5hisdpzws";
    };
    meta = with lib; {
      description = "TrailBlazer enables you to seemlessly move through important project marks as quickly and efficiently as possible to make your workflow blazingly fast ™";
      homepage = "https://github.com/LeonHeidelbach/trailblazer.nvim";
      license = with licenses; [ gpl3Only ];
    };
  };
  telescope-command-palette-nvim = buildVimPluginFrom2Nix {
    pname = "telescope-command-palette-nvim";
    version = "2023-08-24";
    src = fetchurl {
      url = "https://github.com/LinArcX/telescope-command-palette.nvim/archive/cf38d89446ff36d07191d32796eed6e38e5ce118.tar.gz";
      sha256 = "1nzkfiqs8zsa3a1rbk48c82ap7vfy2l07cxyq38b5v0bawhasa6y";
    };
    meta = with lib; {
      description = "Create key-bindings and watch them with telescope :telescope:";
      homepage = "https://github.com/LinArcX/telescope-command-palette.nvim";
      license = with licenses; [ gpl3Only ];
    };
  };
  scratch-nvim = buildVimPluginFrom2Nix {
    pname = "scratch-nvim";
    version = "2023-08-22";
    src = fetchurl {
      url = "https://github.com/LintaoAmons/scratch.nvim/archive/5bc4beee9014ad201e3fbdc01340d7fecccc9ca2.tar.gz";
      sha256 = "0f745m7fzn0ch8z73bi9yp771qy2w93cm4izlh325xmzsb0mlfbi";
    };
    meta = with lib; {
      description = "Help you to create tmp playground files, which can be found later,  with one stroke and without worrying about what's the filename and where to put it";
      homepage = "https://github.com/LintaoAmons/scratch.nvim";
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
  SingleComment-nvim = buildVimPluginFrom2Nix {
    pname = "SingleComment-nvim";
    version = "2023-07-10";
    src = fetchurl {
      url = "https://github.com/LucasTavaresA/SingleComment.nvim/archive/a80bb25c2e904410aee73ab02d7ee64d936a676a.tar.gz";
      sha256 = "1hvgz4gcy6dzvrivcvhvl456b9gdx869hlypp3z748jf81390f8i";
    };
    meta = with lib; {
      description = "Always single line, comment sensitive, indentation preserving commenting";
      homepage = "https://github.com/LucasTavaresA/SingleComment.nvim";
      license = with licenses; [ gpl3Only ];
    };
  };
  simpleIndentGuides-nvim = buildVimPluginFrom2Nix {
    pname = "simpleIndentGuides-nvim";
    version = "2023-01-10";
    src = fetchurl {
      url = "https://github.com/LucasTavaresA/simpleIndentGuides.nvim/archive/c97ef79558352b882d1db1f3786f388af4b957b5.tar.gz";
      sha256 = "02afk77v131i5lqlzfg37j3rrk78nr945n88nyl35i3fsdhwpp9j";
    };
    meta = with lib; {
      description = "Indentation guides using the builtin variables";
      homepage = "https://github.com/LucasTavaresA/simpleIndentGuides.nvim";
      license = with licenses; [ gpl3Only ];
    };
  };
  comment-box-nvim = buildVimPluginFrom2Nix {
    pname = "comment-box-nvim";
    version = "2023-07-20";
    src = fetchurl {
      url = "https://github.com/LudoPinelli/comment-box.nvim/archive/dd1a48f8d06102e9b87ae1e0069bc365c006979b.tar.gz";
      sha256 = "0agp3md1gk3k7z68dla7lhsdnvxdpvb7cm41inlsc7sw2fyycvn6";
    };
    meta = with lib; {
      description = ":sparkles: Clarify and beautify your comments using boxes and lines";
      homepage = "https://github.com/LudoPinelli/comment-box.nvim";
      license = with licenses; [ mit ];
    };
  };
  telescope-tabs = buildVimPluginFrom2Nix {
    pname = "telescope-tabs";
    version = "2023-07-22";
    src = fetchurl {
      url = "https://github.com/LukasPietzschmann/telescope-tabs/archive/8fa5f3c453f3794c9289f88a05504e86eb8fd582.tar.gz";
      sha256 = "1cy5ng2qh01nqhjaa9jdfkf1sarnf3ai0g2qp8hfl7la4rg8x63h";
    };
    meta = with lib; {
      description = "Fly through your tabs in neovim ✈️";
      homepage = "https://github.com/LukasPietzschmann/telescope-tabs";
      license = with licenses; [ bsd3 ];
    };
  };
  everblush-vim = buildVimPluginFrom2Nix {
    pname = "everblush-vim";
    version = "2023-06-19";
    src = fetchurl {
      url = "https://github.com/Everblush/everblush.vim/archive/7900e45c24b59ad8b0a0e1b1204f260d6909bc56.tar.gz";
      sha256 = "0j5mrsvkxg6rgbzzs3428zhklf6w9l3q3f70a92y2psh2aydrcjs";
    };
    meta = with lib; {
      description = "🎨 A beautiful and dark vim colorscheme. ";
      homepage = "https://github.com/Everblush/everblush.vim";
      license = with licenses; [ mit ];
    };
  };
  runner-nvim = buildVimPluginFrom2Nix {
    pname = "runner-nvim";
    version = "2023-09-03";
    src = fetchurl {
      url = "https://github.com/MarcHamamji/runner.nvim/archive/237f7b72c10c34f60c55022d2d79a5f8e5a531a5.tar.gz";
      sha256 = "0yq7bb5xxshiads6ay5xbdngipbnfl76l3w5drcp7wscyy68skxi";
    };
    meta = with lib; {
      description = "A customizable Neovim plugin to run code inside the editor";
      homepage = "https://github.com/MarcHamamji/runner.nvim";
      license = with licenses; [ mit ];
    };
  };
  adwaita-nvim = buildVimPluginFrom2Nix {
    pname = "adwaita-nvim";
    version = "2023-06-22";
    src = fetchurl {
      url = "https://github.com/Mofiqul/adwaita.nvim/archive/bb421a3439a515862ecb57970f10722cdcc4d089.tar.gz";
      sha256 = "1lbqvvsj0jsjsfgsrl92pmrv4jycvm65d14q5572w4rp9y3v2wn2";
    };
    meta = with lib; {
      description = "Neovim colorscheme using Gnome Adwaita syntax";
      homepage = "https://github.com/Mofiqul/adwaita.nvim";
    };
  };
  dracula-nvim = buildVimPluginFrom2Nix {
    pname = "dracula-nvim";
    version = "2023-07-29";
    src = fetchurl {
      url = "https://github.com/Mofiqul/dracula.nvim/archive/9fe831e685a76e1a1898a694623b33247c4d036c.tar.gz";
      sha256 = "1dl66l6fy6q765n8njnynd0xlhmimgczwgkvi3pl6abcr4glr7vs";
    };
    meta = with lib; {
      description = "Dracula colorscheme for neovim written in Lua";
      homepage = "https://github.com/Mofiqul/dracula.nvim";
      license = with licenses; [ mit ];
    };
  };
  vscode-nvim = buildVimPluginFrom2Nix {
    pname = "vscode-nvim";
    version = "2023-08-08";
    src = fetchurl {
      url = "https://github.com/Mofiqul/vscode.nvim/archive/11b212096a0b2056fc8acaf31c0d62d656b6fd2d.tar.gz";
      sha256 = "1dsdnmkl2lqx6qwn6d65n7rq16722dcb74j484h9rc8bnx0p71an";
    };
    meta = with lib; {
      description = "Neovim/Vim color scheme inspired by Dark+ and Light+ theme in Visual Studio Code";
      homepage = "https://github.com/Mofiqul/vscode.nvim";
      license = with licenses; [ mit ];
    };
  };
  interestingwords-nvim = buildVimPluginFrom2Nix {
    pname = "interestingwords-nvim";
    version = "2023-08-30";
    src = fetchurl {
      url = "https://github.com/Mr-LLLLL/interestingwords.nvim/archive/408e0d4ff127beabaa0ce4448dbd4d881f139dfb.tar.gz";
      sha256 = "02qgprs41510r932y2bn1nn0k7j4xjg628vm8wbqbs1j16gc8raa";
    };
    meta = with lib; {
      description = "☀️ A vim plugin for highlighting and navigating through different words in a buffer";
      homepage = "https://github.com/Mr-LLLLL/interestingwords.nvim";
      license = with licenses; [ gpl3Only ];
    };
  };
  exrc-nvim = buildVimPluginFrom2Nix {
    pname = "exrc-nvim";
    version = "2022-12-28";
    src = fetchurl {
      url = "https://github.com/MunifTanjim/exrc.nvim/archive/0aae882db72885ade36641d677a22204c72e50f4.tar.gz";
      sha256 = "1ls79syky4yacimlhfj4vwkbqgh1wl2zlkdrkvj6jkxxv9h67ma8";
    };
    meta = with lib; {
      description = "Secure Project Local Config for Neovim";
      homepage = "https://github.com/MunifTanjim/exrc.nvim";
      license = with licenses; [ mit ];
    };
  };
  nui-nvim = buildVimPluginFrom2Nix {
    pname = "nui-nvim";
    version = "2023-09-06";
    src = fetchurl {
      url = "https://github.com/MunifTanjim/nui.nvim/archive/c8de23342caf8d50b15d6b28368d36a56a69d76f.tar.gz";
      sha256 = "0k30lnvddsdcvxl3kwdz1sqf0ss6vawakzzjxbvdnjxlsm659xwa";
    };
    meta = with lib; {
      description = "UI Component Library for Neovim";
      homepage = "https://github.com/MunifTanjim/nui.nvim";
      license = with licenses; [ mit ];
    };
  };
  prettier-nvim = buildVimPluginFrom2Nix {
    pname = "prettier-nvim";
    version = "2023-06-16";
    src = fetchurl {
      url = "https://github.com/MunifTanjim/prettier.nvim/archive/d98e732cb73690b07c00c839c924be1d1d9ac5c2.tar.gz";
      sha256 = "07wmwwivlfkgbqhkjamih28xmaq6biv6vg0g3614rf7q5r674rgn";
    };
    meta = with lib; {
      description = "Prettier plugin for Neovim's built-in LSP client";
      homepage = "https://github.com/MunifTanjim/prettier.nvim";
      license = with licenses; [ mit ];
    };
  };
  due-nvim = buildVimPluginFrom2Nix {
    pname = "due-nvim";
    version = "2023-09-04";
    src = fetchurl {
      url = "https://github.com/nfrid/due.nvim/archive/70a93319fa0345c116f2b57cf1f99e0d20026c5e.tar.gz";
      sha256 = "1py9v5k7izsqy94sppy29lc9vqzwh81cfixzv2ax1f7q31xgs468";
    };
    meta = with lib; {
      description = "Neovim plugin for displaying due dates";
      homepage = "https://github.com/nfrid/due.nvim";
      license = with licenses; [ mit ];
    };
  };
  markdown-togglecheck = buildVimPluginFrom2Nix {
    pname = "markdown-togglecheck";
    version = "2023-09-04";
    src = fetchurl {
      url = "https://github.com/nfrid/markdown-togglecheck/archive/5e9ee3184109a102952c01ef816babe8835b299a.tar.gz";
      sha256 = "1dkhnd7fl1xdxrlc81szkkpqlzgymvbakggnnr5hkdawzwk9dpay";
    };
    meta = with lib; {
      description = "Simple neovim plugin to toggle checkboxes in markdown";
      homepage = "https://github.com/nfrid/markdown-togglecheck";
      license = with licenses; [ mit ];
    };
  };
  treesitter-utils = buildVimPluginFrom2Nix {
    pname = "treesitter-utils";
    version = "2023-04-24";
    src = fetchurl {
      url = "https://github.com/nfrid/treesitter-utils/archive/0e1ac3ae9ae55a371f09aa1d7bbc757275567627.tar.gz";
      sha256 = "15fbj950zga25vf0swfj3k4r3255was943mhhl04v0863abilik2";
    };
    meta = with lib; {
      description = "Treesitter methods to make my life less miserable";
      homepage = "https://github.com/nfrid/treesitter-utils";
      license = with licenses; [ mit ];
    };
  };
  guess-indent-nvim = buildVimPluginFrom2Nix {
    pname = "guess-indent-nvim";
    version = "2023-04-03";
    src = fetchurl {
      url = "https://github.com/NMAC427/guess-indent.nvim/archive/b8ae749fce17aa4c267eec80a6984130b94f80b2.tar.gz";
      sha256 = "09cqclb4648rlya4ds4bgfmyb1r0jv136l0qw953vqgv4g7q6163";
    };
    meta = with lib; {
      description = "Automatic indentation style detection for Neovim";
      homepage = "https://github.com/NMAC427/guess-indent.nvim";
      license = with licenses; [ mit ];
    };
  };
  cheovim = buildVimPluginFrom2Nix {
    pname = "cheovim";
    version = "2023-08-01";
    src = fetchurl {
      url = "https://github.com/NTBBloodbath/cheovim/archive/0091ef49e3c1a8c985e3f6ee1f077ede6d22e0db.tar.gz";
      sha256 = "14iii0vipnh8aannsgwljvfb2i1q46abwzvwq91ag48lyz1gxx96";
    };
    meta = with lib; {
      description = "Neovim configuration switcher written in Lua. Inspired by chemacs";
      homepage = "https://github.com/NTBBloodbath/cheovim";
      license = with licenses; [ gpl2Only ];
    };
  };
  doom-one-nvim = buildVimPluginFrom2Nix {
    pname = "doom-one-nvim";
    version = "2022-12-24";
    src = fetchurl {
      url = "https://github.com/NTBBloodbath/doom-one.nvim/archive/a43528cbd7908ccec7af4587ec8e18be149095bd.tar.gz";
      sha256 = "1cglrgw5b73cm1f1gzhwhznd6gkfiw7n27apb6dqjfnwgsnwm2gq";
    };
    meta = with lib; {
      description = "doom-emacs' doom-one Lua port for Neovim";
      homepage = "https://github.com/NTBBloodbath/doom-one.nvim";
      license = with licenses; [ mit ];
    };
  };
  caskey-nvim = buildVimPluginFrom2Nix {
    pname = "caskey-nvim";
    version = "2023-01-06";
    src = fetchurl {
      url = "https://github.com/Nexmean/caskey.nvim/archive/86fa340f3deb8d67fe596611e717a2859c322964.tar.gz";
      sha256 = "1v2f0sv728j2adjfppi9qmr2pxkka1px5pbkr7j8807aygp3avam";
    };
    meta = with lib; {
      description = "Declarative keymappings configuration using cascading trees";
      homepage = "https://github.com/Nexmean/caskey.nvim";
      license = with licenses; [ asl20 ];
    };
  };
  nvim-colorizer-lua = buildVimPluginFrom2Nix {
    pname = "nvim-colorizer-lua";
    version = "2023-02-27";
    src = fetchurl {
      url = "https://github.com/NvChad/nvim-colorizer.lua/archive/dde3084106a70b9a79d48f426f6d6fec6fd203f7.tar.gz";
      sha256 = "0j4v41gva46qxwbm5vdhia0d23n57i2blzc976fswxzpkpj01ql5";
    };
    meta = with lib; {
      description = "Maintained fork of the fastest Neovim colorizer";
      homepage = "https://github.com/NvChad/nvim-colorizer.lua";
    };
  };
  nfnl = buildVimPluginFrom2Nix {
    pname = "nfnl";
    version = "2023-09-08";
    src = fetchurl {
      url = "https://github.com/Olical/nfnl/archive/979dbfc48bcb601a9107764a99f9459cb5bd4051.tar.gz";
      sha256 = "0504kfhncqp2h2dipnqyqx2gsyxdr6jiir84krr4s5vf86yq8qym";
    };
    meta = with lib; {
      description = "Enhance your Neovim with Fennel";
      homepage = "https://github.com/Olical/nfnl";
      license = with licenses; [ unlicense ];
    };
  };
  rsync-nvim = buildVimPluginFrom2Nix {
    pname = "rsync-nvim";
    version = "2023-09-10";
    src = fetchurl {
      url = "https://github.com/OscarCreator/rsync.nvim/archive/bc5789e73083692af2a21c72216d0b5985b929e3.tar.gz";
      sha256 = "1f311mgmdhimcp2z8b4szfdf2jzgf238ink8c7k4jzkl6q8lkckg";
    };
    meta = with lib; {
      description = "neovim plugin which synchronises project with rsync on save";
      homepage = "https://github.com/OscarCreator/rsync.nvim";
      license = with licenses; [ mit ];
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
  AutoSave = buildVimPluginFrom2Nix {
    pname = "AutoSave";
    version = "2022-11-01";
    src = fetchurl {
      url = "https://github.com/pocco81/auto-save.nvim/archive/979b6c82f60cfa80f4cf437d77446d0ded0addf0.tar.gz";
      sha256 = "1p4v8wrzc4621iird0x73hbrbpn9yj4by2rpshgm3xdv3b1zrmfm";
    };
    meta = with lib; {
      description = "🧶 Automatically save your changes in NeoVim";
      homepage = "https://github.com/pocco81/auto-save.nvim";
      license = with licenses; [ gpl3Only ];
    };
  };
  dap-buddy-nvim = buildVimPluginFrom2Nix {
    pname = "dap-buddy-nvim";
    version = "2022-04-20";
    src = fetchurl {
      url = "https://github.com/pocco81/dap-buddy.nvim/archive/bbda2b062e5519cde4e10b6e4240d3dd1f867b20.tar.gz";
      sha256 = "156j96wx16zpccvg2plik550gk7az27wpq7bjxq52fch8ixhm02v";
    };
    meta = with lib; {
      description = "🐞 Debug Adapter Protocol manager for Neovim";
      homepage = "https://github.com/pocco81/dap-buddy.nvim";
      license = with licenses; [ gpl3Only ];
    };
  };
  high-str-nvim = buildVimPluginFrom2Nix {
    pname = "high-str-nvim";
    version = "2022-10-21";
    src = fetchurl {
      url = "https://github.com/pocco81/high-str.nvim/archive/1cb5e030bb16df52c8428b53dc235466a4eb1d01.tar.gz";
      sha256 = "06wzczp0kdyhdmq8cv3ll6b4wjxnlsn4pcixlncqzb20aqz56a2l";
    };
    meta = with lib; {
      description = "🦎 A NeoVim plugin for highlighting visual selections like in a normal document editor!";
      homepage = "https://github.com/pocco81/high-str.nvim";
      license = with licenses; [ gpl3Only ];
    };
  };
  nvim-treesitter-textsubjects = buildVimPluginFrom2Nix {
    pname = "nvim-treesitter-textsubjects";
    version = "2023-09-30";
    src = fetchurl {
      url = "https://github.com/RRethy/nvim-treesitter-textsubjects/archive/48b3bf54e32f23e2299c59ff76fa3b0599565b39.tar.gz";
      sha256 = "0y1n52wy2sgxiym21ap67jm0hanf2q7a7ispmd2njy1jxfqbf7mr";
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
  gp-nvim = buildVimPluginFrom2Nix {
    pname = "gp-nvim";
    version = "2023-09-28";
    src = fetchurl {
      url = "https://github.com/Robitx/gp.nvim/archive/2387211742c93d1472608e87a1e34c8240bfa1e4.tar.gz";
      sha256 = "1bpz9sn26z42lv0qx7bzxvm04jr9qvfp5vsvzk0i470ql6v1vga4";
    };
    meta = with lib; {
      description = "Gp (GPT Prompt) plugin for Neovim";
      homepage = "https://github.com/Robitx/gp.nvim";
      license = with licenses; [ mit ];
    };
  };
  compter-nvim = buildVimPluginFrom2Nix {
    pname = "compter-nvim";
    version = "2023-06-01";
    src = fetchurl {
      url = "https://github.com/RutaTang/compter.nvim/archive/954fa6e860cb0019fb263a8defae0675fcfdf9e8.tar.gz";
      sha256 = "1x5a0pigc0vjxr4yb2f62a8lh3pnkwga4nxi7fl58kvcp9jpbhkc";
    };
    meta = with lib; {
      description = "Power and extend the ability of <C-a> and <C-x> with customized patterns";
      homepage = "https://github.com/RutaTang/compter.nvim";
      license = with licenses; [ mit ];
    };
  };
  quicknote-nvim = buildVimPluginFrom2Nix {
    pname = "quicknote-nvim";
    version = "2023-08-26";
    src = fetchurl {
      url = "https://github.com/RutaTang/quicknote.nvim/archive/2d2d1e463786df800003de8747fb5029dd01bdf6.tar.gz";
      sha256 = "1lq86rsyqc9pi60b24s0i239mn3v2s2ch5x23nqdilznm00ljabs";
    };
    meta = with lib; {
      description = "Quickly take notes, in-place";
      homepage = "https://github.com/RutaTang/quicknote.nvim";
    };
  };
  spectacle-nvim = buildVimPluginFrom2Nix {
    pname = "spectacle-nvim";
    version = "2023-09-28";
    src = fetchurl {
      url = "https://github.com/RutaTang/spectacle.nvim/archive/d40d6932ca5fa236e498d181d88dbc1e7812ca67.tar.gz";
      sha256 = "1jh911b6akglabwd5icm7lz21r2xnwqxl78mfj83mdp0r9fflj2z";
    };
    meta = with lib; {
      description = "Easily manage multiple sessions with telescope integration";
      homepage = "https://github.com/RutaTang/spectacle.nvim";
    };
  };
  crates-nvim = buildVimPluginFrom2Nix {
    pname = "crates-nvim";
    version = "2023-10-02";
    src = fetchurl {
      url = "https://github.com/Saecki/crates.nvim/archive/49122d9951f1cc7124017d454c961d590727d473.tar.gz";
      sha256 = "11a8rkhgaz4zc05fg83sg3hbbn5wxz548dqi5ma7p0giw3xh5rd9";
    };
    meta = with lib; {
      description = "A neovim plugin that helps managing crates.io dependencies";
      homepage = "https://github.com/Saecki/crates.nvim";
      license = with licenses; [ mit ];
    };
  };
  neovim-session-manager = buildVimPluginFrom2Nix {
    pname = "neovim-session-manager";
    version = "2023-09-05";
    src = fetchurl {
      url = "https://github.com/Shatur/neovim-session-manager/archive/df544e17798dd0e6e33ecf0991dfde9174367837.tar.gz";
      sha256 = "1blr9g8zv3pd69i9j0z2n7f12b2b3v0q7za3n43ijkb3qr7dkcgj";
    };
    meta = with lib; {
      description = "A simple wrapper around :mksession";
      homepage = "https://github.com/Shatur/neovim-session-manager";
      license = with licenses; [ gpl3Only ];
    };
  };
  neovim-tasks = buildVimPluginFrom2Nix {
    pname = "neovim-tasks";
    version = "2023-07-18";
    src = fetchurl {
      url = "https://github.com/Shatur/neovim-tasks/archive/f42b164499b6e833ac6b94993abc215fc4a0db17.tar.gz";
      sha256 = "0dh5fgnkvg5vsf6sypg10l22lrcmrclnfrsv2c7acjpz3nb6zixs";
    };
    meta = with lib; {
      description = "A statefull task manager focused on integration with build systems";
      homepage = "https://github.com/Shatur/neovim-tasks";
      license = with licenses; [ gpl3Only ];
    };
  };
  carbon-nvim = buildVimPluginFrom2Nix {
    pname = "carbon-nvim";
    version = "2023-08-16";
    src = fetchurl {
      url = "https://github.com/SidOfc/carbon.nvim/archive/f0c59944d5fc382b12d93cb5d26b3c45c6dcbae9.tar.gz";
      sha256 = "0g3cr90s7yni17q23gxi6di78c4d07jx0n0mzigszdf0ilhzcypm";
    };
    meta = with lib; {
      description = "The simple directory tree viewer for Neovim written in Lua";
      homepage = "https://github.com/SidOfc/carbon.nvim";
      license = with licenses; [ mit ];
    };
  };
  nvim-navic = buildVimPluginFrom2Nix {
    pname = "nvim-navic";
    version = "2023-09-18";
    src = fetchurl {
      url = "https://github.com/SmiteshP/nvim-navic/archive/0ffa7ffe6588f3417e680439872f5049e38a24db.tar.gz";
      sha256 = "17bgj6mz1fr0j3w1nlkaqczfpw8dh4vdy6aiki0zzwjrlqh6vqij";
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
    version = "2023-07-15";
    src = fetchurl {
      url = "https://github.com/Th3Whit3Wolf/space-nvim/archive/6537fc7188a93607c40aaad7c0f45a3c1eb40b99.tar.gz";
      sha256 = "1sj8vs7lghdbnaphqp2qg0plpmc4w5c5pkrfgm94j3hs3grzldnn";
    };
    meta = with lib; {
      description = "No description";
      homepage = "https://github.com/Th3Whit3Wolf/space-nvim";
      license = with licenses; [ mit ];
    };
  };
  drex-nvim = buildVimPluginFrom2Nix {
    pname = "drex-nvim";
    version = "2023-07-05";
    src = fetchurl {
      url = "https://github.com/TheBlob42/drex.nvim/archive/744499c3433a60e6fb50299d40228a2a80bd9cbd.tar.gz";
      sha256 = "0hw71rz1pz22l31wi9392ii9s9ww149mraa2myrcv7q92jm7x7m0";
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
  rayso-nvim = buildVimPluginFrom2Nix {
    pname = "rayso-nvim";
    version = "2023-07-05";
    src = fetchurl {
      url = "https://github.com/TobinPalmer/rayso.nvim/archive/debedaa7f0ed754ab16a292a45bbae8dcc3410c5.tar.gz";
      sha256 = "1702qxby5awx9k6az97swnhgzr4kzsv0ff5idj0hdhp9jbp6b3h2";
    };
    meta = with lib; {
      description = "A simple neovim plugin that enables you to instantly create snippets on ray.so";
      homepage = "https://github.com/TobinPalmer/rayso.nvim";
      license = with licenses; [ unlicense ];
    };
  };
  deepwhite-nvim = buildVimPluginFrom2Nix {
    pname = "deepwhite-nvim";
    version = "2023-09-29";
    src = fetchurl {
      url = "https://github.com/Verf/deepwhite.nvim/archive/49f2edaba7552178570f8198e9c0f2d4ca960b05.tar.gz";
      sha256 = "1d7vjrhp87s8q1z1c3r88a4bx7x15sn3whp6iv49xy6i34ipajbq";
    };
    meta = with lib; {
      description = "DeepWhite colorscheme for Neovim";
      homepage = "https://github.com/Verf/deepwhite.nvim";
      license = with licenses; [ mit ];
    };
  };
  lsp-lens-nvim = buildVimPluginFrom2Nix {
    pname = "lsp-lens-nvim";
    version = "2023-09-19";
    src = fetchurl {
      url = "https://github.com/VidocqH/lsp-lens.nvim/archive/296e0d33dddba1a1de9b69143f189cb994111c5a.tar.gz";
      sha256 = "1ss3vz60ar1mnif9r5rz67zx8kajqf01nyvrgmfr6qcc28bci1ml";
    };
    meta = with lib; {
      description = "Neovim plugin for displaying references and difinition infos upon functions like JB's IDEA";
      homepage = "https://github.com/VidocqH/lsp-lens.nvim";
      license = with licenses; [ mit ];
    };
  };
  binary-swap-nvim = buildVimPluginFrom2Nix {
    pname = "binary-swap-nvim";
    version = "2023-08-06";
    src = fetchurl {
      url = "https://github.com/Wansmer/binary-swap.nvim/archive/49bcf671d6f28b46bcbd1abaed46086da48a5239.tar.gz";
      sha256 = "1x9cmmanc6adxsrafhqb3qyd31wy94f17saqi32qckvl99gfi1mq";
    };
    meta = with lib; {
      description = "Neovim plugin for swapping operands and operators in binary expressions";
      homepage = "https://github.com/Wansmer/binary-swap.nvim";
      license = with licenses; [ mit ];
    };
  };
  langmapper-nvim = buildVimPluginFrom2Nix {
    pname = "langmapper-nvim";
    version = "2023-07-31";
    src = fetchurl {
      url = "https://github.com/Wansmer/langmapper.nvim/archive/9d98285b2e45d1c392c6a03e7adedde97d2aa71a.tar.gz";
      sha256 = "0l7bacla0skgrqx4rimhz8lcd2kbcbl8sm2jd3wymk01cajs5wq0";
    };
    meta = with lib; {
      description = "A plugin that makes Neovim more friendly to non-English input methods 🤝";
      homepage = "https://github.com/Wansmer/langmapper.nvim";
      license = with licenses; [ mit ];
    };
  };
  sibling-swap-nvim = buildVimPluginFrom2Nix {
    pname = "sibling-swap-nvim";
    version = "2023-08-06";
    src = fetchurl {
      url = "https://github.com/Wansmer/sibling-swap.nvim/archive/58b256f2a7def9b63be275b373c748c012b3a604.tar.gz";
      sha256 = "0n1sigk6r6d2gwykk2xx0q64za57nahwi0nnd8ykjzjrbval39z8";
    };
    meta = with lib; {
      description = "Neovim plugin for swaps closest siblings with Tree-Sitter";
      homepage = "https://github.com/Wansmer/sibling-swap.nvim";
      license = with licenses; [ mit ];
    };
  };
  symbol-usage-nvim = buildVimPluginFrom2Nix {
    pname = "symbol-usage-nvim";
    version = "2023-10-01";
    src = fetchurl {
      url = "https://github.com/Wansmer/symbol-usage.nvim/archive/2d0c02245631fa647db602ca62c469b9025c5ceb.tar.gz";
      sha256 = "15ixr5v6b3pn0j76f6mnkl5k528l4yd8bnk0w5cdqqxwm2lgh4gn";
    };
    meta = with lib; {
      description = "Display references, definitions and implementations of document symbols";
      homepage = "https://github.com/Wansmer/symbol-usage.nvim";
      license = with licenses; [ mit ];
    };
  };
  treesj = buildVimPluginFrom2Nix {
    pname = "treesj";
    version = "2023-09-28";
    src = fetchurl {
      url = "https://github.com/Wansmer/treesj/archive/81d0ae51b84143e228d27b6cf79d09012d2021cb.tar.gz";
      sha256 = "0y1ds740qcrcad2n6vd7lkbgmh0fv16bxsr5z39pmpj1bgsgigkl";
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
    version = "2023-07-13";
    src = fetchurl {
      url = "https://github.com/Weissle/persistent-breakpoints.nvim/archive/db2ad5974b0435cb806cd287e7525219d6ac4bd3.tar.gz";
      sha256 = "0j8w5mhrhr3xj6kh4d6baxnnbpzgr6d0mdvzcbc5v45z99ar62s3";
    };
    meta = with lib; {
      description = "Neovim plugin for persistent breakpoints";
      homepage = "https://github.com/Weissle/persistent-breakpoints.nvim";
      license = with licenses; [ mit ];
    };
  };
  ns-textobject-nvim = buildVimPluginFrom2Nix {
    pname = "ns-textobject-nvim";
    version = "2023-05-26";
    src = fetchurl {
      url = "https://github.com/XXiaoA/ns-textobject.nvim/archive/6341bc16df9d07d5f9520b7ac0a84a55720c2302.tar.gz";
      sha256 = "1ajwhjzx5dzl70hxiz1vxf04s29xgr1f2g96mw4x2gxwlv8im1h6";
    };
    meta = with lib; {
      description = "Awesome textobject plugin works with nvim-surround";
      homepage = "https://github.com/XXiaoA/ns-textobject.nvim";
      license = with licenses; [ gpl3Only ];
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
  compiler-nvim = buildVimPluginFrom2Nix {
    pname = "compiler-nvim";
    version = "2023-10-01";
    src = fetchurl {
      url = "https://github.com/Zeioth/compiler.nvim/archive/83ef9751c4f7425693963e6e55d1705aa0e36e16.tar.gz";
      sha256 = "0l5zb7s7y5pvpgy4asl4kl4b1wxvrdrbf78kw6qf653irknavpfh";
    };
    meta = with lib; {
      description = "Neovim compiler for building and running your code without having to configure anything";
      homepage = "https://github.com/Zeioth/compiler.nvim";
      license = with licenses; [ gpl3Only ];
    };
  };
  dooku-nvim = buildVimPluginFrom2Nix {
    pname = "dooku-nvim";
    version = "2023-09-01";
    src = fetchurl {
      url = "https://github.com/Zeioth/dooku.nvim/archive/6b463d3cb568c4830cfdfd7d0ea17c15ff1d005e.tar.gz";
      sha256 = "0xwfz9gkzhrsgfb3ac393ysvwcbbc6jkmfki968arsi2mag4kwn6";
    };
    meta = with lib; {
      description = "Code documentation generator for Neovim";
      homepage = "https://github.com/Zeioth/dooku.nvim";
      license = with licenses; [ gpl3Only ];
    };
  };
  markmap-nvim = buildVimPluginFrom2Nix {
    pname = "markmap-nvim";
    version = "2023-09-12";
    src = fetchurl {
      url = "https://github.com/Zeioth/markmap.nvim/archive/3befc2a54c2448a16c30c1c7762aab263f22946a.tar.gz";
      sha256 = "0rw7z721c1r9k6dii3n4sclixwxi4rsymc3hylnzq4akg1pl5cwd";
    };
    meta = with lib; {
      description = "Visualize your Markdown as mindmaps with markmap";
      homepage = "https://github.com/Zeioth/markmap.nvim";
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
  apc-nvim = buildVimPluginFrom2Nix {
    pname = "apc-nvim";
    version = "2023-09-27";
    src = fetchurl {
      url = "https://github.com/aPeoplesCalendar/apc.nvim/archive/6d4efebf9cbd4d284afd5b3421108bd9ed25c9c0.tar.gz";
      sha256 = "1npkb8z6szhqhzs8c71zlvxs053i77f12gyxk7zp6f8w20fmdcyy";
    };
    meta = with lib; {
      description = "Plugin providing \"A People's Calendar\" for Neovim, written in lua";
      homepage = "https://github.com/aPeoplesCalendar/apc.nvim";
      license = with licenses; [ mit ];
    };
  };
  advanced-git-search-nvim = buildVimPluginFrom2Nix {
    pname = "advanced-git-search-nvim";
    version = "2023-08-07";
    src = fetchurl {
      url = "https://github.com/aaronhallaert/advanced-git-search.nvim/archive/79c9aab7aa1cf08c2a25d931719bcb408b381ed2.tar.gz";
      sha256 = "12lw8q0km0gc4vwd23mkdr6y18bc63k0ynjw18fk3a03rw0664w3";
    };
    meta = with lib; {
      description = "Search your git history by commit message, content and author in Neovim";
      homepage = "https://github.com/aaronhallaert/advanced-git-search.nvim";
      license = with licenses; [ asl20 ];
    };
  };
  tabout-nvim = buildVimPluginFrom2Nix {
    pname = "tabout-nvim";
    version = "2023-03-29";
    src = fetchurl {
      url = "https://github.com/abecodes/tabout.nvim/archive/0d275c8d25f32457e67b5c66d6ae43f26a61bce5.tar.gz";
      sha256 = "07pv4y5rsrzaam62fsbl363bjc8ylr6vgil3mnmxh3ymbg4lm708";
    };
    meta = with lib; {
      description = "tabout plugin for neovim";
      homepage = "https://github.com/abecodes/tabout.nvim";
      license = with licenses; [ unlicense ];
    };
  };
  obsidian = buildVimPluginFrom2Nix {
    pname = "obsidian";
    version = "2023-08-11";
    src = fetchurl {
      url = "https://github.com/ada0l/obsidian/archive/2ffa3d44a5bc5c678611bffa654299c23668665a.tar.gz";
      sha256 = "0h64hq954qxn147xs79ic5y0mqv634y3mbinhicdcn410c9ca9qm";
    };
    meta = with lib; {
      description = ":book: Base Obsidian functionality in your Neovim ";
      homepage = "https://github.com/ada0l/obsidian";
      license = with licenses; [ mit ];
    };
  };
  image-preview-nvim = buildVimPluginFrom2Nix {
    pname = "image-preview-nvim";
    version = "2023-06-09";
    src = fetchurl {
      url = "https://github.com/adelarsq/image_preview.nvim/archive/367122b7fe7ab1a52fb71d09eab2db187de7330d.tar.gz";
      sha256 = "0gwci2if5swb6zcnv76m5r2psfhsfwsp64p77brlvdqzlm77a7z4";
    };
    meta = with lib; {
      description = "Image Preview for Neovim 🖼";
      homepage = "https://github.com/adelarsq/image_preview.nvim";
      license = with licenses; [ mit ];
    };
  };
  neoline-vim = buildVimPluginFrom2Nix {
    pname = "neoline-vim";
    version = "2023-09-21";
    src = fetchurl {
      url = "https://github.com/adelarsq/neoline.vim/archive/211d5b973328ef59bc10fd9df2c3f3295d7a100f.tar.gz";
      sha256 = "006521h1mv11ypb9nmyg8qsic3x6izazppk948savvmzc55y3rpn";
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
    version = "2023-09-18";
    src = fetchurl {
      url = "https://github.com/akinsho/git-conflict.nvim/archive/896261933afe2fddf6fb043d9cd4d88301b151a9.tar.gz";
      sha256 = "0r22lxf5mba3r3dgpvbxv17j475pqz7v960par9i9s033kx5x4xy";
    };
    meta = with lib; {
      description = "A plugin to visualise and resolve merge conflicts in neovim";
      homepage = "https://github.com/akinsho/git-conflict.nvim";
    };
  };
  toggleterm-nvim = buildVimPluginFrom2Nix {
    pname = "toggleterm-nvim";
    version = "2023-10-02";
    src = fetchurl {
      url = "https://github.com/akinsho/toggleterm.nvim/archive/c80844fd52ba76f48fabf83e2b9f9b93273f418d.tar.gz";
      sha256 = "1jm516kh8xiwlms8hhyak371c12k044zrjikwk1lm24k6i06gi1z";
    };
    meta = with lib; {
      description = "A neovim lua plugin to help easily manage multiple terminal windows";
      homepage = "https://github.com/akinsho/toggleterm.nvim";
      license = with licenses; [ gpl3Only ];
    };
  };
  blackjack-nvim = buildVimPluginFrom2Nix {
    pname = "blackjack-nvim";
    version = "2023-09-23";
    src = fetchurl {
      url = "https://github.com/alanfortlink/blackjack.nvim/archive/cf59e79de25b87a3ef68b92b3277c50d4b345a92.tar.gz";
      sha256 = "0pi14jwm11hin72ivs0c31j1f7r0f91hvzbf526j4jqc2z205fg4";
    };
    meta = with lib; {
      description = "Classic Black Jack game in Neovim";
      homepage = "https://github.com/alanfortlink/blackjack.nvim";
      license = with licenses; [ mit ];
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
    version = "2023-04-09";
    src = fetchurl {
      url = "https://github.com/aliou/bats.vim/archive/19eb3c5a05aaa889647af8107a4518b3fb4a4711.tar.gz";
      sha256 = "032w0hh128d25zv717gj774b4hkcy9samgy4y6ci2sif9l81ayfm";
    };
    meta = with lib; {
      description = "Syntax files for Bats (Bash Automated Testing System)";
      homepage = "https://github.com/aliou/bats.vim";
    };
  };
  ultimate-autopair-nvim = buildVimPluginFrom2Nix {
    pname = "ultimate-autopair-nvim";
    version = "2023-10-03";
    src = fetchurl {
      url = "https://github.com/altermo/ultimate-autopair.nvim/archive/55a516bfbd4167e35752ab6710185f69369da1c7.tar.gz";
      sha256 = "1nswmjz2hbamjvrs6ddazh5lwmijq3140q1y72ihwh3kbxkqs8id";
    };
    meta = with lib; {
      description = "A neovim autopair plugin designed to have all the features that an autopair plugin needs";
      homepage = "https://github.com/altermo/ultimate-autopair.nvim";
      license = with licenses; [ mit ];
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
    version = "2023-02-13";
    src = fetchurl {
      url = "https://github.com/amrbashir/nvim-docs-view/archive/a7ba30f8d545ab0fd181e0f4fb84544ef9f236ac.tar.gz";
      sha256 = "0wr1nvbn3p96mkqgayzvmg7wvq2sxvxjnfg3d90nkwbhm9zqmiln";
    };
    meta = with lib; {
      description = "A neovim plugin to display lsp hover documentation in a side panel";
      homepage = "https://github.com/amrbashir/nvim-docs-view";
      license = with licenses; [ mit ];
    };
  };
  debugprint-nvim = buildVimPluginFrom2Nix {
    pname = "debugprint-nvim";
    version = "2023-09-23";
    src = fetchurl {
      url = "https://github.com/andrewferrier/debugprint.nvim/archive/4562d99f7e0e535b11b20b6068d6579bc51fec9f.tar.gz";
      sha256 = "03fs9nb052bdh3fc49y3l1c3i2fsza7003pbbwxp4kwa7g6s2fjk";
    };
    meta = with lib; {
      description = "Debugging in NeoVim the print() way!";
      homepage = "https://github.com/andrewferrier/debugprint.nvim";
    };
  };
  textobj-diagnostic-nvim = buildVimPluginFrom2Nix {
    pname = "textobj-diagnostic-nvim";
    version = "2022-12-31";
    src = fetchurl {
      url = "https://github.com/andrewferrier/textobj-diagnostic.nvim/archive/f5d1ba26c28496d34ef067bc3700e3b34dbaf686.tar.gz";
      sha256 = "1wshfq4pjja0mq362dgflkpmqx1f08sv5cwzwwv4mghi8gszrhkz";
    };
    meta = with lib; {
      description = "NeoVim text object that finds diagnostics";
      homepage = "https://github.com/andrewferrier/textobj-diagnostic.nvim";
      license = with licenses; [ mit ];
    };
  };
  nvim-coverage = buildVimPluginFrom2Nix {
    pname = "nvim-coverage";
    version = "2023-07-20";
    src = fetchurl {
      url = "https://github.com/andythigpen/nvim-coverage/archive/4634dfb00961a86948518c7e6f85737c24364308.tar.gz";
      sha256 = "076ilwcc21qjl4yn0i3kfadjqwijkmbhga7qg0y3v4j0bzhn6nny";
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
  bad-practices-nvim = buildVimPluginFrom2Nix {
    pname = "bad-practices-nvim";
    version = "2021-10-31";
    src = fetchurl {
      url = "https://github.com/antonk52/bad-practices.nvim/archive/f6aec6f43ca5da146cc73fe06ba6efc272de65d7.tar.gz";
      sha256 = "128vvhyfdkx6iilhvy0lh3a9ci7sa7m6jza1mq2zkrcqd7mc6ghd";
    };
    meta = with lib; {
      description = "A plugin to help give up bad practices in vim";
      homepage = "https://github.com/antonk52/bad-practices.nvim";
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
    version = "2023-01-27";
    src = fetchurl {
      url = "https://github.com/anuvyklack/fold-preview.nvim/archive/b7920cb0aba2b48a6b679bff45f98c3ebc0f0b89.tar.gz";
      sha256 = "005mmnx7s586qbrpzwy30w6qy4pszgafcz55bh9psbinjdw3x060";
    };
    meta = with lib; {
      description = "Preview folds in float window ";
      homepage = "https://github.com/anuvyklack/fold-preview.nvim";
    };
  };
  hydra-nvim = buildVimPluginFrom2Nix {
    pname = "hydra-nvim";
    version = "2023-02-06";
    src = fetchurl {
      url = "https://github.com/anuvyklack/hydra.nvim/archive/3ced42c0b6a6c85583ff0f221635a7f4c1ab0dd0.tar.gz";
      sha256 = "13clmb2fd3cwvaqmvd7aaf3kmq8fabq0g0ldjw4am8w1w42rfdhs";
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
    version = "2023-01-16";
    src = fetchurl {
      url = "https://github.com/anuvyklack/windows.nvim/archive/c7492552b23d0ab30325e90b56066ec51242adc8.tar.gz";
      sha256 = "1j4z2zvq83l2pzi8kpxy1v8bs57k34bk196jmy71a3fssvjlck8s";
    };
    meta = with lib; {
      description = "Automatically expand width of the current window. Maximizes and restore it. And all this with nice animations!";
      homepage = "https://github.com/anuvyklack/windows.nvim";
      license = with licenses; [ mit ];
    };
  };
  tmux-nvim = buildVimPluginFrom2Nix {
    pname = "tmux-nvim";
    version = "2023-09-06";
    src = fetchurl {
      url = "https://github.com/aserowy/tmux.nvim/archive/673782b74a6055d430d3f5148a033edd99e5519f.tar.gz";
      sha256 = "1xnbr79c2bp2828m69n8rqh1sy7zx0r210i3nl2wbb57qbslrbn2";
    };
    meta = with lib; {
      description = "tmux integration for nvim features pane movement and resizing from within nvim";
      homepage = "https://github.com/aserowy/tmux.nvim";
      license = with licenses; [ mit ];
    };
  };
  qfview-nvim = buildVimPluginFrom2Nix {
    pname = "qfview-nvim";
    version = "2023-09-09";
    src = fetchurl {
      url = "https://github.com/ashfinal/qfview.nvim/archive/f7a4fd8d700d02f6c1274f02115fa4e68e63aa54.tar.gz";
      sha256 = "0kmp3vjnykzcbfkabi7iq1c5i3wkl20i9ba6q2y4sld7yz02jv1d";
    };
    meta = with lib; {
      description = "Pretty quickfix/location view for Neovim";
      homepage = "https://github.com/ashfinal/qfview.nvim";
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
  visual-studio-code = buildVimPluginFrom2Nix {
    pname = "visual-studio-code";
    version = "2023-09-12";
    src = fetchurl {
      url = "https://github.com/askfiy/visual_studio_code/archive/68b0c5f8cae096ebba3d79064ef4b433fc9f6dd8.tar.gz";
      sha256 = "1wi7vi9jrcvz27fcs810lqbzbawh16vvhk2apjdsq32jbhc7i8qi";
    };
    meta = with lib; {
      description = "A `neovim` theme that highly restores `vscode`, so that your friends will no longer be surprised that you use `neovim`, because they will think you are using `vscode` .. ";
      homepage = "https://github.com/askfiy/visual_studio_code";
      license = with licenses; [ mpl20 ];
    };
  };
  easypick-nvim = buildVimPluginFrom2Nix {
    pname = "easypick-nvim";
    version = "2023-07-28";
    src = fetchurl {
      url = "https://github.com/axkirillov/easypick.nvim/archive/88d2a95eb87413f043cf21ff985a300eaaf20496.tar.gz";
      sha256 = "1xdf4468s6g47vvqf2yrpq3ddjf04zfmq1md32w3ha4hwdhz75a8";
    };
    meta = with lib; {
      description = "A neovim plugin that lets you easily create Telescope pickers from arbitrary console commands";
      homepage = "https://github.com/axkirillov/easypick.nvim";
    };
  };
  hbac-nvim = buildVimPluginFrom2Nix {
    pname = "hbac-nvim";
    version = "2023-07-03";
    src = fetchurl {
      url = "https://github.com/axkirillov/hbac.nvim/archive/afb38c35327e763e5b3b72cad09ed76e37219ace.tar.gz";
      sha256 = "185pl08dkpcikj2y0hcmsfq0dczlsjpzayd19mja3lr09j3s2y6a";
    };
    meta = with lib; {
      description = "Heuristic buffer auto-close";
      homepage = "https://github.com/axkirillov/hbac.nvim";
      license = with licenses; [ mit ];
    };
  };
  incline-nvim = buildVimPluginFrom2Nix {
    pname = "incline-nvim";
    version = "2023-08-26";
    src = fetchurl {
      url = "https://github.com/b0o/incline.nvim/archive/fdd7e08a6e3d0dd8d9aa02428861fa30c37ba306.tar.gz";
      sha256 = "1kjzrqq9hl5799yxw1bzxnn64fvhb9clhkjxi0vmz4sg2a902q9f";
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
    version = "2023-09-22";
    src = fetchurl {
      url = "https://github.com/nvim-focus/focus.nvim/archive/40fee169fa502eb0b87bcaa0f8e2af051326ed14.tar.gz";
      sha256 = "0f787885a59ahnn7ah7faq50dfanhf7src22p0nf5f14l4x09igg";
    };
    meta = with lib; {
      description = "Auto-Focusing and Auto-Resizing Splits/Windows for Neovim written in Lua. A full suite of window management enhancements. Vim splits on steroids!";
      homepage = "https://github.com/nvim-focus/focus.nvim";
      license = with licenses; [ mit ];
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
    version = "2023-08-03";
    src = fetchurl {
      url = "https://github.com/bennypowers/nvim-regexplainer/archive/4250c8f3c1307876384e70eeedde5149249e154f.tar.gz";
      sha256 = "0pqx3f9jq623j1kl90cx6q81dwq2nxs7z55s7fp1lqkmnaxv968a";
    };
    meta = with lib; {
      description = "Describe the regexp under the cursor";
      homepage = "https://github.com/bennypowers/nvim-regexplainer";
    };
  };
  splitjoin-nvim = buildVimPluginFrom2Nix {
    pname = "splitjoin-nvim";
    version = "2023-08-03";
    src = fetchurl {
      url = "https://github.com/bennypowers/splitjoin.nvim/archive/3dd4973ffcc8240b8bc8668babfdd66517144a4a.tar.gz";
      sha256 = "0mfh26vcp2vgrv1xr2ai23hg7djqzjlwf8qfvi85mkmcbbjvv0qy";
    };
    meta = with lib; {
      description = "🪓🧷 Split or join list-like syntax constructs";
      homepage = "https://github.com/bennypowers/splitjoin.nvim";
      license = with licenses; [ mit ];
    };
  };
  svgo-nvim = buildVimPluginFrom2Nix {
    pname = "svgo-nvim";
    version = "2023-06-20";
    src = fetchurl {
      url = "https://github.com/bennypowers/svgo.nvim/archive/d6df5ec58bc6ad9bc934c583304e10d7355cb59f.tar.gz";
      sha256 = "096q957qvrmc6d9s8whqk9rfybmkkm2410g4lcprd8qc8m90yp4s";
    };
    meta = with lib; {
      description = "Optimize SVGs in Neovim";
      homepage = "https://github.com/bennypowers/svgo.nvim";
      license = with licenses; [ mit ];
    };
  };
  nvim-luadev = buildVimPluginFrom2Nix {
    pname = "nvim-luadev";
    version = "2023-03-13";
    src = fetchurl {
      url = "https://github.com/bfredl/nvim-luadev/archive/3ba0c02c378503739f1fdb95cff3ea2aad48db3e.tar.gz";
      sha256 = "0cvha0c4m711x52dajs28v8cchzkf01aprn89b0flc3agiymqxka";
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
    version = "2023-10-01";
    src = fetchurl {
      url = "https://github.com/bluz71/vim-moonfly-colors/archive/195298536ec58aa8bd3a83ed1931fe54c888e8c4.tar.gz";
      sha256 = "1ijd9xis05aryj0vh16j0lf4zrydcwg6phz6bxdrx2nyn42ilsil";
    };
    meta = with lib; {
      description = "A dark charcoal theme for modern Neovim & classic Vim";
      homepage = "https://github.com/bluz71/vim-moonfly-colors";
      license = with licenses; [ mit ];
    };
  };
  vim-nightfly-colors = buildVimPluginFrom2Nix {
    pname = "vim-nightfly-colors";
    version = "2023-10-01";
    src = fetchurl {
      url = "https://github.com/bluz71/vim-nightfly-colors/archive/60d7e7749c21dec4e77c70672c3882dc5653d02c.tar.gz";
      sha256 = "01syhbskqldhdbqmp582xcj1yg5gaz8wpwak54i0sm3514g0fc6z";
    };
    meta = with lib; {
      description = "A dark midnight theme for modern Neovim & classic Vim";
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
    version = "2023-07-27";
    src = fetchurl {
      url = "https://github.com/brenoprata10/nvim-highlight-colors/archive/231547093a788b925b8fc36351ad422701c3a8c8.tar.gz";
      sha256 = "1z0n4hp1rs0qilbjpssk56f2gsphzv9lfqrn68jhfkn0nx88gs4l";
    };
    meta = with lib; {
      description = "Highlight colors for neovim";
      homepage = "https://github.com/brenoprata10/nvim-highlight-colors";
    };
  };
  trim-nvim = buildVimPluginFrom2Nix {
    pname = "trim-nvim";
    version = "2023-03-22";
    src = fetchurl {
      url = "https://github.com/cappyzawa/trim.nvim/archive/2df124c2c2844d3143091ebd3ae8b49bbe06bc5e.tar.gz";
      sha256 = "1ic2b4kcxy11x3bsigqxhisi4dyyy0y6pmgb4ajqw295sin98470";
    };
    meta = with lib; {
      description = "This plugin trims trailing whitespace and lines";
      homepage = "https://github.com/cappyzawa/trim.nvim";
      license = with licenses; [ asl20 ];
    };
  };
  catppuccin = buildVimPluginFrom2Nix {
    pname = "catppuccin";
    version = "2023-09-30";
    src = fetchurl {
      url = "https://github.com/catppuccin/nvim/archive/7a4bcdadafc59a5bedbd866c643fa486d8cca4a1.tar.gz";
      sha256 = "1xn9b16qaakpv1b1nw0wzl0vic5a1dscdwsbkkwpdwclqydm5g0k";
    };
    meta = with lib; {
      description = "🍨 Soothing pastel theme for (Neo)vim";
      homepage = "https://github.com/catppuccin/nvim";
      license = with licenses; [ mit ];
    };
  };
  grapple-nvim = buildVimPluginFrom2Nix {
    pname = "grapple-nvim";
    version = "2023-03-08";
    src = fetchurl {
      url = "https://github.com/cbochs/grapple.nvim/archive/ab274a3bfb674442d57fca05df866b71895853bc.tar.gz";
      sha256 = "09vzgia5vs63giyb5qssjd3rg8cbnq3c84mry1a1si4gxnx17566";
    };
    meta = with lib; {
      description = "Neovim plugin for tagging important files";
      homepage = "https://github.com/cbochs/grapple.nvim";
      license = with licenses; [ mit ];
    };
  };
  portal-nvim = buildVimPluginFrom2Nix {
    pname = "portal-nvim";
    version = "2023-03-25";
    src = fetchurl {
      url = "https://github.com/cbochs/portal.nvim/archive/a108a87639a43f5386dd70bdf512de3806a71f7d.tar.gz";
      sha256 = "003qd9jwr0v1zgbnfr498jfm3a42rq2kapm2jd3pgmwjvxshly1p";
    };
    meta = with lib; {
      description = "Neovim plugin for improved location list navigation";
      homepage = "https://github.com/cbochs/portal.nvim";
      license = with licenses; [ mit ];
    };
  };
  distant-nvim = buildVimPluginFrom2Nix {
    pname = "distant-nvim";
    version = "2023-09-13";
    src = fetchurl {
      url = "https://github.com/chipsenkbeil/distant.nvim/archive/998724f62386c8022a4e6c885f4509cf9477451a.tar.gz";
      sha256 = "17k9lhxcw0xnrwmqnqis0wanqaqhr7zwf91xw670wy8w0bbbi2fa";
    };
    meta = with lib; {
      description = "🚧 (Alpha stage software) Edit files, run programs, and work with LSP on a remote machine from the comfort of your local environment 🚧";
      homepage = "https://github.com/chipsenkbeil/distant.nvim";
      license = with licenses; [ asl20 ];
    };
  };
  dep = buildVimPluginFrom2Nix {
    pname = "dep";
    version = "2022-12-20";
    src = fetchurl {
      url = "https://github.com/chiyadev/dep/archive/b77963d2410d4dc65a1687c04103a8be58866ac6.tar.gz";
      sha256 = "0zmds39vypz98gm3ds7liph1rw3s6mrsa6yw5sn7ngxbxh3zqwjh";
    };
    meta = with lib; {
      description = "Correct neovim package manager";
      homepage = "https://github.com/chiyadev/dep";
      license = with licenses; [ mit ];
    };
  };
  nvim-alt-substitute = buildVimPluginFrom2Nix {
    pname = "nvim-alt-substitute";
    version = "2023-07-28";
    src = fetchurl {
      url = "https://github.com/chrisgrieser/nvim-alt-substitute/archive/e338393ad7fe742ddeedb3c19996d98707982fd7.tar.gz";
      sha256 = "084db2gb3qiaczq9cxgzq7ps2g26cyy5lrfdd0iva9bq3sla1dpa";
    };
    meta = with lib; {
      description = "A substitute of vim's :substitute that uses lua patterns instead of vim regex. Supports incremental preview";
      homepage = "https://github.com/chrisgrieser/nvim-alt-substitute";
      license = with licenses; [ mit ];
    };
  };
  nvim-dr-lsp = buildVimPluginFrom2Nix {
    pname = "nvim-dr-lsp";
    version = "2023-09-18";
    src = fetchurl {
      url = "https://github.com/chrisgrieser/nvim-dr-lsp/archive/a256d2f99d6e60ad66f6a1597d005bee09c9945f.tar.gz";
      sha256 = "0qwicn8lil9w1a4miqabpiki6cdfw29yydq8cjh1ll24clf3ja8h";
    };
    meta = with lib; {
      description = "Status line component showing the number of LSP definition and reference of the token under the cursor";
      homepage = "https://github.com/chrisgrieser/nvim-dr-lsp";
      license = with licenses; [ mit ];
    };
  };
  nvim-early-retirement = buildVimPluginFrom2Nix {
    pname = "nvim-early-retirement";
    version = "2023-09-04";
    src = fetchurl {
      url = "https://github.com/chrisgrieser/nvim-early-retirement/archive/62153b7bcbe171763bdad4efdaab32012fe31349.tar.gz";
      sha256 = "0acmagdm667xdkibv0b5bkid3w0m3lddbh34if948jrh9cmffvc5";
    };
    meta = with lib; {
      description = "Send buffers into early retirement by automatically closing them after x minutes of inactivity";
      homepage = "https://github.com/chrisgrieser/nvim-early-retirement";
      license = with licenses; [ mit ];
    };
  };
  nvim-genghis = buildVimPluginFrom2Nix {
    pname = "nvim-genghis";
    version = "2023-09-18";
    src = fetchurl {
      url = "https://github.com/chrisgrieser/nvim-genghis/archive/b15d7d0c37f7739a5723f20dfae9e501b9952b08.tar.gz";
      sha256 = "0z1y5a5j36b45sffv7lw7hbgapimnvagc2a4pf4993hbcaj3wa6w";
    };
    meta = with lib; {
      description = "Convenience file operations for neovim, written in lua. ";
      homepage = "https://github.com/chrisgrieser/nvim-genghis";
      license = with licenses; [ mit ];
    };
  };
  nvim-origami = buildVimPluginFrom2Nix {
    pname = "nvim-origami";
    version = "2023-09-14";
    src = fetchurl {
      url = "https://github.com/chrisgrieser/nvim-origami/archive/12a79de05347ba5c29cde6effb41bc3477c844fc.tar.gz";
      sha256 = "1y9bykm14hanzyzfb881sc7w3r12p3b35sdlwm7sallqfznlfq2j";
    };
    meta = with lib; {
      description = "Fold with relentless elegance";
      homepage = "https://github.com/chrisgrieser/nvim-origami";
      license = with licenses; [ mit ];
    };
  };
  nvim-puppeteer = buildVimPluginFrom2Nix {
    pname = "nvim-puppeteer";
    version = "2023-09-26";
    src = fetchurl {
      url = "https://github.com/chrisgrieser/nvim-puppeteer/archive/9cd2d2e2630db6377538f5f0dccdea3517db2ce1.tar.gz";
      sha256 = "1axaff8hvbf8qdxizgjwg7agd9dq5n45m7pkraa2f3201nksny08";
    };
    meta = with lib; {
      description = "Automatically convert strings to f-strings or template strings and back";
      homepage = "https://github.com/chrisgrieser/nvim-puppeteer";
      license = with licenses; [ mit ];
    };
  };
  nvim-recorder = buildVimPluginFrom2Nix {
    pname = "nvim-recorder";
    version = "2023-09-04";
    src = fetchurl {
      url = "https://github.com/chrisgrieser/nvim-recorder/archive/e6ecc8ba0b950df9ac0ef7507dc95cb0037bead1.tar.gz";
      sha256 = "198in7510avw8ihs92l0fyl1gpv2ga4b8fkqrifaydqfgqi8rhnx";
    };
    meta = with lib; {
      description = "Enhance the usage of macros in Neovim";
      homepage = "https://github.com/chrisgrieser/nvim-recorder";
      license = with licenses; [ mit ];
    };
  };
  nvim-rulebook = buildVimPluginFrom2Nix {
    pname = "nvim-rulebook";
    version = "2023-10-02";
    src = fetchurl {
      url = "https://github.com/chrisgrieser/nvim-rulebook/archive/69c5527c2cf46dc8202caa93ade80f9c90f3d155.tar.gz";
      sha256 = "000jqhwil6mr5fc8w36lznl29fri6bn2zk70nnxkpxsf7z3m789m";
    };
    meta = with lib; {
      description = "Add inline-comments to ignore rules, or lookup rule documentation online";
      homepage = "https://github.com/chrisgrieser/nvim-rulebook";
      license = with licenses; [ mit ];
    };
  };
  nvim-tinygit = buildVimPluginFrom2Nix {
    pname = "nvim-tinygit";
    version = "2023-09-29";
    src = fetchurl {
      url = "https://github.com/chrisgrieser/nvim-tinygit/archive/c3be8c364f3b2dcca8b01b39e0bcf801da8f42b1.tar.gz";
      sha256 = "04vs63drdfgz3bk203zi8h8zclrrmly8zzpqy7q9ipizhzix4din";
    };
    meta = with lib; {
      description = "Lightweight and nimble git client for nvim";
      homepage = "https://github.com/chrisgrieser/nvim-tinygit";
      license = with licenses; [ mit ];
    };
  };
  nvim-various-textobjs = buildVimPluginFrom2Nix {
    pname = "nvim-various-textobjs";
    version = "2023-09-26";
    src = fetchurl {
      url = "https://github.com/chrisgrieser/nvim-various-textobjs/archive/eba7c5d09c97ac8a73bad5793618b7d376d91048.tar.gz";
      sha256 = "15mp33pmmczdgqvh5d4p2hcx86xbxkhhb3bjvxq19j9jqx4zqm0h";
    };
    meta = with lib; {
      description = "Bundle of two dozen new text objects for Neovim";
      homepage = "https://github.com/chrisgrieser/nvim-various-textobjs";
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
  ucm-nvim = buildVimPluginFrom2Nix {
    pname = "ucm-nvim";
    version = "2023-08-23";
    src = fetchurl {
      url = "https://github.com/chuwy/ucm.nvim/archive/0cabe0ca15b64d6ee30fe5eb4fd3b0f60cad9ce9.tar.gz";
      sha256 = "0k6mzq7ynd6x9k6wfs6iah0kijd16kzlsy499p8q4pns9j3ilwwf";
    };
    meta = with lib; {
      description = "A Neovim plugin helping to navigate in Unison codebase";
      homepage = "https://github.com/chuwy/ucm.nvim";
      license = with licenses; [ asl20 ];
    };
  };
  ts-node-action = buildVimPluginFrom2Nix {
    pname = "ts-node-action";
    version = "2023-09-27";
    src = fetchurl {
      url = "https://github.com/CKolkey/ts-node-action/archive/f266409809555d7604b1ba894ffad8958670d04f.tar.gz";
      sha256 = "0n7xwzvmsl3mxvpbbhb4k9isg3cwj0anmxwyvwqpjl624gqbybs3";
    };
    meta = with lib; {
      description = "Neovim Plugin for running functions on nodes";
      homepage = "https://github.com/CKolkey/ts-node-action";
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
  neovim-project = buildVimPluginFrom2Nix {
    pname = "neovim-project";
    version = "2023-10-01";
    src = fetchurl {
      url = "https://github.com/coffebar/neovim-project/archive/68a31ba10d1071906ebc942838f008db800431c9.tar.gz";
      sha256 = "1rvnxvkb0c3sg1cpwgsmfa5z8s9jshy5zj5y55xh7pv2gcczjnhz";
    };
    meta = with lib; {
      description = "Neovim project manager maintains your recent project history and uses Telescope to select from autosaved sessions";
      homepage = "https://github.com/coffebar/neovim-project";
      license = with licenses; [ asl20 ];
    };
  };
  one-monokai-nvim = buildVimPluginFrom2Nix {
    pname = "one-monokai-nvim";
    version = "2023-07-05";
    src = fetchurl {
      url = "https://github.com/cpea2506/one_monokai.nvim/archive/cb45ecb019be679e32373896bb42545818b6d884.tar.gz";
      sha256 = "0n5xv084jg0a9gksjz6qdnvyma3f09l7f36njvzmxcbq7qyc1wjc";
    };
    meta = with lib; {
      description = "One Monokai for Neovim";
      homepage = "https://github.com/cpea2506/one_monokai.nvim";
      license = with licenses; [ mit ];
    };
  };
  relative-toggle-nvim = buildVimPluginFrom2Nix {
    pname = "relative-toggle-nvim";
    version = "2023-03-25";
    src = fetchurl {
      url = "https://github.com/cpea2506/relative-toggle.nvim/archive/fabe2f60f5f148f2bf1fb76e8a542f5adf8d996a.tar.gz";
      sha256 = "1j2d475bdlfj3fqmalc0r3y9lsxmk3pwj227zwx7xf0cfbswjjl0";
    };
    meta = with lib; {
      description = "Toggles smoothly between number and relative number, supports various number combinations";
      homepage = "https://github.com/cpea2506/relative-toggle.nvim";
      license = with licenses; [ mit ];
    };
  };
  diagnosticls-configs-nvim = buildVimPluginFrom2Nix {
    pname = "diagnosticls-configs-nvim";
    version = "2023-09-03";
    src = fetchurl {
      url = "https://github.com/creativenull/diagnosticls-configs-nvim/archive/6b25301561da8b81cda6da819c28a4714d4b4f6d.tar.gz";
      sha256 = "1zr1zw41vxb16hrbx1ygd784idyc6cm211hin73m95i8m4lncb8y";
    };
    meta = with lib; {
      description = "An unofficial collection of linters and formatters configured for diagnostic-languageserver for neovim";
      homepage = "https://github.com/creativenull/diagnosticls-configs-nvim";
      license = with licenses; [ mit ];
    };
  };
  nvim-go = buildVimPluginFrom2Nix {
    pname = "nvim-go";
    version = "2023-08-22";
    src = fetchurl {
      url = "https://github.com/crispgm/nvim-go/archive/76a72fa31b7f8551bb5372a88fc1c76d268f5e3d.tar.gz";
      sha256 = "0g12m196pr4px8kq5i3wzqc19qkknlwfgazbmyxcjnn2855jbjrp";
    };
    meta = with lib; {
      description = "A minimal implementation of Golang development plugin for Neovim";
      homepage = "https://github.com/crispgm/nvim-go";
      license = with licenses; [ mit ];
    };
  };
  nvim-tabline = buildVimPluginFrom2Nix {
    pname = "nvim-tabline";
    version = "2023-05-10";
    src = fetchurl {
      url = "https://github.com/crispgm/nvim-tabline/archive/7044c5b73678c7b0161f4c37acd0f555cc3ce908.tar.gz";
      sha256 = "116i0244r35brac9ad6l0c37bgkbgcg5w01v7afjzr81gvgz1rn7";
    };
    meta = with lib; {
      description = "nvim port of tabline.vim with Lua";
      homepage = "https://github.com/crispgm/nvim-tabline";
      license = with licenses; [ mit ];
    };
  };
  telescope-heading-nvim = buildVimPluginFrom2Nix {
    pname = "telescope-heading-nvim";
    version = "2023-09-03";
    src = fetchurl {
      url = "https://github.com/crispgm/telescope-heading.nvim/archive/23ce2c9ef252aecbaa37300c1209b5ef2b51e6c5.tar.gz";
      sha256 = "1a8b7d6cds41f2vq7wv3jc9ia2lcg82bzibx4xa2wvbz1h90n606";
    };
    meta = with lib; {
      description = "An extension for telescope.nvim that allows you to switch between headings";
      homepage = "https://github.com/crispgm/telescope-heading.nvim";
      license = with licenses; [ mit ];
    };
  };
  bookmarks-nvim = buildVimPluginFrom2Nix {
    pname = "bookmarks-nvim";
    version = "2023-09-14";
    src = fetchurl {
      url = "https://github.com/crusj/bookmarks.nvim/archive/9e72f431bdea1285d1ab7d71e02abe6414ad424e.tar.gz";
      sha256 = "1cm1bmf8clpcrn8jz8d20qcqd6w3s87830abc0fxzvjv2jabbqx8";
    };
    meta = with lib; {
      description = "Remember file locations and sort by time and frequency and support telescope";
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
  nightcity-nvim = buildVimPluginFrom2Nix {
    pname = "nightcity-nvim";
    version = "2023-09-26";
    src = fetchurl {
      url = "https://github.com/cryptomilk/nightcity.nvim/archive/6b3f4306f13f19499df61a79da3841029d0fcd86.tar.gz";
      sha256 = "1l4imarap4iyn420fsdk16v58ayn0s6j1rnd6vpvivx25y41fjk7";
    };
    meta = with lib; {
      description = "🏙 Night City - A dark colorscheme for Neovim with LSP support";
      homepage = "https://github.com/cryptomilk/nightcity.nvim";
      license = with licenses; [ asl20 ];
    };
  };
  yaml-nvim = buildVimPluginFrom2Nix {
    pname = "yaml-nvim";
    version = "2023-07-12";
    src = fetchurl {
      url = "https://github.com/cuducos/yaml.nvim/archive/400b2edb001b81f41be69bdcbe09a5ed23886074.tar.gz";
      sha256 = "141hgiyvqmjv3wjclxmqkp9vmw297393i5sqxcx5hfr77q4xrqz0";
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
    version = "2023-09-09";
    src = fetchurl {
      url = "https://github.com/danymat/neogen/archive/70127baaff25611deaf1a29d801fc054ad9d2dc1.tar.gz";
      sha256 = "1aaagznv55239jpvns0lb230iisbmyzp1si1h6bv3sf8gsxiz1cg";
    };
    meta = with lib; {
      description = "A better annotation generator. Supports multiple languages and annotation conventions";
      homepage = "https://github.com/danymat/neogen";
      license = with licenses; [ gpl3Only ];
    };
  };
  midnight-nvim = buildVimPluginFrom2Nix {
    pname = "midnight-nvim";
    version = "2023-07-18";
    src = fetchurl {
      url = "https://github.com/dasupradyumna/midnight.nvim/archive/955ae794290096d42a6f182741c01fd3665c1577.tar.gz";
      sha256 = "1nlw18n1lraipg49z3g2ikk5y5idvbi52mm99n703b1pxl4by2y2";
    };
    meta = with lib; {
      description = ":crescent_moon:  A modern black neovim theme written in Lua, with comfortable color contrast for a pleasant visual experience, with LSP and treesitter support";
      homepage = "https://github.com/dasupradyumna/midnight.nvim";
      license = with licenses; [ asl20 ];
    };
  };
  bubbly-nvim = buildVimPluginFrom2Nix {
    pname = "bubbly-nvim";
    version = "2023-01-07";
    src = fetchurl {
      url = "https://github.com/datwaft/bubbly.nvim/archive/5d1374bd4a1430aad4b243406ed9c75e42db1ac3.tar.gz";
      sha256 = "14h6r0maingcrjkkvc1cz0gz1vh42vg42xjyi8jfha04h9dc15jz";
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
    version = "2023-09-11";
    src = fetchurl {
      url = "https://github.com/davidgranstrom/scnvim/archive/f9e75bf21c77882625f89baa745d9bc4992742dc.tar.gz";
      sha256 = "1ckglar43xc5wg5j2am39pm6bvlvqs2rsq3if1ys5id2g62z1faj";
    };
    meta = with lib; {
      description = "Neovim frontend for SuperCollider";
      homepage = "https://github.com/davidgranstrom/scnvim";
      license = with licenses; [ gpl3Only ];
    };
  };
  telescope-undo-nvim = buildVimPluginFrom2Nix {
    pname = "telescope-undo-nvim";
    version = "2023-06-03";
    src = fetchurl {
      url = "https://github.com/debugloop/telescope-undo.nvim/archive/3dec002ea3e7952071d26fbb5d01e2038a58a554.tar.gz";
      sha256 = "0ixjxvm88j4v855vkyciih1knd9bbnnz3ishi187y3kxzrkc3n9d";
    };
    meta = with lib; {
      description = "A telescope extension to view and search your undo tree 🌴";
      homepage = "https://github.com/debugloop/telescope-undo.nvim";
      license = with licenses; [ mit ];
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
  neural = buildVimPluginFrom2Nix {
    pname = "neural";
    version = "2023-09-22";
    src = fetchurl {
      url = "https://github.com/dense-analysis/neural/archive/9cecb731fcc357b733f0c1f9d5f7eaf516659f24.tar.gz";
      sha256 = "0w7656p9d2wbqfx7x53khrqg4rp8awk5wf7r2hkdyvn4a9hz818m";
    };
    meta = with lib; {
      description = "AI Vim/Neovim code generation plugin (OpenAI, ChatGPT, and more)";
      homepage = "https://github.com/dense-analysis/neural";
      license = with licenses; [ mit ];
    };
  };
  agrolens-nvim = buildVimPluginFrom2Nix {
    pname = "agrolens-nvim";
    version = "2023-05-17";
    src = fetchurl {
      url = "https://github.com/desdic/agrolens.nvim/archive/a2f15094a2b7e7bc79184de8edc13034116d8d47.tar.gz";
      sha256 = "00f9vjrdw2mnch8fazpknrvgv3jv14v0aljk1mqyy82hmr3qvk2w";
    };
    meta = with lib; {
      description = "Telescope extentions to view pre-defined/custom treesitter queries";
      homepage = "https://github.com/desdic/agrolens.nvim";
      license = with licenses; [ mit ];
    };
  };
  greyjoy-nvim = buildVimPluginFrom2Nix {
    pname = "greyjoy-nvim";
    version = "2023-03-31";
    src = fetchurl {
      url = "https://github.com/desdic/greyjoy.nvim/archive/8bc6e0ad020a32af9ec40c32b4c56766235c9873.tar.gz";
      sha256 = "0hwf22j0pg1pgncw800b52q2dzccj8gzr6m1rmj7f3q0pkpj1bbn";
    };
    meta = with lib; {
      description = "Launcher for Neovim";
      homepage = "https://github.com/desdic/greyjoy.nvim";
      license = with licenses; [ mit ];
    };
  };
  macrothis-nvim = buildVimPluginFrom2Nix {
    pname = "macrothis-nvim";
    version = "2023-09-11";
    src = fetchurl {
      url = "https://github.com/desdic/macrothis.nvim/archive/ba57a7b0f5f4fc00f0eaa5ac0babcaef0eb61c37.tar.gz";
      sha256 = "0gpddnlddfs97469w676fmdl6p6rqcq0653l8kv5q3373ac3kazy";
    };
    meta = with lib; {
      description = "Macrothis is a plugin for neovim to save and load macros";
      homepage = "https://github.com/desdic/macrothis.nvim";
      license = with licenses; [ mit ];
    };
  };
  telescope-rooter-nvim = buildVimPluginFrom2Nix {
    pname = "telescope-rooter-nvim";
    version = "2022-11-26";
    src = fetchurl {
      url = "https://github.com/desdic/telescope-rooter.nvim/archive/69423216c75a5f1f1477bbf8faf6b0dc8af04099.tar.gz";
      sha256 = "10zyfkipi7dvgxghrmxj1ss9wndggrrvvwyb6rwwi7mb7a7v6aw4";
    };
    meta = with lib; {
      description = "Change directory to project folder when using telescope and restore afterwards";
      homepage = "https://github.com/desdic/telescope-rooter.nvim";
      license = with licenses; [ mit ];
    };
  };
  sfm-nvim = buildVimPluginFrom2Nix {
    pname = "sfm-nvim";
    version = "2023-10-04";
    src = fetchurl {
      url = "https://github.com/dinhhuy258/sfm.nvim/archive/b025b109c501e187275984cb20547554a35918f6.tar.gz";
      sha256 = "11svs1mvha8pq42nyc6yc99kkm2s0ah0d4ps3f54w6817kjqbn3p";
    };
    meta = with lib; {
      description = "The simple directory tree viewer for Neovim written in Lua";
      homepage = "https://github.com/dinhhuy258/sfm.nvim";
    };
  };
  tsc-nvim = buildVimPluginFrom2Nix {
    pname = "tsc-nvim";
    version = "2023-09-15";
    src = fetchurl {
      url = "https://github.com/dmmulroy/tsc.nvim/archive/26d3c9010f3ef78fbecdfc69d901ab8ed89cff6c.tar.gz";
      sha256 = "115ckddxp9yskladvz567s32adq4znlwjk9i1f6v7n1y1s65ri67";
    };
    meta = with lib; {
      description = "A Neovim plugin for seamless, asynchronous project-wide TypeScript type-checking using the TypeScript compiler (tsc)";
      homepage = "https://github.com/dmmulroy/tsc.nvim";
      license = with licenses; [ mit ];
    };
  };
  CodeGPT-nvim = buildVimPluginFrom2Nix {
    pname = "CodeGPT-nvim";
    version = "2023-05-01";
    src = fetchurl {
      url = "https://github.com/dpayne/CodeGPT.nvim/archive/6e3714e8d336aea4a205081d44ed8b2e3505dee2.tar.gz";
      sha256 = "1y7nlqf4vxsawrhmbdy0zclj0hgnbrghixzjhs8l5vjqmbbkf8i2";
    };
    meta = with lib; {
      description = "CodeGPT is a plugin for neovim that provides commands to interact with ChatGPT";
      homepage = "https://github.com/dpayne/CodeGPT.nvim";
      license = with licenses; [ gpl3Only ];
    };
  };
  dracula = buildVimPluginFrom2Nix {
    pname = "vim";
    version = "2023-08-30";
    src = fetchurl {
      url = "https://github.com/dracula/vim/archive/b2cc39273abbb6b38a3d173d2a5d8c2d1c79fc19.tar.gz";
      sha256 = "1v8slss76sxqsvdshn1jqyacxdkw0w2h1w417yisnn7d6d467ljz";
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
  NeoColumn-nvim = buildVimPluginFrom2Nix {
    pname = "NeoColumn-nvim";
    version = "2023-05-04";
    src = fetchurl {
      url = "https://github.com/ecthelionvi/NeoColumn.nvim/archive/456bd054b65a5a8bb8a8cb4b3afc5bbbedcb0994.tar.gz";
      sha256 = "052fzgq7r1gzhlkwm9z1wgjj8p9s9akinvd8ajs5agalb037y806";
    };
    meta = with lib; {
      description = "Neovim plugin that highlights individual characters with a toggleable ColorColumn";
      homepage = "https://github.com/ecthelionvi/NeoColumn.nvim";
      license = with licenses; [ mit ];
    };
  };
  NeoComposer-nvim = buildVimPluginFrom2Nix {
    pname = "NeoComposer-nvim";
    version = "2023-09-22";
    src = fetchurl {
      url = "https://github.com/ecthelionvi/NeoComposer.nvim/archive/2591b74e48b44d8089889250a60e681382d40a4f.tar.gz";
      sha256 = "168chxkc27ch39pr36gsvr4cfbbg321lpjccgdipi1f6gx1cpska";
    };
    meta = with lib; {
      description = "Neovim plugin that simplifies macros, enhancing productivity with harmony";
      homepage = "https://github.com/ecthelionvi/NeoComposer.nvim";
      license = with licenses; [ mit ];
    };
  };
  goimpl-nvim = buildVimPluginFrom2Nix {
    pname = "goimpl-nvim";
    version = "2023-07-11";
    src = fetchurl {
      url = "https://github.com/edolphin-ydf/goimpl.nvim/archive/53891ce5605eb55c6bc419db8e286401686b67dd.tar.gz";
      sha256 = "03vsbs59lxajdvklv9r82xmrav4byb16dgyn72bnbvh0ab17dhqc";
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
  format-on-save-nvim = buildVimPluginFrom2Nix {
    pname = "format-on-save-nvim";
    version = "2023-08-23";
    src = fetchurl {
      url = "https://github.com/elentok/format-on-save.nvim/archive/c9fbdfcd913ee706de020463b88893a0df8aec4a.tar.gz";
      sha256 = "1jiyylby3cxp5yg35yk1bskmf2xylncj6avvzrvi8wqwc4684yvk";
    };
    meta = with lib; {
      description = "Automatically formats files when saving using either LSP or shell utilities like prettierd or shfmt";
      homepage = "https://github.com/elentok/format-on-save.nvim";
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
    version = "2023-09-20";
    src = fetchurl {
      url = "https://github.com/ellisonleao/carbon-now.nvim/archive/3caa535a6216a8f3152708ae0fe6087b76e58639.tar.gz";
      sha256 = "170qx4q3b2720yvh0wv42gizzag7fb74hxgy245y547rs9hbh3r0";
    };
    meta = with lib; {
      description = "Create beautiful code snippets directly from your neovim terminal";
      homepage = "https://github.com/ellisonleao/carbon-now.nvim";
    };
  };
  glow-nvim = buildVimPluginFrom2Nix {
    pname = "glow-nvim";
    version = "2023-08-28";
    src = fetchurl {
      url = "https://github.com/ellisonleao/glow.nvim/archive/5b38fb7b6e806cac62707a4aba8c10c5f14d5bb5.tar.gz";
      sha256 = "0c8fm8q2jx43yzh4wfknzvqh4vipv9zr7pxbqh9sr0cczbvz9azs";
    };
    meta = with lib; {
      description = "A markdown preview directly in your neovim";
      homepage = "https://github.com/ellisonleao/glow.nvim";
      license = with licenses; [ mit ];
    };
  };
  nvim-plugin-template = buildVimPluginFrom2Nix {
    pname = "nvim-plugin-template";
    version = "2023-08-17";
    src = fetchurl {
      url = "https://github.com/ellisonleao/nvim-plugin-template/archive/e501d3d508e6062ad2d58f0f035b8bb16323c112.tar.gz";
      sha256 = "1h3lgd166yl7q2a69s0501bxpnkikpb4qn80s558m7v4adzydfgl";
    };
    meta = with lib; {
      description = "A neovim plugin template for github repos";
      homepage = "https://github.com/ellisonleao/nvim-plugin-template";
      license = with licenses; [ mit ];
    };
  };
  embark = buildVimPluginFrom2Nix {
    pname = "vim";
    version = "2023-04-21";
    src = fetchurl {
      url = "https://github.com/embark-theme/vim/archive/0e2c7d36b766dcebba2d8a3a0639784446dea086.tar.gz";
      sha256 = "1yr8jj2hn0rpzw0mjir76zbhyigrrizrgmsdwkc8xb9rns35rzxa";
    };
    meta = with lib; {
      description = "An ambitious theme for vim";
      homepage = "https://github.com/embark-theme/vim";
      license = with licenses; [ mit ];
    };
  };
  nvim-strict = buildVimPluginFrom2Nix {
    pname = "nvim-strict";
    version = "2023-03-16";
    src = fetchurl {
      url = "https://github.com/emileferreira/nvim-strict/archive/cba2f989b66edd04181247f5cc25dcf36d556a80.tar.gz";
      sha256 = "0gzl5l1y9qchqmd3gdk58i85hs8nr37pmvg4d50j9lrp0m0mbapb";
    };
    meta = with lib; {
      description = "Strict, native code style formatting plugin for Neovim. Expose deep nesting, overlong lines, trailing whitespace, trailing empty lines, todos and inconsistent indentation";
      homepage = "https://github.com/emileferreira/nvim-strict";
      license = with licenses; [ mit ];
    };
  };
  obsidian-nvim = buildVimPluginFrom2Nix {
    pname = "obsidian-nvim";
    version = "2023-10-02";
    src = fetchurl {
      url = "https://github.com/epwalsh/obsidian.nvim/archive/25f57d541361548f8b5873809e0907d646c5f3f4.tar.gz";
      sha256 = "13pl4flkhdxi8cncix7n2d9p4i264db5g3ynx4hdhpxr2f0b7bqi";
    };
    meta = with lib; {
      description = "Neovim plugin for Obsidian, written in Lua";
      homepage = "https://github.com/epwalsh/obsidian.nvim";
      license = with licenses; [ asl20 ];
    };
  };
  nvim-dev-container = buildVimPluginFrom2Nix {
    pname = "nvim-dev-container";
    version = "2023-09-15";
    src = fetchurl {
      url = "https://github.com/esensar/nvim-dev-container/archive/b600a41338d100625f89e34c573aff13484e0002.tar.gz";
      sha256 = "1k2y1ldbrazg39vaillgvh6m5mmxznczsz5j4dyrfk7hl7rs2zc1";
    };
    meta = with lib; {
      description = "Neovim dev container support - Mirror of https://codeberg.org/esensar/nvim-dev-container";
      homepage = "https://github.com/esensar/nvim-dev-container";
      license = with licenses; [ mit ];
    };
  };
  auto-dark-mode-nvim = buildVimPluginFrom2Nix {
    pname = "auto-dark-mode-nvim";
    version = "2023-09-23";
    src = fetchurl {
      url = "https://github.com/f-person/auto-dark-mode.nvim/archive/76e8d40d1e1544bae430f739d827391cbcb42fcc.tar.gz";
      sha256 = "1fib77qqaw6x5lyvy01qnykfwdv5d446g8n3acyng91vv2birjlj";
    };
    meta = with lib; {
      description = "A Neovim plugin for macOS, Linux & Windows that automatically changes the editor appearance based on system settings";
      homepage = "https://github.com/f-person/auto-dark-mode.nvim";
      license = with licenses; [ gpl3Only ];
    };
  };
  feline-nvim = buildVimPluginFrom2Nix {
    pname = "feline-nvim";
    version = "2023-09-20";
    src = fetchurl {
      url = "https://github.com/famiu/feline.nvim/archive/3587f57480b88e8009df7b36dc84e9c7ff8f2c49.tar.gz";
      sha256 = "1rasb5fc2jn5syshdsfdrnr72i4cwcvs4vnby9l73c7h2vn09pkm";
    };
    meta = with lib; {
      description = "A minimal, stylish and customizable statusline for Neovim written in Lua";
      homepage = "https://github.com/famiu/feline.nvim";
      license = with licenses; [ gpl3Only ];
    };
  };
  knap = buildVimPluginFrom2Nix {
    pname = "knap";
    version = "2023-07-25";
    src = fetchurl {
      url = "https://github.com/frabjous/knap/archive/503010f541696e99ed5c62f658620e546cebf8b0.tar.gz";
      sha256 = "0xsidfg2pr8a89lb7zpcg4h94b9srpkca70v3c81xrby1k3g8hqv";
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
  usage-tracker-nvim = buildVimPluginFrom2Nix {
    pname = "usage-tracker-nvim";
    version = "2023-09-01";
    src = fetchurl {
      url = "https://github.com/gaborvecsei/usage-tracker.nvim/archive/952ad83cec3dcbd3c77f05cefb26639be322567c.tar.gz";
      sha256 = "13002snj67x3lnjy02y4dc58rbnyndrc13l6ih0gi0322bhg3lip";
    };
    meta = with lib; {
      description = "NeoVim plugin with which you can track the time you spent on files, projects, repos, filetypes";
      homepage = "https://github.com/gaborvecsei/usage-tracker.nvim";
      license = with licenses; [ mit ];
    };
  };
  cutlass-nvim = buildVimPluginFrom2Nix {
    pname = "cutlass-nvim";
    version = "2023-05-01";
    src = fetchurl {
      url = "https://github.com/gbprod/cutlass.nvim/archive/708864fb2263226aabceaf5b2c2eee9841132668.tar.gz";
      sha256 = "0da28wb1cqkc1xf8cxpwcfs4w4kwpjpg7hf9hlq0y9n6y763xcy2";
    };
    meta = with lib; {
      description = "Plugin that adds a 'cut' operation separate from 'delete' ";
      homepage = "https://github.com/gbprod/cutlass.nvim";
      license = with licenses; [ wtfpl ];
    };
  };
  nord-nvim = buildVimPluginFrom2Nix {
    pname = "nord-nvim";
    version = "2023-10-03";
    src = fetchurl {
      url = "https://github.com/gbprod/nord.nvim/archive/e5f8483a86c8e0056e6ed28009ad59fcd2fbbb3d.tar.gz";
      sha256 = "0bh0g7dkvlmlm8xam2i4bh4fz925nrvyi1i2a2n73ix44v6pw9wl";
    };
    meta = with lib; {
      description = " An arctic, north-bluish clean and elegant Neovim theme. ";
      homepage = "https://github.com/gbprod/nord.nvim";
      license = with licenses; [ wtfpl ];
    };
  };
  phpactor-nvim = buildVimPluginFrom2Nix {
    pname = "phpactor-nvim";
    version = "2023-02-28";
    src = fetchurl {
      url = "https://github.com/gbprod/phpactor.nvim/archive/013d9727c983bd4f0f8b3b25b77f3afb9e1eb98e.tar.gz";
      sha256 = "0g7im7hz258dv29sh6bx8j0chlqnmqvd8f29ja374plxd7jcdpxp";
    };
    meta = with lib; {
      description = "Lua version of the Phpactor vim plugin to take advantage of the latest Neovim features";
      homepage = "https://github.com/gbprod/phpactor.nvim";
    };
  };
  stay-in-place-nvim = buildVimPluginFrom2Nix {
    pname = "stay-in-place-nvim";
    version = "2023-01-20";
    src = fetchurl {
      url = "https://github.com/gbprod/stay-in-place.nvim/archive/0628b6db8970fc731abf9608d6f80659b58932c9.tar.gz";
      sha256 = "1j1ig48jzywfas48ldlq40bwchk1rkglixlc79gn4bv9h9xqg19j";
    };
    meta = with lib; {
      description = "Neovim plugin that prevent cursor from moving when using shift and filter actions";
      homepage = "https://github.com/gbprod/stay-in-place.nvim";
      license = with licenses; [ wtfpl ];
    };
  };
  substitute-nvim = buildVimPluginFrom2Nix {
    pname = "substitute-nvim";
    version = "2023-07-20";
    src = fetchurl {
      url = "https://github.com/gbprod/substitute.nvim/archive/89dbe55cccee36bcb5e2be8c2d92ff8716601734.tar.gz";
      sha256 = "0v6jrajf67ifmkygcl9ir4kbmdv2bgbihadvq140hfmdgxl71d0n";
    };
    meta = with lib; {
      description = "Neovim plugin introducing a new operators motions to quickly replace and exchange text";
      homepage = "https://github.com/gbprod/substitute.nvim";
      license = with licenses; [ wtfpl ];
    };
  };
  yanky-nvim = buildVimPluginFrom2Nix {
    pname = "yanky-nvim";
    version = "2023-10-03";
    src = fetchurl {
      url = "https://github.com/gbprod/yanky.nvim/archive/c54a43cb377710b17907be8c863967fee1ffc4ee.tar.gz";
      sha256 = "1csv5w8f17dxjdbisgp8s3vnlvqwr4z7jpjj1jyxv7yn7gd7g09v";
    };
    meta = with lib; {
      description = "Improved Yank and Put functionalities for Neovim";
      homepage = "https://github.com/gbprod/yanky.nvim";
      license = with licenses; [ wtfpl ];
    };
  };
  SmoothCursor-nvim = buildVimPluginFrom2Nix {
    pname = "SmoothCursor-nvim";
    version = "2023-03-07";
    src = fetchurl {
      url = "https://github.com/gen740/SmoothCursor.nvim/archive/b61173fb107455f18099715b88d86002579f2736.tar.gz";
      sha256 = "0pr5c5lrr1zdmf822zfwr5y9r35nww0zmvppxmhwf9ar2vrpk91i";
    };
    meta = with lib; {
      description = "No description";
      homepage = "https://github.com/gen740/SmoothCursor.nvim";
      license = with licenses; [ mit ];
    };
  };
  nvim-commaround = buildVimPluginFrom2Nix {
    pname = "nvim-commaround";
    version = "2023-01-06";
    src = fetchurl {
      url = "https://github.com/gennaro-tedesco/nvim-commaround/archive/f0d4c7911d3a4c8c6da63df67457783c130655ef.tar.gz";
      sha256 = "069bpx0zhr381ld6yrarf4znai0pczwj336a5filrmm140s4y1yj";
    };
    meta = with lib; {
      description = "nvim plugin to toggle comments on and off";
      homepage = "https://github.com/gennaro-tedesco/nvim-commaround";
      license = with licenses; [ mit ];
    };
  };
  nvim-possession = buildVimPluginFrom2Nix {
    pname = "nvim-possession";
    version = "2023-09-12";
    src = fetchurl {
      url = "https://github.com/gennaro-tedesco/nvim-possession/archive/253e52fe26f2816acae68e7e0ced9d89adf3f85a.tar.gz";
      sha256 = "1ps9pvgchp05ngicj883lp6r5vf0pajsvn91m5j53xg8pcg807j4";
    };
    meta = with lib; {
      description = "📌 the no-nonsense session manager";
      homepage = "https://github.com/gennaro-tedesco/nvim-possession";
      license = with licenses; [ mit ];
    };
  };
  leap-nvim = buildVimPluginFrom2Nix {
    pname = "leap-nvim";
    version = "2023-07-23";
    src = fetchurl {
      url = "https://github.com/ggandor/leap.nvim/archive/5efe985cf68fac3b6a6dfe7a75fbfaca8db2af9c.tar.gz";
      sha256 = "1jlify85x5gpmfci9l7nfawbkcxj0fh3sl27xmjdhyi3dkjva7rc";
    };
    meta = with lib; {
      description = "Neovim's answer to the mouse 🦘";
      homepage = "https://github.com/ggandor/leap.nvim";
      license = with licenses; [ mit ];
    };
  };
  cybu-nvim = buildVimPluginFrom2Nix {
    pname = "cybu-nvim";
    version = "2023-04-28";
    src = fetchurl {
      url = "https://github.com/ghillb/cybu.nvim/archive/c0866ef6735a85f85d4cf77ed6d9bc92046b5a99.tar.gz";
      sha256 = "06icw9vyfcp6vi4yrzig7dynpzxki5jw4jp2yqsc6kzr5h3623si";
    };
    meta = with lib; {
      description = "Neovim plugin that offers context when cycling buffers in the form of a customizable notification window";
      homepage = "https://github.com/ghillb/cybu.nvim";
      license = with licenses; [ mit ];
    };
  };
  firenvim = buildVimPluginFrom2Nix {
    pname = "firenvim";
    version = "2023-08-18";
    src = fetchurl {
      url = "https://github.com/glacambre/firenvim/archive/138424db463e6c0e862a05166a4ccc781cd7c19d.tar.gz";
      sha256 = "0ybrmhsv6cf78mcc7cgb009v0b2xp2iiwvw8b10yi5j9sy81pp7p";
    };
    meta = with lib; {
      description = "Embed Neovim in Chrome, Firefox & others";
      homepage = "https://github.com/glacambre/firenvim";
      license = with licenses; [ gpl3Only ];
    };
  };
  lspsaga-nvim = buildVimPluginFrom2Nix {
    pname = "lspsaga-nvim";
    version = "2023-10-02";
    src = fetchurl {
      url = "https://github.com/nvimdev/lspsaga.nvim/archive/dd55a07f7d1b6d93a4b4dca03951608bc1cfc703.tar.gz";
      sha256 = "02jzmwydgxxflmhlc824bvm67aq405c1n1phgvn49rygrgg7k6y2";
    };
    meta = with lib; {
      description = "improve neovim lsp experience";
      homepage = "https://github.com/nvimdev/lspsaga.nvim";
      license = with licenses; [ mit ];
    };
  };
  projections-nvim = buildVimPluginFrom2Nix {
    pname = "projections-nvim";
    version = "2023-06-29";
    src = fetchurl {
      url = "https://github.com/GnikDroy/projections.nvim/archive/f18a8505f84f45a0fe024cafca5b969447f63cd5.tar.gz";
      sha256 = "0vynw7w27c19m22qaz4ynr85j4n8705gb0mmafvg9d0lif94cjyj";
    };
    meta = with lib; {
      description = "A map to your filesystem";
      homepage = "https://github.com/GnikDroy/projections.nvim";
      license = with licenses; [ gpl3Only ];
    };
  };
  codewindow-nvim = buildVimPluginFrom2Nix {
    pname = "codewindow-nvim";
    version = "2023-09-23";
    src = fetchurl {
      url = "https://github.com/gorbit99/codewindow.nvim/archive/8c8f5ff66e123491c946c04848d744fcdc7cac6c.tar.gz";
      sha256 = "0w304x2dfkxy5l21c68pgiyrnaxbzcmahv7v254myrqxbl1llr84";
    };
    meta = with lib; {
      description = "No description";
      homepage = "https://github.com/gorbit99/codewindow.nvim";
    };
  };
  llm-nvim = buildVimPluginFrom2Nix {
    pname = "llm-nvim";
    version = "2023-10-02";
    src = fetchurl {
      url = "https://github.com/gsuuon/llm.nvim/archive/872c9ebfaeeb80954b439afa386aea96329d325e.tar.gz";
      sha256 = "0flqykcslxhz6x811xyk4v74ipr46nw7f2zzzjs2vhmqwl6m9gfb";
    };
    meta = with lib; {
      description = "Neovim plugin for interacting with LLM's and building editor integrated prompts";
      homepage = "https://github.com/gsuuon/llm.nvim";
      license = with licenses; [ mit ];
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
  duplicate-nvim = buildVimPluginFrom2Nix {
    pname = "duplicate-nvim";
    version = "2023-10-02";
    src = fetchurl {
      url = "https://github.com/hinell/duplicate.nvim/archive/1e81322c21fe16c6968c2e68aef4f02263ca553a.tar.gz";
      sha256 = "0xmlm377bivp8n1jdqfczpjylvs6z6iplamixa4v2w6wdq7nlkh2";
    };
    meta = with lib; {
      description = "Duplicate visual selection, lines, and textobjects";
      homepage = "https://github.com/hinell/duplicate.nvim";
    };
  };
  lsp-timeout-nvim = buildVimPluginFrom2Nix {
    pname = "lsp-timeout-nvim";
    version = "2023-10-02";
    src = fetchurl {
      url = "https://github.com/hinell/lsp-timeout.nvim/archive/e43bae7fff487c036f32ad37485a1d725d6ba6be.tar.gz";
      sha256 = "1wk6jvyc8qc863cpg2h7afh5fl0720gr8amjll6b0bbqid22pz0l";
    };
    meta = with lib; {
      description = "Start/stop LSP servers upon demand; keeps RAM usage low";
      homepage = "https://github.com/hinell/lsp-timeout.nvim";
    };
  };
  move-nvim = buildVimPluginFrom2Nix {
    pname = "move-nvim";
    version = "2023-09-15";
    src = fetchurl {
      url = "https://github.com/hinell/move.nvim/archive/dc48f187a172bb4954d5f9f3377600fe5e2e2d74.tar.gz";
      sha256 = "12yqpg75d42n8br0zvf3r3nnyymnd09rssybg2fij01n0wd9wxgl";
    };
    meta = with lib; {
      description = "Gain the power to move lines and blocks and auto-indent them!";
      homepage = "https://github.com/hinell/move.nvim";
      license = with licenses; [ mit ];
    };
  };
  iron-nvim = buildVimPluginFrom2Nix {
    pname = "iron-nvim";
    version = "2023-07-13";
    src = fetchurl {
      url = "https://github.com/Vigemus/iron.nvim/archive/7f876ee3e1f4ea1e5284b1b697cdad5b256e8046.tar.gz";
      sha256 = "1a0zpylklrad50psqg4y71j7ryzcsc8p26mvvcwjg9dx1nk6hvgz";
    };
    meta = with lib; {
      description = "Interactive Repl Over Neovim";
      homepage = "https://github.com/Vigemus/iron.nvim";
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
    version = "2023-10-02";
    src = fetchurl {
      url = "https://github.com/hylang/vim-hy/archive/a449c3b0762bb13bd11825ba3de65a1ebbf77f03.tar.gz";
      sha256 = "0czh79497m66acfa1va39li2kba0lkykxzfqgr4ia6xczzfiy8dc";
    };
    meta = with lib; {
      description = "Vim files and plugins for Hy";
      homepage = "https://github.com/hylang/vim-hy";
    };
  };
  nvim-buffls = buildVimPluginFrom2Nix {
    pname = "nvim-buffls";
    version = "2023-04-09";
    src = fetchurl {
      url = "https://github.com/idanarye/nvim-buffls/archive/6237ef5bc3049f00f1aa3f5b2b745ce6d42edb38.tar.gz";
      sha256 = "10smawwh17z2xyx99q0iinhwz3lihamy9l998f6akjwrzl3a21a8";
    };
    meta = with lib; {
      description = "Add LSP functionality to specific Neovim buffers";
      homepage = "https://github.com/idanarye/nvim-buffls";
      license = with licenses; [ mit ];
    };
  };
  nvim-channelot = buildVimPluginFrom2Nix {
    pname = "nvim-channelot";
    version = "2023-09-11";
    src = fetchurl {
      url = "https://github.com/idanarye/nvim-channelot/archive/a7dad6948bc95c1952caf6367742ec22b337b9a6.tar.gz";
      sha256 = "1f2lkc0vk26r0dhxrn3v6yims8ghv002mm5gapzxiplf1pyjfb4p";
    };
    meta = with lib; {
      description = "Operate Neovim jobs from Lua coroutines";
      homepage = "https://github.com/idanarye/nvim-channelot";
      license = with licenses; [ mit ];
    };
  };
  nvim-moonicipal = buildVimPluginFrom2Nix {
    pname = "nvim-moonicipal";
    version = "2023-09-14";
    src = fetchurl {
      url = "https://github.com/idanarye/nvim-moonicipal/archive/7411ba1cac7badf22b79316870030aed2308dd12.tar.gz";
      sha256 = "1yhs25khs2fz4s7g6hjdixxb560jlarzx3lhwh7fvjw4p9wx17wz";
    };
    meta = with lib; {
      description = "Task runner with focus on rapidly changing personal tasks";
      homepage = "https://github.com/idanarye/nvim-moonicipal";
      license = with licenses; [ mit ];
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
  buffer-manager-nvim = buildVimPluginFrom2Nix {
    pname = "buffer-manager-nvim";
    version = "2023-10-02";
    src = fetchurl {
      url = "https://github.com/j-morano/buffer_manager.nvim/archive/855d31cf63b7b4399bfef48f59e6aa956fd78850.tar.gz";
      sha256 = "047y84a6ljhhj85gh6kziax9sb01g19cyy47km3gvbpaapg9fsk0";
    };
    meta = with lib; {
      description = "A simple plugin to easily manage Neovim buffers";
      homepage = "https://github.com/j-morano/buffer_manager.nvim";
      license = with licenses; [ mit ];
    };
  };
  mkdnflow-nvim = buildVimPluginFrom2Nix {
    pname = "mkdnflow-nvim";
    version = "2023-07-05";
    src = fetchurl {
      url = "https://github.com/jakewvincent/mkdnflow.nvim/archive/a728a3533bb57502fdfd6fdb4e5839fc87430edc.tar.gz";
      sha256 = "1713aid1iygrdrns4in270y884jqnjvpvmzi64w59a7dm86599p7";
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
    version = "2023-06-08";
    src = fetchurl {
      url = "https://github.com/jameshiew/nvim-magic/archive/9b13803df9ff4ca24418d6e0191ceed24ccf160e.tar.gz";
      sha256 = "1vgy7cdhx1fjdcwwxk8nwvlilfhf0y39c742d7lpi77jlfdn93cl";
    };
    meta = with lib; {
      description = ":genie: Pluggable framework for using AI code assistance in Neovim";
      homepage = "https://github.com/jameshiew/nvim-magic";
      license = with licenses; [ mit ];
    };
  };
  nvim-remote-containers = buildVimPluginFrom2Nix {
    pname = "nvim-remote-containers";
    version = "2023-08-01";
    src = fetchurl {
      url = "https://github.com/jamestthompson3/nvim-remote-containers/archive/ac76b4b193962dfc0be872feeaf10756aea459e2.tar.gz";
      sha256 = "0kx6zyzlr0r7ibvimy9nm9wg6s801sxdfawylfb8pqigfkl9ffqm";
    };
    meta = with lib; {
      description = "Develop inside docker containers, just like VSCode";
      homepage = "https://github.com/jamestthompson3/nvim-remote-containers";
    };
  };
  static-nvim = buildVimPluginFrom2Nix {
    pname = "static-nvim";
    version = "2023-09-12";
    src = fetchurl {
      url = "https://github.com/jaytyrrell13/static.nvim/archive/71a35e5907a9e5b1fcd33852831d7d2d25593cf3.tar.gz";
      sha256 = "09fr3cdx2ppb0blyjfk15ar77j6fcw3x35yl24j2ik77z6njppg5";
    };
    meta = with lib; {
      description = "Plugin for Neovim to enhance the experience of developing a site using a static site generator";
      homepage = "https://github.com/jaytyrrell13/static.nvim";
      license = with licenses; [ mit ];
    };
  };
  carrot-nvim = buildVimPluginFrom2Nix {
    pname = "carrot-nvim";
    version = "2023-04-25";
    src = fetchurl {
      url = "https://github.com/jbyuki/carrot.nvim/archive/722b9bf195fc6bccbf8151c22fb2275386f41e08.tar.gz";
      sha256 = "0cpjv912h4rdc6jg0m8wgb68i5zx9ljbj4q62w868qmdkbmfhin5";
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
    version = "2023-04-22";
    src = fetchurl {
      url = "https://github.com/jbyuki/nabla.nvim/archive/8c143ad2b3ab3b8ffbd51e238ccfcbd246452a7e.tar.gz";
      sha256 = "0dcrw8x4ky4z89r6j1kj94f8qv650n2kysaszzl5pzj6c3qllbnv";
    };
    meta = with lib; {
      description = "take your scientific notes :pencil2: in Neovim";
      homepage = "https://github.com/jbyuki/nabla.nvim";
      license = with licenses; [ mit ];
    };
  };
  one-small-step-for-vimkind = buildVimPluginFrom2Nix {
    pname = "one-small-step-for-vimkind";
    version = "2023-09-08";
    src = fetchurl {
      url = "https://github.com/jbyuki/one-small-step-for-vimkind/archive/edbb34ee779049f2071dc7becff0bbf51c865906.tar.gz";
      sha256 = "1szcn08sbs1l8sjk3z4p025b2qsa6xlws35dz28hvg18s3mlbn1a";
    };
    meta = with lib; {
      description = "Debug adapter for Neovim plugins";
      homepage = "https://github.com/jbyuki/one-small-step-for-vimkind";
      license = with licenses; [ mit ];
    };
  };
  possession-nvim = buildVimPluginFrom2Nix {
    pname = "possession-nvim";
    version = "2023-09-27";
    src = fetchurl {
      url = "https://github.com/jedrzejboczar/possession.nvim/archive/bc229593043097641c867322c7b9fe44b29e463a.tar.gz";
      sha256 = "0q8790iychj11lb18i6d1l3ray8rmkd1l96h9rm90hyrvzjscsnj";
    };
    meta = with lib; {
      description = "Flexible session management for Neovim";
      homepage = "https://github.com/jedrzejboczar/possession.nvim";
      license = with licenses; [ mit ];
    };
  };
  toggletasks-nvim = buildVimPluginFrom2Nix {
    pname = "toggletasks-nvim";
    version = "2023-03-08";
    src = fetchurl {
      url = "https://github.com/jedrzejboczar/toggletasks.nvim/archive/7138dda86bd4ec908ef5342e78c60bfbd23f4506.tar.gz";
      sha256 = "1p744q9vrpnpwi72v8kxmcpx2b1g9389hxf0gmfmvzicv9b30ars";
    };
    meta = with lib; {
      description = "Neovim task runner: JSON/YAML + toggleterm.nvim + telescope.nvim";
      homepage = "https://github.com/jedrzejboczar/toggletasks.nvim";
      license = with licenses; [ mit ];
    };
  };
  auto-pandoc-nvim = buildVimPluginFrom2Nix {
    pname = "auto-pandoc-nvim";
    version = "2023-07-30";
    src = fetchurl {
      url = "https://github.com/jghauser/auto-pandoc.nvim/archive/91d661e0e92c2d471aad65971ea7efe8252c4e25.tar.gz";
      sha256 = "1rc8p7hkcayy7lrbr864annspfj4wxk0b0alivfy3zq5jmsi3pgr";
    };
    meta = with lib; {
      description = "A neovim plugin leveraging pandoc to help you convert your markdown files. It takes pandoc options from yaml blocks";
      homepage = "https://github.com/jghauser/auto-pandoc.nvim";
      license = with licenses; [ gpl3Only ];
    };
  };
  fold-cycle-nvim = buildVimPluginFrom2Nix {
    pname = "fold-cycle-nvim";
    version = "2023-04-22";
    src = fetchurl {
      url = "https://github.com/jghauser/fold-cycle.nvim/archive/18c6fbb9882a1baf16a81cf1f96bcd02d2688df5.tar.gz";
      sha256 = "02jnsv0pc218cjdxib7gyl9a9a1g40422y533qgwp955vfgbbdiy";
    };
    meta = with lib; {
      description = "This neovim plugin allows you to cycle folds open or closed";
      homepage = "https://github.com/jghauser/fold-cycle.nvim";
      license = with licenses; [ gpl3Only ];
    };
  };
  follow-md-links-nvim = buildVimPluginFrom2Nix {
    pname = "follow-md-links-nvim";
    version = "2023-04-20";
    src = fetchurl {
      url = "https://github.com/jghauser/follow-md-links.nvim/archive/349c22ad5dea0d1bda0eb812efb35fabcd1a1c6c.tar.gz";
      sha256 = "07fwnrrg2gg81cwbzz7cqnc4l76byv1020s8nyfjsvnwgabp38l4";
    };
    meta = with lib; {
      description = "Easily follow markdown links with this neovim plugin";
      homepage = "https://github.com/jghauser/follow-md-links.nvim";
      license = with licenses; [ gpl3Only ];
    };
  };
  kitty-runner-nvim = buildVimPluginFrom2Nix {
    pname = "kitty-runner-nvim";
    version = "2023-09-17";
    src = fetchurl {
      url = "https://github.com/jghauser/kitty-runner.nvim/archive/8d2e37a9e66ccf89d7f1334b647059f70bfd3b93.tar.gz";
      sha256 = "1czk0r1x0gp6i0bjzz41slr24yqz7vlcf35xz734jqc6xxzwgzs8";
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
    version = "2023-08-16";
    src = fetchurl {
      url = "https://github.com/jghauser/papis.nvim/archive/31e7e725ab695632336b76d4ca410736a3b753f7.tar.gz";
      sha256 = "0w49nbgjzq4wvqni2cr7f1bwsvyw2x3wx207z9rw7gp7c2r15yiz";
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
  sudoku-nvim = buildVimPluginFrom2Nix {
    pname = "sudoku-nvim";
    version = "2023-03-19";
    src = fetchurl {
      url = "https://github.com/jim-fx/sudoku.nvim/archive/cb01171ed746003dd9f508e7a08a5bae2c396ef0.tar.gz";
      sha256 = "0mdiljgxlf28h1k5b7k9s2r8klay9acwaidzrpspqfjz0xbsmgaj";
    };
    meta = with lib; {
      description = "No description";
      homepage = "https://github.com/jim-fx/sudoku.nvim";
      license = with licenses; [ mit ];
    };
  };
  LspUI-nvim = buildVimPluginFrom2Nix {
    pname = "LspUI-nvim";
    version = "2023-09-30";
    src = fetchurl {
      url = "https://github.com/jinzhongjia/LspUI.nvim/archive/cf41d67bde0a0cfa2216b33ee3260cf2c4ec8c0c.tar.gz";
      sha256 = "1pvb0xp2x0akkna96bzaiv7k5pp3nf1zh0p7y69gfq9b039925ib";
    };
    meta = with lib; {
      description = "A modern and useful UI plugin that wraps lsp operations";
      homepage = "https://github.com/jinzhongjia/LspUI.nvim";
      license = with licenses; [ mit ];
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
    version = "2023-08-12";
    src = fetchurl {
      url = "https://github.com/jose-elias-alvarez/null-ls.nvim/archive/0010ea927ab7c09ef0ce9bf28c2b573fc302f5a7.tar.gz";
      sha256 = "19glmgl2n9pgs46cfakppx3hblqw4wpnascyswaa4n6x9rqjdj9m";
    };
    meta = with lib; {
      description = "Use Neovim as a language server to inject LSP diagnostics, code actions, and more via Lua";
      homepage = "https://github.com/jose-elias-alvarez/null-ls.nvim";
    };
  };
  typescript-nvim = buildVimPluginFrom2Nix {
    pname = "typescript-nvim";
    version = "2023-08-12";
    src = fetchurl {
      url = "https://github.com/jose-elias-alvarez/typescript.nvim/archive/4de85ef699d7e6010528dcfbddc2ed4c2c421467.tar.gz";
      sha256 = "053kmmidw3nrramnzz2i05zjc39dk3zmx6grd7np48qx205z4ji6";
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
    version = "2023-04-07";
    src = fetchurl {
      url = "https://github.com/jubnzv/virtual-types.nvim/archive/d652ec0b1781bbb0e83dc588fb62d638006cf61e.tar.gz";
      sha256 = "0j7md15g8vs5splr2andqgxs7mp11q6pva4l3svlmpn2zxfzykzq";
    };
    meta = with lib; {
      description = "Neovim plugin that shows type annotations as virtual text";
      homepage = "https://github.com/jubnzv/virtual-types.nvim";
      license = with licenses; [ mit ];
    };
  };
  ronny-nvim = buildVimPluginFrom2Nix {
    pname = "ronny-nvim";
    version = "2023-09-29";
    src = fetchurl {
      url = "https://github.com/judaew/ronny.nvim/archive/8ffb31e22703bcdbfb25f25342bd65983063797a.tar.gz";
      sha256 = "01w8n0mn0i4x624k2fcwl9mhf9nkwsyk5161zffsymqr1xnqdhy4";
    };
    meta = with lib; {
      description = "Neovim/Vim color scheme inspired by Monokai theme";
      homepage = "https://github.com/judaew/ronny.nvim";
      license = with licenses; [ mit ];
    };
  };
  nvim-juliana = buildVimPluginFrom2Nix {
    pname = "nvim-juliana";
    version = "2023-08-06";
    src = fetchurl {
      url = "https://github.com/kaiuri/nvim-juliana/archive/06b577d60a2557eb3cdff1fc6221e9bc45880c7e.tar.gz";
      sha256 = "034wn72qb8qvx2zg7kpzs7frjs4z8h58jfxag8xhixv3xfs74xif";
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
    version = "2023-09-11";
    src = fetchurl {
      url = "https://github.com/keaising/im-select.nvim/archive/8cf35fae61dd777a453541e765b8a375270ae356.tar.gz";
      sha256 = "1f7w0r10g93iw296k4pyyi9p10cxc0vrw808izq09608srx8dw1l";
    };
    meta = with lib; {
      description = "Switch Input Method automatically depends on Neovim's edit mode ";
      homepage = "https://github.com/keaising/im-select.nvim";
      license = with licenses; [ mit ];
    };
  };
  ranger-nvim = buildVimPluginFrom2Nix {
    pname = "ranger-nvim";
    version = "2023-08-26";
    src = fetchurl {
      url = "https://github.com/kelly-lin/ranger.nvim/archive/5df4122f51b8fd07c7cadee9f2134059c93c89c2.tar.gz";
      sha256 = "1kwjikswl06nnx49hs4yr4gwxqyfiyqchrys8qcwwwyir2l0nyim";
    };
    meta = with lib; {
      description = "Ranger plugin for neovim";
      homepage = "https://github.com/kelly-lin/ranger.nvim";
      license = with licenses; [ mit ];
    };
  };
  nvim-ufo = buildVimPluginFrom2Nix {
    pname = "nvim-ufo";
    version = "2023-09-22";
    src = fetchurl {
      url = "https://github.com/kevinhwang91/nvim-ufo/archive/6f2ccdf2da390d62f8f9e15fc5ddbcbd312e1e66.tar.gz";
      sha256 = "0m633l8as3sg1bnmdmk0w8r8b1gfyzi276i1h5l76964cgfwrsdd";
    };
    meta = with lib; {
      description = "Not UFO in the sky, but an ultra fold in Neovim";
      homepage = "https://github.com/kevinhwang91/nvim-ufo";
      license = with licenses; [ bsd3 ];
    };
  };
  edit-markdown-table-nvim = buildVimPluginFrom2Nix {
    pname = "edit-markdown-table-nvim";
    version = "2023-05-28";
    src = fetchurl {
      url = "https://github.com/kiran94/edit-markdown-table.nvim/archive/0663bc883efa38b09a6c1e8622ae4fd48efe1d8a.tar.gz";
      sha256 = "1l5cl2f3vbhpr7bkdx3k4hk04jxr0pa44k0b3zql47ac707a6vv6";
    };
    meta = with lib; {
      description = "Edit Markdown Tables from Neovim using Treesitter";
      homepage = "https://github.com/kiran94/edit-markdown-table.nvim";
      license = with licenses; [ mit ];
    };
  };
  s3edit-nvim = buildVimPluginFrom2Nix {
    pname = "s3edit-nvim";
    version = "2023-05-28";
    src = fetchurl {
      url = "https://github.com/kiran94/s3edit.nvim/archive/89d602431b750ab800b5aa2c7b46b948d7a539a1.tar.gz";
      sha256 = "12y0r21lqhyzs5i9vk3lsv997cj4mxajx0w8sxr84f1f8rbqxcfq";
    };
    meta = with lib; {
      description = "Edit files from S3 directly from Neovim";
      homepage = "https://github.com/kiran94/s3edit.nvim";
      license = with licenses; [ mit ];
    };
  };
  sqlite-lua = buildVimPluginFrom2Nix {
    pname = "sqlite-lua";
    version = "2023-04-19";
    src = fetchurl {
      url = "https://github.com/kkharji/sqlite.lua/archive/b7e28c8463254c46a8e61c52d27d6a2040492fc3.tar.gz";
      sha256 = "1p9342fhdi7sydk2b9k7vfdywb2747q6f0405fq59bf0rs3ysz9j";
    };
    meta = with lib; {
      description = "SQLite LuaJIT binding with a very simple api";
      homepage = "https://github.com/kkharji/sqlite.lua";
      license = with licenses; [ mit ];
    };
  };
  nvim-test = buildVimPluginFrom2Nix {
    pname = "nvim-test";
    version = "2023-05-02";
    src = fetchurl {
      url = "https://github.com/klen/nvim-test/archive/e06f3d029ee161f3ead6193cf27354d1eb8723c3.tar.gz";
      sha256 = "122fhn8dfm25ji551q3zwb35k32l295rilh2vzv6p9pln45yxrbk";
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
    version = "2023-08-30";
    src = fetchurl {
      url = "https://github.com/koenverburg/peepsight.nvim/archive/0cb7a4ebee31b44810212f81e8a2b4b230465bb5.tar.gz";
      sha256 = "18p9sa4lbvfvlaivww0mkdcrkf4709hxkcgnbvr5257whmnzkb03";
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
    version = "2023-08-20";
    src = fetchurl {
      url = "https://github.com/kvrohit/mellow.nvim/archive/6e5845571d4543b282cf915f2410c5b77064c014.tar.gz";
      sha256 = "0ifg60v0gn3jzlybjm55aljdy4ncsq40visnmipyyy5cxi6734rg";
    };
    meta = with lib; {
      description = "A soothing dark color scheme for neovim and friends";
      homepage = "https://github.com/kvrohit/mellow.nvim";
      license = with licenses; [ mit ];
    };
  };
  rasmus-nvim = buildVimPluginFrom2Nix {
    pname = "rasmus-nvim";
    version = "2023-07-18";
    src = fetchurl {
      url = "https://github.com/kvrohit/rasmus.nvim/archive/f824de95d446686e479781c0c2b778c177da528f.tar.gz";
      sha256 = "0iyjzv9h12wdrky1i7mn3bkijimsls8jf1s9k54lgzdmjd2vdjmi";
    };
    meta = with lib; {
      description = "A color scheme for Neovim";
      homepage = "https://github.com/kvrohit/rasmus.nvim";
    };
  };
  blue-moon = buildVimPluginFrom2Nix {
    pname = "blue-moon";
    version = "2023-09-10";
    src = fetchurl {
      url = "https://github.com/kyazdani42/blue-moon/archive/179ac53aae7a82ecbbc5a2589c304361846e8be8.tar.gz";
      sha256 = "0ay3ay58bdg3myjwy3bw7p9rsdyhf9ss7v979hysa4azzj1vzddw";
    };
    meta = with lib; {
      description = "A dark color scheme for Neovim derived from palenight and carbonight";
      homepage = "https://github.com/kyazdani42/blue-moon";
    };
  };
  nvim-surround = buildVimPluginFrom2Nix {
    pname = "nvim-surround";
    version = "2023-08-18";
    src = fetchurl {
      url = "https://github.com/kylechui/nvim-surround/archive/1c2ef599abeeb98e40706830bcd27e90e259367a.tar.gz";
      sha256 = "1pmh4ic1pjh8gjkxqwhnvldf4bzj4x3sdq4q28jzr80ax77djs0a";
    };
    meta = with lib; {
      description = "Add/change/delete surrounding delimiter pairs with ease. Written with :heart: in Lua";
      homepage = "https://github.com/kylechui/nvim-surround";
      license = with licenses; [ mit ];
    };
  };
  cobalt2-nvim = buildVimPluginFrom2Nix {
    pname = "cobalt2-nvim";
    version = "2023-06-26";
    src = fetchurl {
      url = "https://github.com/lalitmee/cobalt2.nvim/archive/74362418b19d891dadc986126a3adea1458d3372.tar.gz";
      sha256 = "1lv9292wzknjbsqjm266l7jm5phj7wwr0n8nc6wdw9q306z8hm5q";
    };
    meta = with lib; {
      description = "cobalt2 theme for neovim in Lua using colorbuddy";
      homepage = "https://github.com/lalitmee/cobalt2.nvim";
      license = with licenses; [ mit ];
    };
  };
  overlength-nvim = buildVimPluginFrom2Nix {
    pname = "overlength-nvim";
    version = "2023-09-11";
    src = fetchurl {
      url = "https://github.com/lcheylus/overlength.nvim/archive/5bef29cef1b833105509ce3aa4b60e2d396d76ed.tar.gz";
      sha256 = "1ig0i81xx399h22nxz5nvb4zjqkdmzqbvj8dq1490m0mrgib8pj8";
    };
    meta = with lib; {
      description = "A small Neovim plugin to highlight too long lines";
      homepage = "https://github.com/lcheylus/overlength.nvim";
      license = with licenses; [ mit ];
    };
  };
  gh-nvim = buildVimPluginFrom2Nix {
    pname = "gh-nvim";
    version = "2023-04-26";
    src = fetchurl {
      url = "https://github.com/ldelossa/gh.nvim/archive/2b5551656c1b896bf4ae06546eaaab00311f9a18.tar.gz";
      sha256 = "1iwgb651p70rhkmvxj0ms43wfzjy2hcc8ggzjk7nrrggk6af0bxl";
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
    version = "2023-05-04";
    src = fetchurl {
      url = "https://github.com/leafOfTree/vim-svelte-plugin/archive/612b34640919c29b5cf2d85289dbc762b099858a.tar.gz";
      sha256 = "077pk319952ajkdina891pnsrszs01vi8wwjcr5x2jnzligsyxd8";
    };
    meta = with lib; {
      description = "Vim syntax and indent plugin for .svelte files";
      homepage = "https://github.com/leafOfTree/vim-svelte-plugin";
      license = with licenses; [ unlicense ];
    };
  };
  pckr-nvim = buildVimPluginFrom2Nix {
    pname = "pckr-nvim";
    version = "2023-09-22";
    src = fetchurl {
      url = "https://github.com/lewis6991/pckr.nvim/archive/6f0959b2b44762d3fde050812415e78abc2f24a1.tar.gz";
      sha256 = "0rn66afg87mqa13y9p4qglfdc7rj6nqvp6j93kaj7ghd0ikkh120";
    };
    meta = with lib; {
      description = "Spiritual successor of https://github.com/wbthomason/packer.nvim";
      homepage = "https://github.com/lewis6991/pckr.nvim";
      license = with licenses; [ mit ];
    };
  };
  sherbet-nvim = buildVimPluginFrom2Nix {
    pname = "sherbet-nvim";
    version = "2022-12-17";
    src = fetchurl {
      url = "https://github.com/lewpoly/sherbet.nvim/archive/5c4166eff70ec551ae0023edfb89141b25cc18c6.tar.gz";
      sha256 = "015cjy4l55xq37nrcrl83531cxxk5v9f6ahn19sw4xz9f93zs1vn";
    };
    meta = with lib; {
      description = "Neovim colorscheme written in Lua";
      homepage = "https://github.com/lewpoly/sherbet.nvim";
      license = with licenses; [ gpl3Only ];
    };
  };
  nap-nvim = buildVimPluginFrom2Nix {
    pname = "nap-nvim";
    version = "2023-09-10";
    src = fetchurl {
      url = "https://github.com/liangxianzhe/nap.nvim/archive/a82a3a034c8fecdf5b357d1f88f26de6ff5949bb.tar.gz";
      sha256 = "0hzvmnzfnknh0fj2j5yrxd0g8m84jf1mz8kqi2kpxr45mvbalnps";
    };
    meta = with lib; {
      description = "Quickly move between next and previous NeoVim buffer, tab, file, quickfix, diagnostic, etc";
      homepage = "https://github.com/liangxianzhe/nap.nvim";
      license = with licenses; [ mit ];
    };
  };
  fzfx-nvim = buildVimPluginFrom2Nix {
    pname = "fzfx-nvim";
    version = "2023-10-03";
    src = fetchurl {
      url = "https://github.com/linrongbin16/fzfx.nvim/archive/5c8d535a095f14cba338ffd896bd02b25e7d7920.tar.gz";
      sha256 = "043972n1i198adf7c8gi8hmqpj1y030c82by9z4plznygscbbq0b";
    };
    meta = with lib; {
      description = "E(x)tended commands missing in fzf.vim";
      homepage = "https://github.com/linrongbin16/fzfx.nvim";
      license = with licenses; [ mit ];
    };
  };
  gitlinker-nvim = buildVimPluginFrom2Nix {
    pname = "gitlinker-nvim";
    version = "2023-09-04";
    src = fetchurl {
      url = "https://github.com/linrongbin16/gitlinker.nvim/archive/3cc5ff8d2068f0690826fad096d0296c0e189721.tar.gz";
      sha256 = "0i5gjbb70f1x86cijdq0xdl6a24ffjsv48zlfh5yryawhdh012sz";
    };
    meta = with lib; {
      description = "A fork of ruifm's gitlinker, refactored with pattern based rule engine, windows support and other enhancements";
      homepage = "https://github.com/linrongbin16/gitlinker.nvim";
      license = with licenses; [ gpl3Only ];
    };
  };
  lsp-progress-nvim = buildVimPluginFrom2Nix {
    pname = "lsp-progress-nvim";
    version = "2023-10-02";
    src = fetchurl {
      url = "https://github.com/linrongbin16/lsp-progress.nvim/archive/d647a46f8f5c44c7c98410811e22595beeeb2836.tar.gz";
      sha256 = "0yl3hlcyg9zhw95nxszkrgf1n83ncg85sg9563iagpm5f4ayjf1r";
    };
    meta = with lib; {
      description = "A performant lsp progress status for Neovim";
      homepage = "https://github.com/linrongbin16/lsp-progress.nvim";
      license = with licenses; [ mit ];
    };
  };
  key-menu-nvim = buildVimPluginFrom2Nix {
    pname = "key-menu-nvim";
    version = "2023-08-28";
    src = fetchurl {
      url = "https://github.com/linty-org/key-menu.nvim/archive/8437c2a764707d75f7ecc418035f417b70534c69.tar.gz";
      sha256 = "1z98rn74fbbg0x31nsbchl4n41y0bbfps4zg9qxjc3vmjkawdg6m";
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
    version = "2023-09-02";
    src = fetchurl {
      url = "https://github.com/lmburns/kimbox/archive/748eb71207a90086a5903bcaa82fc1c9e2b100e6.tar.gz";
      sha256 = "1q1qrsmwcx9bn0rwsn2whmm5ydkvkndrrxj03vrddbcjb8vfrd1q";
    };
    meta = with lib; {
      description = "Kimbie Dark Neovim colorscheme";
      homepage = "https://github.com/lmburns/kimbox";
    };
  };
  github-colors = buildVimPluginFrom2Nix {
    pname = "github-colors";
    version = "2023-09-28";
    src = fetchurl {
      url = "https://github.com/lourenci/github-colors/archive/97acd68bb64e5a3c5463217be10e2c47ccdcc694.tar.gz";
      sha256 = "1rh2p6k8nfn42q4gv9sxqib3fnzhm6868qilsdibx9sb0z3h0302";
    };
    meta = with lib; {
      description = "Yet another GitHub colorscheme";
      homepage = "https://github.com/lourenci/github-colors";
      license = with licenses; [ mit ];
    };
  };
  nvim-devdocs = buildVimPluginFrom2Nix {
    pname = "nvim-devdocs";
    version = "2023-10-03";
    src = fetchurl {
      url = "https://github.com/luckasRanarison/nvim-devdocs/archive/75b7c9e4229a2d3df60ffd879e096988d2569cc4.tar.gz";
      sha256 = "0zk0zdc8yzzjrwp62lcns34z8wyd73phyvg0s6zj10nwsips7dwh";
    };
    meta = with lib; {
      description = "Neovim DevDocs integration";
      homepage = "https://github.com/luckasRanarison/nvim-devdocs";
      license = with licenses; [ mit ];
    };
  };
  gruvbox-baby = buildVimPluginFrom2Nix {
    pname = "gruvbox-baby";
    version = "2023-09-28";
    src = fetchurl {
      url = "https://github.com/luisiacc/gruvbox-baby/archive/be47338877e0536360290d66d26854e90dbc0004.tar.gz";
      sha256 = "0139z9rhh2zds4lixb7fdhdpp3y4482n7n01d94zdj8n1gnm6136";
    };
    meta = with lib; {
      description = "Gruvbox theme for neovim with full 🎄TreeSitter support. ";
      homepage = "https://github.com/luisiacc/gruvbox-baby";
      license = with licenses; [ mit ];
    };
  };
  lsp-format-nvim = buildVimPluginFrom2Nix {
    pname = "lsp-format-nvim";
    version = "2023-09-13";
    src = fetchurl {
      url = "https://github.com/lukas-reineke/lsp-format.nvim/archive/e8782a5468a4849ae440a1531be559d85aebe142.tar.gz";
      sha256 = "098bfs10mqj704jkhw2w8cfjickblfidhd1nnmgjw5n88iz8rmx9";
    };
    meta = with lib; {
      description = "A wrapper around Neovims native LSP formatting";
      homepage = "https://github.com/lukas-reineke/lsp-format.nvim";
    };
  };
  nnn-nvim = buildVimPluginFrom2Nix {
    pname = "nnn-nvim";
    version = "2023-06-08";
    src = fetchurl {
      url = "https://github.com/luukvbaal/nnn.nvim/archive/4616ec65eb0370af548e356c3ec542c1b167b415.tar.gz";
      sha256 = "011wyka0iw3ma1lkzihxqi60kf6gvzbqz6x7n3d7w12fdc7lbd0g";
    };
    meta = with lib; {
      description = "File manager for Neovim powered by nnn";
      homepage = "https://github.com/luukvbaal/nnn.nvim";
      license = with licenses; [ bsd3 ];
    };
  };
  attempt-nvim = buildVimPluginFrom2Nix {
    pname = "attempt-nvim";
    version = "2023-07-05";
    src = fetchurl {
      url = "https://github.com/m-demare/attempt.nvim/archive/e6c5f29db1628f0b11cc47bb0e78b43bc1cf8f08.tar.gz";
      sha256 = "0iyv6sbrcbg0m0lpr755hs5vva30dyjc9pbpy2l04knw161p0v2h";
    };
    meta = with lib; {
      description = "Manage temporary buffers";
      homepage = "https://github.com/m-demare/attempt.nvim";
      license = with licenses; [ mit ];
    };
  };
  hlargs-nvim = buildVimPluginFrom2Nix {
    pname = "hlargs-nvim";
    version = "2023-09-15";
    src = fetchurl {
      url = "https://github.com/m-demare/hlargs.nvim/archive/6218a401824c5733ac50b264991b62d064e85ab2.tar.gz";
      sha256 = "1i8033kv56nwd4z09vm4hadr9h4y4h2jx5qnz4x1p377qngpy8av";
    };
    meta = with lib; {
      description = "Highlight arguments' definitions and usages, using Treesitter";
      homepage = "https://github.com/m-demare/hlargs.nvim";
      license = with licenses; [ gpl3Only ];
    };
  };
  baleia-nvim = buildVimPluginFrom2Nix {
    pname = "baleia-nvim";
    version = "2023-04-18";
    src = fetchurl {
      url = "https://github.com/m00qek/baleia.nvim/archive/00bb4af31c8c3865b735d40ebefa6c3f07b2dd16.tar.gz";
      sha256 = "0hz8zksw9ymzg8qyqhhxqj52fp492z8di6s37nva55njq7dm7k1m";
    };
    meta = with lib; {
      description = "Colorize text with ANSI escape sequences (8, 16, 256 or TrueColor)";
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
    version = "2023-09-16";
    src = fetchurl {
      url = "https://github.com/m4xshen/autoclose.nvim/archive/37e11589aac55b0e8810dc5865f898f9cb36fef6.tar.gz";
      sha256 = "0c1wy0d6cgyvz767f4w4l9sf7ldp8lf71cphay2l9yqv2zr0fgza";
    };
    meta = with lib; {
      description = "A minimalist Neovim plugin that auto pairs & closes brackets";
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
  inline-fold-nvim = buildVimPluginFrom2Nix {
    pname = "inline-fold-nvim";
    version = "2023-07-31";
    src = fetchurl {
      url = "https://github.com/malbertzard/inline-fold.nvim/archive/d0a24dd55c2fe9477e2636a589499fb7d530e9a3.tar.gz";
      sha256 = "1s0hzqlgb03q84swcmag65lhpaxz3s8qj18s0lfpqy73avhss2wb";
    };
    meta = with lib; {
      description = "A neovim version of the inline fold plugin";
      homepage = "https://github.com/malbertzard/inline-fold.nvim";
      license = with licenses; [ mit ];
    };
  };
  JABS-nvim = buildVimPluginFrom2Nix {
    pname = "JABS-nvim";
    version = "2023-05-09";
    src = fetchurl {
      url = "https://github.com/matbme/JABS.nvim/archive/b6dbd1a3e1b8cef3d6ebfafe96c2230ca341b65f.tar.gz";
      sha256 = "1inb5dfhvxi5570i02r0wl26qqqbypy3bfb3axzy7b9ni8zf3a7x";
    };
    meta = with lib; {
      description = "Just Another Buffer Switcher for Neovim";
      homepage = "https://github.com/matbme/JABS.nvim";
      license = with licenses; [ gpl3Only ];
    };
  };
  fluoromachine-nvim = buildVimPluginFrom2Nix {
    pname = "fluoromachine-nvim";
    version = "2023-06-28";
    src = fetchurl {
      url = "https://github.com/maxmx03/fluoromachine.nvim/archive/dffb0ae3f299eb20b782dbda575409efd2265244.tar.gz";
      sha256 = "1p81zp5j27la4z2ffbz752c1sggwif4z0sdq2mlnx38prbrp22ph";
    };
    meta = with lib; {
      description = "Synthwave x Fluoromachine port for Neovim";
      homepage = "https://github.com/maxmx03/fluoromachine.nvim";
      license = with licenses; [ mit ];
    };
  };
  tidy-nvim = buildVimPluginFrom2Nix {
    pname = "tidy-nvim";
    version = "2023-08-09";
    src = fetchurl {
      url = "https://github.com/mcauley-penney/tidy.nvim/archive/86eab24e807ed2957d26ca43b2b76b92d0fbf8f4.tar.gz";
      sha256 = "0p4hdcw37s4dhvra1svqdb7lmk4sdyvxpq79ybkfcwhc59d5b7hb";
    };
    meta = with lib; {
      description = "A small Neovim plugin to remove trailing whitespace and empty lines at end of file on every save";
      homepage = "https://github.com/mcauley-penney/tidy.nvim";
    };
  };
  zenbones-nvim = buildVimPluginFrom2Nix {
    pname = "zenbones-nvim";
    version = "2023-10-02";
    src = fetchurl {
      url = "https://github.com/mcchrish/zenbones.nvim/archive/e2a3fda09b3da0d5a23182a8ffdf03c2c2771794.tar.gz";
      sha256 = "1ra46dpbkr3ga95356qx3jcq3ssqgg8qyd2n1nwd5jgxvyliiap3";
    };
    meta = with lib; {
      description = "🪨 A collection of contrast-based Vim/Neovim colorschemes";
      homepage = "https://github.com/mcchrish/zenbones.nvim";
      license = with licenses; [ mit ];
    };
  };
  modicator-nvim = buildVimPluginFrom2Nix {
    pname = "modicator-nvim";
    version = "2023-08-25";
    src = fetchurl {
      url = "https://github.com/mawkler/modicator.nvim/archive/f0edf906a230a4ca37a32aa510d4cd346db46548.tar.gz";
      sha256 = "0c1zm2s168b7pllwhyprpfzaxra72nv9v1hlk2rniwl6vyr2fr56";
    };
    meta = with lib; {
      description = "Cursor line number mode indicator";
      homepage = "https://github.com/mawkler/modicator.nvim";
      license = with licenses; [ mit ];
    };
  };
  nvim-treehopper = buildVimPluginFrom2Nix {
    pname = "nvim-treehopper";
    version = "2023-02-24";
    src = fetchurl {
      url = "https://github.com/mfussenegger/nvim-treehopper/archive/5a28bff46c05d28bdb4bcaef67e046eb915a9390.tar.gz";
      sha256 = "1bvp03his143cv6lg9rf23v0nvfqr2nxsqc2y7yh0m9cxxmvz8x0";
    };
    meta = with lib; {
      description = "Region selection with hints on the AST nodes of a document powered by treesitter";
      homepage = "https://github.com/mfussenegger/nvim-treehopper";
      license = with licenses; [ gpl3Only ];
    };
  };
  tabline-nvim = buildVimPluginFrom2Nix {
    pname = "tabline-nvim";
    version = "2023-08-26";
    src = fetchurl {
      url = "https://github.com/mg979/tabline.nvim/archive/5e265447f5e85bb889697099a31117d38c5fa1bf.tar.gz";
      sha256 = "0cd0mc0nhlrqhbpci2x16p81q091ahdckhfik0ik63mwg9psip9b";
    };
    meta = with lib; {
      description = "No description";
      homepage = "https://github.com/mg979/tabline.nvim";
    };
  };
  sniprun = buildVimPluginFrom2Nix {
    pname = "sniprun";
    version = "2023-07-29";
    src = fetchurl {
      url = "https://github.com/michaelb/sniprun/archive/1c4bc063522946676dd178d01d6fc130d3e41da5.tar.gz";
      sha256 = "1x9ac0f2avjsk0p9sd1zgkczz8998hq9ys9fz87rsc4ygvylpslc";
    };
    meta = with lib; {
      description = "A neovim plugin to run lines/blocs of code (independently of the rest of the file), supporting multiples languages";
      homepage = "https://github.com/michaelb/sniprun";
      license = with licenses; [ mit ];
    };
  };
  kitty-scrollback-nvim = buildVimPluginFrom2Nix {
    pname = "kitty-scrollback-nvim";
    version = "2023-10-02";
    src = fetchurl {
      url = "https://github.com/mikesmithgh/kitty-scrollback.nvim/archive/97fbb4a4217eb92f6e364bddfa1bc0a5d2a8732a.tar.gz";
      sha256 = "0bnaq55l39wpn6n52cf5dl8zh9hzlql21jaam60qpqbw3ykxhrjz";
    };
    meta = with lib; {
      description = "😽 Open your Kitty scrollback buffer with Neovim. Ameowzing!";
      homepage = "https://github.com/mikesmithgh/kitty-scrollback.nvim";
    };
  };
  yarepl-nvim = buildVimPluginFrom2Nix {
    pname = "yarepl-nvim";
    version = "2023-10-02";
    src = fetchurl {
      url = "https://github.com/milanglacier/yarepl.nvim/archive/8099a5d3d68a1dcb787298669fc5e118af8d4ad2.tar.gz";
      sha256 = "1k6hlslblx9nvri2r34w7sab51dpbdggl06vgk7jmlii6s7ss4dq";
    };
    meta = with lib; {
      description = "Yet Another REPL, flexible, supporting multiple paradigms to interact with REPLs, project-level configs, working with tmux, telescope integration, and native dot repeat";
      homepage = "https://github.com/milanglacier/yarepl.nvim";
      license = with licenses; [ gpl3Only ];
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
    version = "2023-03-01";
    src = fetchurl {
      url = "https://github.com/miversen33/import.nvim/archive/d23079db1fab1eb85e430680ef1e3f45d0b57759.tar.gz";
      sha256 = "0yx6lhh2x6pwl6c7by1p6j2fiq520ddmf19md2xgyd5fwlmsgjqm";
    };
    meta = with lib; {
      description = "A safe require override with niceties";
      homepage = "https://github.com/miversen33/import.nvim";
      license = with licenses; [ mit ];
    };
  };
  iswap-nvim = buildVimPluginFrom2Nix {
    pname = "iswap-nvim";
    version = "2023-09-11";
    src = fetchurl {
      url = "https://github.com/mizlan/iswap.nvim/archive/623f46106731d4a981b83f11cc567985fa94f516.tar.gz";
      sha256 = "1spqybpqzdnm2zvxn1ms0z08rcjphwiyil9gbrs8659p8w9n4vjz";
    };
    meta = with lib; {
      description = "Interactively select and swap function arguments, list elements, and much more. Powered by tree-sitter";
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
    version = "2023-09-09";
    src = fetchurl {
      url = "https://github.com/monaqa/dial.nvim/archive/611cf5e84f655c96318b803785f89e3146d8e48f.tar.gz";
      sha256 = "1ycrl5d2ky3p3h66dxacclp5kp771x2bac3zhlh5rihx3ff2bkb6";
    };
    meta = with lib; {
      description = "enhanced increment/decrement plugin for Neovim";
      homepage = "https://github.com/monaqa/dial.nvim";
      license = with licenses; [ mit ];
    };
  };
  matchparen-nvim = buildVimPluginFrom2Nix {
    pname = "matchparen-nvim";
    version = "2023-07-19";
    src = fetchurl {
      url = "https://github.com/monkoose/matchparen.nvim/archive/9f39b61f846befe5eda80a20cdc76c86c4a4f2fd.tar.gz";
      sha256 = "05xrzis4aqimww1nwjmr7v7rwbc8mj1dj441gazsqna85l9rxcx2";
    };
    meta = with lib; {
      description = "alternative to matchparen neovim plugin ";
      homepage = "https://github.com/monkoose/matchparen.nvim";
      license = with licenses; [ mit ];
    };
  };
  legendary-nvim = buildVimPluginFrom2Nix {
    pname = "legendary-nvim";
    version = "2023-07-08";
    src = fetchurl {
      url = "https://github.com/mrjones2014/legendary.nvim/archive/3db15cae08d63bab40d0c38474e368f97414f090.tar.gz";
      sha256 = "1b13qdw9xv7q47j3fvla3n4skwidm6lm6szb734i8az086a5jkpj";
    };
    meta = with lib; {
      description = "🗺️ A legend for your keymaps, commands, and autocmds, with which-key.nvim integration";
      homepage = "https://github.com/mrjones2014/legendary.nvim";
      license = with licenses; [ mit ];
    };
  };
  luv-vimdocs = buildVimPluginFrom2Nix {
    pname = "luv-vimdocs";
    version = "2023-02-08";
    src = fetchurl {
      url = "https://github.com/nanotee/luv-vimdocs/archive/997b9338fd3ac91a53bbdc19110c127e3bea01c4.tar.gz";
      sha256 = "0wc9cjam5dhlpggq28ggj7ajfx4y5l34wkgkbwgr1m40yvrxk5f5";
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
    version = "2023-05-21";
    src = fetchurl {
      url = "https://github.com/nanotee/sqls.nvim/archive/4b1274b5b44c48ce784aac23747192f5d9d26207.tar.gz";
      sha256 = "1vn00yxvsxr4siywmvnv66cx6w5lvxi2v7wqmxrkc2bndjqxww2r";
    };
    meta = with lib; {
      description = "Neovim plugin for sqls that leverages the built-in LSP client";
      homepage = "https://github.com/nanotee/sqls.nvim";
      license = with licenses; [ mit ];
    };
  };
  tabby-nvim = buildVimPluginFrom2Nix {
    pname = "tabby-nvim";
    version = "2023-09-21";
    src = fetchurl {
      url = "https://github.com/nanozuki/tabby.nvim/archive/9e537762cbb7647357eab22c61c7c5dda00138dd.tar.gz";
      sha256 = "1l1ffmfz71p5d1a355vhwiy5pm4yc8yqrwvfwlvw4qvny5wn5lns";
    };
    meta = with lib; {
      description = "A declarative, highly configurable, and neovim style tabline plugin. Use your nvim tabs as a workspace multiplexer!";
      homepage = "https://github.com/nanozuki/tabby.nvim";
      license = with licenses; [ mit ];
    };
  };
  workspaces-nvim = buildVimPluginFrom2Nix {
    pname = "workspaces-nvim";
    version = "2023-08-24";
    src = fetchurl {
      url = "https://github.com/natecraddock/workspaces.nvim/archive/a6fb4995333f927cc6f707890800fa7f7c476043.tar.gz";
      sha256 = "120q9x61k3ylnybcn9dz00q5yix3m8k69imhrm9a5m1ciqyfshja";
    };
    meta = with lib; {
      description = "a simple plugin to manage workspace directories in neovim";
      homepage = "https://github.com/natecraddock/workspaces.nvim";
      license = with licenses; [ mit ];
    };
  };
  everforest-nvim = buildVimPluginFrom2Nix {
    pname = "everforest-nvim";
    version = "2023-09-06";
    src = fetchurl {
      url = "https://github.com/neanias/everforest-nvim/archive/64f290dd2d00ae54132589b55bf9454370eb7cd8.tar.gz";
      sha256 = "059avbl1n8px6fhsf8f87qnm065v0icgl0g4mb770dnlgvxm6klr";
    };
    meta = with lib; {
      description = "A Lua port of the Everforest colour scheme";
      homepage = "https://github.com/neanias/everforest-nvim";
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
    version = "2023-10-01";
    src = fetchurl {
      url = "https://github.com/nguyenvukhang/nvim-toggler/archive/7797634fd0e85e8f31da4911765d116fa63b4ae9.tar.gz";
      sha256 = "0y9xsrjwda0fwsvqyrvibzxbxc69mr5sa1rrpif2aql87r9bn2ap";
    };
    meta = with lib; {
      description = "invert text in vim, purely with lua";
      homepage = "https://github.com/nguyenvukhang/nvim-toggler";
      license = with licenses; [ mit ];
    };
  };
  neomux = buildVimPluginFrom2Nix {
    pname = "neomux";
    version = "2023-04-14";
    src = fetchurl {
      url = "https://github.com/nikvdp/neomux/archive/c3d253864784fdb33cc5013b7afc4f0910e2cac3.tar.gz";
      sha256 = "0xmvhxdv1p0vpd385bghfvnqx07i232xf3jsiagqsjf3jpgrmc5v";
    };
    meta = with lib; {
      description = "Control Neovim from shells running inside Neovim";
      homepage = "https://github.com/nikvdp/neomux";
      license = with licenses; [ mit ];
    };
  };
  code-shot-nvim = buildVimPluginFrom2Nix {
    pname = "code-shot-nvim";
    version = "2023-08-18";
    src = fetchurl {
      url = "https://github.com/niuiic/code-shot.nvim/archive/cd854d56833fe4a77e00dc246a32cefc6330c604.tar.gz";
      sha256 = "1vpg4qvljbcj30vsz7w91v13sswg8p1az30pv6wj279k0sm22qkq";
    };
    meta = with lib; {
      description = "Neovim plugin to shot code";
      homepage = "https://github.com/niuiic/code-shot.nvim";
      license = with licenses; [ mit ];
    };
  };
  cp-image-nvim = buildVimPluginFrom2Nix {
    pname = "cp-image-nvim";
    version = "2023-07-14";
    src = fetchurl {
      url = "https://github.com/niuiic/cp-image.nvim/archive/10ed5f2048f7ec28f24121cfcc383b4c6ee8e629.tar.gz";
      sha256 = "1znkgqs23xy7si4faa5x06d4fnknvwnxfrcpiwhmsnf3nygagclz";
    };
    meta = with lib; {
      description = "Quickly insert image in neovim";
      homepage = "https://github.com/niuiic/cp-image.nvim";
      license = with licenses; [ mit ];
    };
  };
  dap-utils-nvim = buildVimPluginFrom2Nix {
    pname = "dap-utils-nvim";
    version = "2023-07-19";
    src = fetchurl {
      url = "https://github.com/niuiic/dap-utils.nvim/archive/7ec16adc488616ba827fca90524e0d6a051e5678.tar.gz";
      sha256 = "0a6zg3a2sr4paiqrmci8d422jwfqimswms0mvwyj01c11vd108n2";
    };
    meta = with lib; {
      description = "Better use of nvim-dap";
      homepage = "https://github.com/niuiic/dap-utils.nvim";
      license = with licenses; [ mit ];
    };
  };
  divider-nvim = buildVimPluginFrom2Nix {
    pname = "divider-nvim";
    version = "2023-07-19";
    src = fetchurl {
      url = "https://github.com/niuiic/divider.nvim/archive/b8a11e2ede20da73e2d78e146baa293c2e2b7a01.tar.gz";
      sha256 = "1j1mxvspjyh6jjq1bdw5p1h2rsf6x6wv10gg0a57hh3cph6ivnqj";
    };
    meta = with lib; {
      description = "Divider line for neovim";
      homepage = "https://github.com/niuiic/divider.nvim";
      license = with licenses; [ mit ];
    };
  };
  format-nvim = buildVimPluginFrom2Nix {
    pname = "format-nvim";
    version = "2023-09-17";
    src = fetchurl {
      url = "https://github.com/niuiic/format.nvim/archive/5bc6846406dcb791edbf02f847fc687b74c45ec7.tar.gz";
      sha256 = "1kyknqap5khcrbxgwssr48sspxi1s5wqs6bd026b7f2l30a15rb9";
    };
    meta = with lib; {
      description = "An asynchronous, multitasking, and highly configurable formatting plugin";
      homepage = "https://github.com/niuiic/format.nvim";
      license = with licenses; [ mit ];
    };
  };
  git-log-nvim = buildVimPluginFrom2Nix {
    pname = "git-log-nvim";
    version = "2023-09-29";
    src = fetchurl {
      url = "https://github.com/niuiic/git-log.nvim/archive/187f2e6c22848ff3487cf4cf50dc4cd412a90e0e.tar.gz";
      sha256 = "182ay3i9yb1k4vca5jsbd2mgyixhlwzf85jyaiy5ny8b9ygi4jzj";
    };
    meta = with lib; {
      description = "Check git log of the selected code";
      homepage = "https://github.com/niuiic/git-log.nvim";
      license = with licenses; [ mit ];
    };
  };
  multiple-session-nvim = buildVimPluginFrom2Nix {
    pname = "multiple-session-nvim";
    version = "2023-07-15";
    src = fetchurl {
      url = "https://github.com/niuiic/multiple-session.nvim/archive/bd866f1b165e4c30b75b7fadf507732fd3c968cc.tar.gz";
      sha256 = "1m5z3i6ksrrlxck0dmf920pn3ajswnqb7gy1baxi3ibbfl3x295m";
    };
    meta = with lib; {
      description = "Session manager for neovim";
      homepage = "https://github.com/niuiic/multiple-session.nvim";
      license = with licenses; [ mit ];
    };
  };
  part-edit-nvim = buildVimPluginFrom2Nix {
    pname = "part-edit-nvim";
    version = "2023-07-18";
    src = fetchurl {
      url = "https://github.com/niuiic/part-edit.nvim/archive/45557dd188d93ec5c4a5486731f553f138a3cc96.tar.gz";
      sha256 = "06h6psl2jghbgs4lwg3hc7mwq2zppx6a493r8h7pjyp52rlv17zy";
    };
    meta = with lib; {
      description = "Edit a part of a file individually";
      homepage = "https://github.com/niuiic/part-edit.nvim";
      license = with licenses; [ mit ];
    };
  };
  translate-nvim = buildVimPluginFrom2Nix {
    pname = "translate-nvim";
    version = "2023-07-18";
    src = fetchurl {
      url = "https://github.com/niuiic/translate.nvim/archive/dbe51100db78cb011bb0147bc0805a5e35824240.tar.gz";
      sha256 = "01ixyfnzc9h9hvwhj6p83lzfn7xy420y1fn1b803qg7ad3w5gcms";
    };
    meta = with lib; {
      description = "Highly configurable translation plugin for neovim";
      homepage = "https://github.com/niuiic/translate.nvim";
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
    version = "2023-10-03";
    src = fetchurl {
      url = "https://github.com/willothy/nvim-cokeline/archive/90d728627d13097733a17d6abafc343a78d1bd71.tar.gz";
      sha256 = "1bv3av0f6rnvbkj6wvsz37b8iv6q3w9wbd52bfx0l5kszfxc79wb";
    };
    meta = with lib; {
      description = ":nose: A Neovim bufferline for people with addictive personalities";
      homepage = "https://github.com/willothy/nvim-cokeline";
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
    version = "2023-08-18";
    src = fetchurl {
      url = "https://github.com/notomo/cmdbuf.nvim/archive/facbf09bf037ffd5df5293db8e736db569bf4627.tar.gz";
      sha256 = "0pdlc26d8iw56m2qis74np4bq3jlzg836z9ialz14bqh32n1d2m4";
    };
    meta = with lib; {
      description = "Alternative command-line window plugin for neovim";
      homepage = "https://github.com/notomo/cmdbuf.nvim";
      license = with licenses; [ mit ];
    };
  };
  gesture-nvim = buildVimPluginFrom2Nix {
    pname = "gesture-nvim";
    version = "2023-08-19";
    src = fetchurl {
      url = "https://github.com/notomo/gesture.nvim/archive/b0326ce7928a7ab26078b642b03699a6691dedd8.tar.gz";
      sha256 = "1sickj08y38xsrl8whpikv9ps39jdzniivzj6rx4blp7xkhh3gni";
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
    version = "2023-08-07";
    src = fetchurl {
      url = "https://github.com/numToStr/Comment.nvim/archive/0236521ea582747b58869cb72f70ccfa967d2e89.tar.gz";
      sha256 = "1sda94xkxpnk7mljgy940rjhwf3jg4wb08namkbvr95728zns1l1";
    };
    meta = with lib; {
      description = ":brain: :muscle: // Smart and powerful comment plugin for neovim. Supports treesitter, dot repeat, left-right/up-down motions, hooks, and more";
      homepage = "https://github.com/numToStr/Comment.nvim";
      license = with licenses; [ mit ];
    };
  };
  colortils-nvim = buildVimPluginFrom2Nix {
    pname = "colortils-nvim";
    version = "2023-04-26";
    src = fetchurl {
      url = "https://github.com/nvim-colortils/colortils.nvim/archive/435d4de7a007b83b1b07152276960018f4583cbd.tar.gz";
      sha256 = "19ywys6zccijw9d37wadz3rkvr9vxa91465njahdynllvfn62nz2";
    };
    meta = with lib; {
      description = "Some color utils for neovim";
      homepage = "https://github.com/nvim-colortils/colortils.nvim";
      license = with licenses; [ gpl2Only ];
    };
  };
  neo-tree-nvim = buildVimPluginFrom2Nix {
    pname = "neo-tree-nvim";
    version = "2023-09-30";
    src = fetchurl {
      url = "https://github.com/nvim-neo-tree/neo-tree.nvim/archive/7e2a3caf999e2028abb643eb0472f351b2777591.tar.gz";
      sha256 = "1hk6hncn7p9c7df9pj8n14jzsfy8zan5yrb14v2hwqi39haivdh1";
    };
    meta = with lib; {
      description = "Neovim plugin to manage the file system and other tree like structures";
      homepage = "https://github.com/nvim-neo-tree/neo-tree.nvim";
      license = with licenses; [ mit ];
    };
  };
  luarocks-tag-release = buildVimPluginFrom2Nix {
    pname = "luarocks-tag-release";
    version = "2023-10-03";
    src = fetchurl {
      url = "https://github.com/nvim-neorocks/luarocks-tag-release/archive/003ae14ee1f43a28dce390921b065e613a6c2fc0.tar.gz";
      sha256 = "0bqhiranfk0h97f2aj456bnkkm7imiklamn8p1bnhj3747n0a6mz";
    };
    meta = with lib; {
      description = "GitHub workflow for automatically generating Luarocks releases from tags and running busted tests";
      homepage = "https://github.com/nvim-neorocks/luarocks-tag-release";
      license = with licenses; [ agpl3Only ];
    };
  };
  neotest = buildVimPluginFrom2Nix {
    pname = "neotest";
    version = "2023-09-10";
    src = fetchurl {
      url = "https://github.com/nvim-neotest/neotest/archive/1e67a504d03def3a6a1125d934cb511680f72555.tar.gz";
      sha256 = "0zq43zw8pwyn2lcvg4w284jvj51hs74a8d81s23zkfq4q28gxmpx";
    };
    meta = with lib; {
      description = "An extensible framework for interacting with tests within NeoVim";
      homepage = "https://github.com/nvim-neotest/neotest";
      license = with licenses; [ mit ];
    };
  };
  telescope-bibtex-nvim = buildVimPluginFrom2Nix {
    pname = "telescope-bibtex-nvim";
    version = "2023-07-30";
    src = fetchurl {
      url = "https://github.com/nvim-telescope/telescope-bibtex.nvim/archive/e4dcf64d351db23b14be3563190cf68d5cd49e90.tar.gz";
      sha256 = "0mzxc6sraiam5w2ipmn90ckxmvgb0587451kpiqkkfmr3w1r5fm4";
    };
    meta = with lib; {
      description = "A telescope.nvim extension to search and paste bibtex entries into your TeX files";
      homepage = "https://github.com/nvim-telescope/telescope-bibtex.nvim";
      license = with licenses; [ mit ];
    };
  };
  nvim-treesitter-context = buildVimPluginFrom2Nix {
    pname = "nvim-treesitter-context";
    version = "2023-10-01";
    src = fetchurl {
      url = "https://github.com/nvim-treesitter/nvim-treesitter-context/archive/bc19b78e9c705d67be98d56e9fab96470af45f33.tar.gz";
      sha256 = "01sckm8brh54nvrq1843xsl5dab7mh3iw7vz57cbwihis8zzii7i";
    };
    meta = with lib; {
      description = "Show code context";
      homepage = "https://github.com/nvim-treesitter/nvim-treesitter-context";
      license = with licenses; [ mit ];
    };
  };
  colorful-winsep-nvim = buildVimPluginFrom2Nix {
    pname = "colorful-winsep-nvim";
    version = "2023-05-31";
    src = fetchurl {
      url = "https://github.com/nvim-zh/colorful-winsep.nvim/archive/e1b72c498f25c1fc37a7e9913332c137f753a90a.tar.gz";
      sha256 = "0pasx4kdgdzhhgmm4d9nn29b1kr5vjk86vv911ak9jcf0l6rsciz";
    };
    meta = with lib; {
      description = "Make your nvim window separators colorful";
      homepage = "https://github.com/nvim-zh/colorful-winsep.nvim";
      license = with licenses; [ mit ];
    };
  };
  dashboard-nvim = buildVimPluginFrom2Nix {
    pname = "dashboard-nvim";
    version = "2023-09-30";
    src = fetchurl {
      url = "https://github.com/nvimdev/dashboard-nvim/archive/b2637e92a294068d79cde7929094f050981c5969.tar.gz";
      sha256 = "123f8mf01rrbg63i8ach40bwmvwc1aihhnwirf8pzkcsxcfy4psl";
    };
    meta = with lib; {
      description = "vim dashboard";
      homepage = "https://github.com/nvimdev/dashboard-nvim";
      license = with licenses; [ mit ];
    };
  };
  indentmini-nvim = buildVimPluginFrom2Nix {
    pname = "indentmini-nvim";
    version = "2023-09-01";
    src = fetchurl {
      url = "https://github.com/nvimdev/indentmini.nvim/archive/a58129ae424fd6d8e0e2e7f6ce06c0443101e370.tar.gz";
      sha256 = "0f4jsnhyq49kmswdzcj8wwqnkv1zsglspq17zabkwxwq3b97yzpm";
    };
    meta = with lib; {
      description = "A minimal and blazing fast indentline plugin";
      homepage = "https://github.com/nvimdev/indentmini.nvim";
      license = with licenses; [ mit ];
    };
  };
  zephyr-nvim = buildVimPluginFrom2Nix {
    pname = "zephyr-nvim";
    version = "2022-12-31";
    src = fetchurl {
      url = "https://github.com/nvimdev/zephyr-nvim/archive/7fd86b7164442d3b5ec2c81b2694d040e716b5cf.tar.gz";
      sha256 = "0cd6y012fpfnpl4c059idxabx4jn4mg7637pz8xncj1ivaizfd00";
    };
    meta = with lib; {
      description = "A dark neovim colorscheme written in lua";
      homepage = "https://github.com/nvimdev/zephyr-nvim";
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
    version = "2023-06-01";
    src = fetchurl {
      url = "https://github.com/nyngwang/NeoNoName.lua/archive/4712b693d5d79edc372175b0c1e5da91f40fad1d.tar.gz";
      sha256 = "0a6wlc1ryjm9g199rb984l4m8lv93mws7y6xi8q6f79c2qhzck29";
    };
    meta = with lib; {
      description = "Layout preserving buffer deletion";
      homepage = "https://github.com/nyngwang/NeoNoName.lua";
      license = with licenses; [ mit ];
    };
  };
  NeoRoot-lua = buildVimPluginFrom2Nix {
    pname = "NeoRoot-lua";
    version = "2023-02-08";
    src = fetchurl {
      url = "https://github.com/nyngwang/NeoRoot.lua/archive/215178e1bfbb0e9fc82b1179e42c2cafd594d324.tar.gz";
      sha256 = "07k8dlgl84713hd4gfs9cnjcxm34ipml3q27hx82m9whij97a94z";
    };
    meta = with lib; {
      description = "Yet another light-weight rooter written in Lua";
      homepage = "https://github.com/nyngwang/NeoRoot.lua";
    };
  };
  NeoTerm-lua = buildVimPluginFrom2Nix {
    pname = "NeoTerm-lua";
    version = "2023-06-22";
    src = fetchurl {
      url = "https://github.com/nyngwang/NeoTerm.lua/archive/f71a4a9663c52673a677a09894d945983c8da303.tar.gz";
      sha256 = "025v1p08vqi1wxwpv6czjlqcijj3a4cpb7l54l21xszczg3cq7i3";
    };
    meta = with lib; {
      description = "You can attach a terminal-buffer for each buffer";
      homepage = "https://github.com/nyngwang/NeoTerm.lua";
      license = with licenses; [ mit ];
    };
  };
  NeoWell-lua = buildVimPluginFrom2Nix {
    pname = "NeoWell-lua";
    version = "2023-05-11";
    src = fetchurl {
      url = "https://github.com/nyngwang/NeoWell.lua/archive/48e8776c73644de1b77122c97d530a9364a3b2db.tar.gz";
      sha256 = "1a589blpr6xxjr4k6mf95w8imagrcxxv7myqws0rgas2cc59fxav";
    };
    meta = with lib; {
      description = "Well... I will fix this line later";
      homepage = "https://github.com/nyngwang/NeoWell.lua";
    };
  };
  murmur-lua = buildVimPluginFrom2Nix {
    pname = "murmur-lua";
    version = "2023-07-20";
    src = fetchurl {
      url = "https://github.com/nyngwang/murmur.lua/archive/85d3f1c3e98fa60b523abf40f4951d4ddb44fa54.tar.gz";
      sha256 = "01sqic28ichaxfd8jy370bdyyz8m1mjimqapw8dyh3fv6v224ahp";
    };
    meta = with lib; {
      description = "super-fast cursor word highlighting with callbacks(I call them murmurs) included";
      homepage = "https://github.com/nyngwang/murmur.lua";
    };
  };
  nvimgelion = buildVimPluginFrom2Nix {
    pname = "nvimgelion";
    version = "2023-06-21";
    src = fetchurl {
      url = "https://github.com/nyngwang/nvimgelion/archive/00415dc607300239f0d3e6097f8430738e658ba0.tar.gz";
      sha256 = "1qanx4aq40kb1d9pfll8i835ap3n30m5z578fc274nqj321h01xp";
    };
    meta = with lib; {
      description = "Evangelion but for Vimmers";
      homepage = "https://github.com/nyngwang/nvimgelion";
      license = with licenses; [ mit ];
    };
  };
  suave-lua = buildVimPluginFrom2Nix {
    pname = "suave-lua";
    version = "2023-05-11";
    src = fetchurl {
      url = "https://github.com/nyngwang/suave.lua/archive/3ac3d4096974ea0aefa9c713f47aaaff1088b30d.tar.gz";
      sha256 = "1c82c614x81ihp5ssm3a8snh7mplws8csy7cjkw6f6i23wk3hj3j";
    };
    meta = with lib; {
      description = "Multi-tabs project session automation";
      homepage = "https://github.com/nyngwang/suave.lua";
      license = with licenses; [ mit ];
    };
  };
  goto-breakpoints-nvim = buildVimPluginFrom2Nix {
    pname = "goto-breakpoints-nvim";
    version = "2023-03-14";
    src = fetchurl {
      url = "https://github.com/ofirgall/goto-breakpoints.nvim/archive/e57cf63d152534db3a9177ae53abbff43fcab6c2.tar.gz";
      sha256 = "15w84qbd98v6q5dvjkps6gqhmvvm7al626dnz9mg8fjkgxdma2vm";
    };
    meta = with lib; {
      description = "Cycle between breakpoints with keymappings for nvim-dap";
      homepage = "https://github.com/ofirgall/goto-breakpoints.nvim";
      license = with licenses; [ mit ];
    };
  };
  ofirkai-nvim = buildVimPluginFrom2Nix {
    pname = "ofirkai-nvim";
    version = "2023-09-28";
    src = fetchurl {
      url = "https://github.com/ofirgall/ofirkai.nvim/archive/746029cd1852537ac6565bc4c6abf7282ab7bfd9.tar.gz";
      sha256 = "05v9y8952zqskfdwc5sc4rlbk72ywsm85pcz74h9709mvl5r3xjc";
    };
    meta = with lib; {
      description = "Color scheme for neovim, based on SublimeText 4 monokai";
      homepage = "https://github.com/ofirgall/ofirkai.nvim";
      license = with licenses; [ mit ];
    };
  };
  open-nvim = buildVimPluginFrom2Nix {
    pname = "open-nvim";
    version = "2023-07-06";
    src = fetchurl {
      url = "https://github.com/ofirgall/open.nvim/archive/1cabf5fc2c0d59d6273c932546d5465104ad278f.tar.gz";
      sha256 = "1s2fdkhjpx28mmg4bb6h0hv4wf5w9szylwfpw99cn8psr2zw4psy";
    };
    meta = with lib; {
      description = "Open the current word with custom openers, GitHub shorthands for example";
      homepage = "https://github.com/ofirgall/open.nvim";
      license = with licenses; [ gpl3Only ];
    };
  };
  nvim-hardline = buildVimPluginFrom2Nix {
    pname = "nvim-hardline";
    version = "2023-08-20";
    src = fetchurl {
      url = "https://github.com/ojroques/nvim-hardline/archive/f41103023d8405bf9c79dad6567a4f4d6424413d.tar.gz";
      sha256 = "1xd1yfp6s5vy5d4h7whhxsk6338h4sjjnw4k4c5w4k83j8las7gn";
    };
    meta = with lib; {
      description = "A simple Neovim statusline";
      homepage = "https://github.com/ojroques/nvim-hardline";
      license = with licenses; [ bsd2 ];
    };
  };
  nvim-lspfuzzy = buildVimPluginFrom2Nix {
    pname = "nvim-lspfuzzy";
    version = "2023-06-28";
    src = fetchurl {
      url = "https://github.com/ojroques/nvim-lspfuzzy/archive/f22dd8e85d3bcf30950df0a99d9fab3a6aa4840f.tar.gz";
      sha256 = "0p2zmifd92g8h6ish7r1vnsw9pmir8mzh4886ackn8xhn7xr8g6k";
    };
    meta = with lib; {
      description = "A Neovim plugin to make the LSP client use FZF";
      homepage = "https://github.com/ojroques/nvim-lspfuzzy";
      license = with licenses; [ bsd2 ];
    };
  };
  auto-save-nvim = buildVimPluginFrom2Nix {
    pname = "auto-save-nvim";
    version = "2023-07-27";
    src = fetchurl {
      url = "https://github.com/okuuva/auto-save.nvim/archive/610e72307d675fcc15098c5a435ad89e45aaf855.tar.gz";
      sha256 = "12pazf1m4mq1jq32ybv4x9j79rdz8hrplvq9ignah48jji5hpzm2";
    };
    meta = with lib; {
      description = "🧶 Automatically save your changes in NeoVim";
      homepage = "https://github.com/okuuva/auto-save.nvim";
      license = with licenses; [ gpl3Only ];
    };
  };
  gopher-nvim = buildVimPluginFrom2Nix {
    pname = "gopher-nvim";
    version = "2023-05-07";
    src = fetchurl {
      url = "https://github.com/olexsmir/gopher.nvim/archive/03cabf675ce129c28bd855969a3e569edcf63366.tar.gz";
      sha256 = "1kvpbr7wlc2kybh4ml6hkc8vc1yq8pv9g05jc7jwjzrxizs0359l";
    };
    meta = with lib; {
      description = "Neovim plugin for make golang development easiest";
      homepage = "https://github.com/olexsmir/gopher.nvim";
    };
  };
  persisted-nvim = buildVimPluginFrom2Nix {
    pname = "persisted-nvim";
    version = "2023-08-11";
    src = fetchurl {
      url = "https://github.com/olimorris/persisted.nvim/archive/315cd1a8a501ca8e0c1d55f0c245b9cc0e1ffa01.tar.gz";
      sha256 = "1pg5h4b3w95yaxcxysw5wwghzfnrvcmg8ygbhzcw9lfmhn2l9mkv";
    };
    meta = with lib; {
      description = "💾 Simple session management for Neovim with git branching, autoloading and Telescope support";
      homepage = "https://github.com/olimorris/persisted.nvim";
      license = with licenses; [ mit ];
    };
  };
  poimandres-nvim = buildVimPluginFrom2Nix {
    pname = "poimandres-nvim";
    version = "2023-08-16";
    src = fetchurl {
      url = "https://github.com/olivercederborg/poimandres.nvim/archive/77635055e686ae3c8a519198006ff0b43b6b2eae.tar.gz";
      sha256 = "0xy8a40zp72rlk0y3ka9s7r7b4pqjlp99dr8m1rhh97w132ii33w";
    };
    meta = with lib; {
      description = "Poimandres colorscheme for Neovim written in Lua";
      homepage = "https://github.com/olivercederborg/poimandres.nvim";
    };
  };
  lspkind-nvim = buildVimPluginFrom2Nix {
    pname = "lspkind-nvim";
    version = "2023-05-05";
    src = fetchurl {
      url = "https://github.com/onsails/lspkind.nvim/archive/57610d5ab560c073c465d6faf0c19f200cb67e6e.tar.gz";
      sha256 = "10xm1nphqsn541hnfldlwhvia3ahwpbahak0h418wv6zbhdq59if";
    };
    meta = with lib; {
      description = "vscode-like pictograms for neovim lsp completion items";
      homepage = "https://github.com/onsails/lspkind.nvim";
      license = with licenses; [ mit ];
    };
  };
  scribe-nvim = buildVimPluginFrom2Nix {
    pname = "scribe-nvim";
    version = "2023-02-02";
    src = fetchurl {
      url = "https://github.com/Ostralyan/scribe.nvim/archive/e1c95d6c86c88a199f8c94e7a2a835db2eaf28ea.tar.gz";
      sha256 = "1rwc7dvnrbdhgmrl5rg9q51p136sbzlja3x9mrbv7is3wlfxdag6";
    };
    meta = with lib; {
      description = "An easy note taking plugin";
      homepage = "https://github.com/Ostralyan/scribe.nvim";
      license = with licenses; [ gpl3Only ];
    };
  };
  telescope-alternate-nvim = buildVimPluginFrom2Nix {
    pname = "telescope-alternate-nvim";
    version = "2023-08-17";
    src = fetchurl {
      url = "https://github.com/otavioschwanck/telescope-alternate.nvim/archive/bdf3efe80b2901efc6a17cb2c161eaf2aa8af0b1.tar.gz";
      sha256 = "1dyd8y0dwcss753y4xxdi46vz3z4ygfgdrph3v0l8y1dyyrkld62";
    };
    meta = with lib; {
      description = "Alternate between common files using pre-defined regexp.  Just map the patterns and starting navigating between files that are related";
      homepage = "https://github.com/otavioschwanck/telescope-alternate.nvim";
    };
  };
  tmux-awesome-manager-nvim = buildVimPluginFrom2Nix {
    pname = "tmux-awesome-manager-nvim";
    version = "2023-04-04";
    src = fetchurl {
      url = "https://github.com/otavioschwanck/tmux-awesome-manager.nvim/archive/9bd40de158353efcc314b5ac1c1a7e3cfb77b872.tar.gz";
      sha256 = "0lg88sipnrzdx1yi6mhjrbarn02rif4p3phr4a9licxwkfzhsf6h";
    };
    meta = with lib; {
      description = "TMUX Commands manager / runner for Neovim";
      homepage = "https://github.com/otavioschwanck/tmux-awesome-manager.nvim";
    };
  };
  cphelper-nvim = buildVimPluginFrom2Nix {
    pname = "cphelper-nvim";
    version = "2023-06-01";
    src = fetchurl {
      url = "https://github.com/p00f/cphelper.nvim/archive/ab259315496514d58b2021048ef40437ad0f5814.tar.gz";
      sha256 = "17rsw7vlc1i6piflj4mc66gy3f7aiqymwzgb4vfn6gjw8y1lk7nj";
    };
    meta = with lib; {
      description = "Neovim helper for competitive programming. Use https://sr.ht/~p00f/cphelper.nvim instead";
      homepage = "https://github.com/p00f/cphelper.nvim";
      license = with licenses; [ mit ];
    };
  };
  nvim-scrollbar = buildVimPluginFrom2Nix {
    pname = "nvim-scrollbar";
    version = "2023-05-23";
    src = fetchurl {
      url = "https://github.com/petertriho/nvim-scrollbar/archive/35f99d559041c7c0eff3a41f9093581ceea534e8.tar.gz";
      sha256 = "003vb3mjqa5d94ff68nlkn6d5d9b83sn3ja7bda07k94a6cs2qyw";
    };
    meta = with lib; {
      description = "Extensible Neovim Scrollbar";
      homepage = "https://github.com/petertriho/nvim-scrollbar";
      license = with licenses; [ mit ];
    };
  };
  mind-nvim = buildVimPluginFrom2Nix {
    pname = "mind-nvim";
    version = "2023-03-22";
    src = fetchurl {
      url = "https://github.com/phaazon/mind.nvim/archive/002137dd7cf97865ebd01b6a260209d2daf2da66.tar.gz";
      sha256 = "01yfghccm1gbv7yclps16vkqrx19jss69hynyzkr13k6nqxnfl19";
    };
    meta = with lib; {
      description = "The power of trees at your fingertips";
      homepage = "https://github.com/phaazon/mind.nvim";
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
  telescope-import-nvim = buildVimPluginFrom2Nix {
    pname = "telescope-import-nvim";
    version = "2023-10-01";
    src = fetchurl {
      url = "https://github.com/piersolenski/telescope-import.nvim/archive/2f559d6b6cbce323b135821f200781063b9aacde.tar.gz";
      sha256 = "0ffgwnwy26404c6qa6j52knl1j6gp85dvcqvbyz4g9ldyz86qmcq";
    };
    meta = with lib; {
      description = "Import modules with ease";
      homepage = "https://github.com/piersolenski/telescope-import.nvim";
    };
  };
  wtf-nvim = buildVimPluginFrom2Nix {
    pname = "wtf-nvim";
    version = "2023-09-07";
    src = fetchurl {
      url = "https://github.com/piersolenski/wtf.nvim/archive/3247bf923e93fb0b65920beb60b10778461d1234.tar.gz";
      sha256 = "0asji51bqcg51byw7znfi6z7s992savawac7fgiqd7nch45mfsmi";
    };
    meta = with lib; {
      description = "Delicious diagnostic debugging in Neovim 🤤";
      homepage = "https://github.com/piersolenski/wtf.nvim";
    };
  };
  neoproj = buildVimPluginFrom2Nix {
    pname = "neoproj";
    version = "2023-05-02";
    src = fetchurl {
      url = "https://github.com/pluffie/neoproj/archive/6cbaabf5678aa098c34c8c29f8b0799aa9831e74.tar.gz";
      sha256 = "17a282hx84yqnq6z6q2f5b7v7xf2x5nfaq0ziga7l1irbzp9klx5";
    };
    meta = with lib; {
      description = "🔥 Small yet powerful project manager for Neovim";
      homepage = "https://github.com/pluffie/neoproj";
      license = with licenses; [ mpl20 ];
    };
  };
  monokai-nightasty-nvim = buildVimPluginFrom2Nix {
    pname = "monokai-nightasty-nvim";
    version = "2023-09-30";
    src = fetchurl {
      url = "https://github.com/polirritmico/monokai-nightasty.nvim/archive/6dad79e0d733c15367e0f62c75eafa2177141981.tar.gz";
      sha256 = "1hqc7sgsdzrkjvvwvhsa6rifqq5vsrcbcxs8kh7k3fff7cmvi7zh";
    };
    meta = with lib; {
      description = "A dark/light theme for Neovim based on the Monokai color palette written in Lua, support for LSP, Tree-sitter and lots of plugins";
      homepage = "https://github.com/polirritmico/monokai-nightasty.nvim";
      license = with licenses; [ asl20 ];
    };
  };
  pantran-nvim = buildVimPluginFrom2Nix {
    pname = "pantran-nvim";
    version = "2023-07-27";
    src = fetchurl {
      url = "https://github.com/potamides/pantran.nvim/archive/461799624948bfb66f73b20b6fffa7e4c8ca6d08.tar.gz";
      sha256 = "09wl3g0k757kp6k5lpb4sasdkhmp5v5knlz82hrxlzghkyfmrpc2";
    };
    meta = with lib; {
      description = "Use your favorite machine translation engines without having to leave your favorite editor";
      homepage = "https://github.com/potamides/pantran.nvim";
      license = with licenses; [ mit ];
    };
  };
  github-nvim-theme = buildVimPluginFrom2Nix {
    pname = "github-nvim-theme";
    version = "2023-09-23";
    src = fetchurl {
      url = "https://github.com/projekt0n/github-nvim-theme/archive/48f95f763e1a98e508260a20e448c3ff2d91213a.tar.gz";
      sha256 = "0hkmjjklr72iab247rb44g261fwba7rcpnwvng1cm852d7rxrr8z";
    };
    meta = with lib; {
      description = "Github's Neovim themes ";
      homepage = "https://github.com/projekt0n/github-nvim-theme";
      license = with licenses; [ mit ];
    };
  };
  codeql-nvim = buildVimPluginFrom2Nix {
    pname = "codeql-nvim";
    version = "2023-09-13";
    src = fetchurl {
      url = "https://github.com/pwntester/codeql.nvim/archive/2cb8cee1fd42ef64835f879223bc5c8f75fff67e.tar.gz";
      sha256 = "0n2hgw2iy9h70xw6xzx348yhpsbbqkxbvv5xi3kbl107nxjskb85";
    };
    meta = with lib; {
      description = "CodeQL plugin for Neovim";
      homepage = "https://github.com/pwntester/codeql.nvim";
    };
  };
  nvim-goc-lua = buildVimPluginFrom2Nix {
    pname = "nvim-goc-lua";
    version = "2023-07-18";
    src = fetchurl {
      url = "https://github.com/rafaelsq/nvim-goc.lua/archive/24bef7fc6a610f0af619369900429f36995480c6.tar.gz";
      sha256 = "1nlkmwb82vlmm911i1943gyyn5sjxdfbpvyijncbd5p9gh70brli";
    };
    meta = with lib; {
      description = "Go Coverage for Neovim";
      homepage = "https://github.com/rafaelsq/nvim-goc.lua";
      license = with licenses; [ mit ];
    };
  };
  tabline-framework-nvim = buildVimPluginFrom2Nix {
    pname = "tabline-framework-nvim";
    version = "2023-03-10";
    src = fetchurl {
      url = "https://github.com/rafcamlet/tabline-framework.nvim/archive/f0d229cc2c103bbc356d26c928eff02be40b230f.tar.gz";
      sha256 = "12xla7fcxgiy065y41scgs196nvjcw6xd7fiwn3wz83xkmyz182h";
    };
    meta = with lib; {
      description = "User-friendly framework for building your dream tabline in a few lines of code";
      homepage = "https://github.com/rafcamlet/tabline-framework.nvim";
      license = with licenses; [ mit ];
    };
  };
  requirements-txt-vim = buildVimPluginFrom2Nix {
    pname = "requirements-txt-vim";
    version = "2023-08-30";
    src = fetchurl {
      url = "https://github.com/raimon49/requirements.txt.vim/archive/f7abd4d5dd1fe1625108dbb4e9ad3f29213b80e3.tar.gz";
      sha256 = "1xkf8r2crf8a8ml380w3jjiqjcgx7gzl3h3y5vc4k9zims3fs3ss";
    };
    meta = with lib; {
      description = "the Requirements File Format syntax support for Vim";
      homepage = "https://github.com/raimon49/requirements.txt.vim";
      license = with licenses; [ mit ];
    };
  };
  mellifluous-nvim = buildVimPluginFrom2Nix {
    pname = "mellifluous-nvim";
    version = "2023-09-14";
    src = fetchurl {
      url = "https://github.com/ramojus/mellifluous.nvim/archive/8c1e6b6c86c0f5d1327fd128d5a9080391e5997e.tar.gz";
      sha256 = "1cfazlwsfyf0zgr6drq1qq4lz04308m7z7h95y9yxqdqcqqqfqj5";
    };
    meta = with lib; {
      description = "Pleasant and productive colorscheme for Neovim";
      homepage = "https://github.com/ramojus/mellifluous.nvim";
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
    version = "2023-10-02";
    src = fetchurl {
      url = "https://github.com/ray-x/go.nvim/archive/54387e506e597ab65a89baa1681429728f66ed71.tar.gz";
      sha256 = "043iv7kzwjzbb4r9j4cxiwalkv6rdrfa78qs1h40rr3hbsjcimll";
    };
    meta = with lib; {
      description = "A feature-rich Go development plugin, leveraging gopls, treesitter AST, Dap, and various Go tools to enhance the development experience";
      homepage = "https://github.com/ray-x/go.nvim";
      license = with licenses; [ mit ];
    };
  };
  guihua-lua = buildVimPluginFrom2Nix {
    pname = "guihua-lua";
    version = "2023-08-15";
    src = fetchurl {
      url = "https://github.com/ray-x/guihua.lua/archive/5ad8dba19ce9b9fd8965598984dfdc9c119f97e4.tar.gz";
      sha256 = "1syq13ahm1p003n48mwn4yl3ch4givgrdx1v9qsv1ah9rk071d50";
    };
    meta = with lib; {
      description = "A GUI library for Neovim plugin developers";
      homepage = "https://github.com/ray-x/guihua.lua";
      license = with licenses; [ mit ];
    };
  };
  navigator-lua = buildVimPluginFrom2Nix {
    pname = "navigator-lua";
    version = "2023-09-26";
    src = fetchurl {
      url = "https://github.com/ray-x/navigator.lua/archive/3c9398b599b481efc76aa9e7d8c3f5c7b48e7eaf.tar.gz";
      sha256 = "0dmrxxnj6kfivx4kanynw086nnyazk9gl84i6njnrc384z88gz9x";
    };
    meta = with lib; {
      description = "Code analysis & navigation plugin for Neovim. Navigate codes like a breeze🎐  Exploring LSP and 🌲Treesitter symbols a piece of 🍰  Take control like a boss 🦍";
      homepage = "https://github.com/ray-x/navigator.lua";
      license = with licenses; [ mit ];
    };
  };
  sad-nvim = buildVimPluginFrom2Nix {
    pname = "sad-nvim";
    version = "2023-03-13";
    src = fetchurl {
      url = "https://github.com/ray-x/sad.nvim/archive/869c7f3ca3dcd28fd78023db6a7e1bf8af0f4714.tar.gz";
      sha256 = "0dz2qr7kpdq3p4z6622wkflcy5apc9gj9qc7wg60px1c4cqc7ids";
    };
    meta = with lib; {
      description = "Space Age seD in Neovim. A project-wide find and replace plugin for Neovim";
      homepage = "https://github.com/ray-x/sad.nvim";
      license = with licenses; [ gpl3Only ];
    };
  };
  starry-nvim = buildVimPluginFrom2Nix {
    pname = "starry-nvim";
    version = "2023-09-09";
    src = fetchurl {
      url = "https://github.com/ray-x/starry.nvim/archive/dacd68fd7a3b4657ca5a57f3a3236b9c88dd9c29.tar.gz";
      sha256 = "1grpcaif1k98bpird78gfa47lzfyfb1pg0zwg97l80l7z5rr6wc2";
    };
    meta = with lib; {
      description = "A pack of modern nvim color schemes: material, moonlight, Dracula (blood), Monokai, Mariana, Emerald, earlysummer, middlenight_blue... Fully support Treesitter, LSP and a variety of plugins";
      homepage = "https://github.com/ray-x/starry.nvim";
      license = with licenses; [ gpl2Only ];
    };
  };
  web-tools-nvim = buildVimPluginFrom2Nix {
    pname = "web-tools-nvim";
    version = "2023-02-14";
    src = fetchurl {
      url = "https://github.com/ray-x/web-tools.nvim/archive/16730bd5867cec5ec681b250214ba0b41b7b63a7.tar.gz";
      sha256 = "1s65zbqvd8v28illi18brzqq419xl30n62sk0fv0r4pjjras1q62";
    };
    meta = with lib; {
      description = "Neovim plugin for web developers";
      homepage = "https://github.com/ray-x/web-tools.nvim";
    };
  };
  heirline-nvim = buildVimPluginFrom2Nix {
    pname = "heirline-nvim";
    version = "2023-09-03";
    src = fetchurl {
      url = "https://github.com/rebelot/heirline.nvim/archive/7f1e805dfc001d5dbb7d894105063f463f6c7dcc.tar.gz";
      sha256 = "127ym0gisddnzwvvcqwgpkv5jjpql2w1sln5v9q6yn7in6wp8dfw";
    };
    meta = with lib; {
      description = "Heirline.nvim is a no-nonsense Neovim Statusline plugin designed around recursive inheritance to be exceptionally fast and versatile";
      homepage = "https://github.com/rebelot/heirline.nvim";
      license = with licenses; [ mit ];
    };
  };
  telekasten-nvim = buildVimPluginFrom2Nix {
    pname = "telekasten-nvim";
    version = "2023-09-08";
    src = fetchurl {
      url = "https://github.com/renerocksai/telekasten.nvim/archive/bd5d323581f24ee124b33688287e6a22244c6f2a.tar.gz";
      sha256 = "0j396q2zhkbvzbjra4110i9zg2miwz9wvayvp8m9zmwc4z6fl3yd";
    };
    meta = with lib; {
      description = "A Neovim (lua) plugin for working with a markdown zettelkasten / wiki and mixing it with a journal, based on telescope.nvim";
      homepage = "https://github.com/renerocksai/telekasten.nvim";
      license = with licenses; [ mit ];
    };
  };
  other-nvim = buildVimPluginFrom2Nix {
    pname = "other-nvim";
    version = "2023-08-02";
    src = fetchurl {
      url = "https://github.com/rgroli/other.nvim/archive/cba4e5feb0c0a703acc9b78bc64422ac1469c468.tar.gz";
      sha256 = "1m13daw0xgv6drrxc61i1dg0scmsws1sid6gp2l7q77nx0j94z8i";
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
  bamboo-nvim = buildVimPluginFrom2Nix {
    pname = "bamboo-nvim";
    version = "2023-09-29";
    src = fetchurl {
      url = "https://github.com/ribru17/bamboo.nvim/archive/f0abf3e75353650a6db7abf0b10ed94dd476c015.tar.gz";
      sha256 = "00v2n63z75k3i1fmi3xhmkiak6rm017dns9sb8xzxnjmcpda5113";
    };
    meta = with lib; {
      description = "Warm Green Theme for Neovim and Beyond";
      homepage = "https://github.com/ribru17/bamboo.nvim";
    };
  };
  nvim-toc = buildVimPluginFrom2Nix {
    pname = "nvim-toc";
    version = "2023-07-21";
    src = fetchurl {
      url = "https://github.com/richardbizik/nvim-toc/archive/8ae6c9171198103e8aa603055b899b6a29e9a09a.tar.gz";
      sha256 = "1f67z74nxhin66hdfyr02xldq0c5l98d1bj7gh8kr7sixqjajfmx";
    };
    meta = with lib; {
      description = "Generate markdown table of contents";
      homepage = "https://github.com/richardbizik/nvim-toc";
      license = with licenses; [ mit ];
    };
  };
  highlight-current-n-nvim = buildVimPluginFrom2Nix {
    pname = "highlight-current-n-nvim";
    version = "2023-06-26";
    src = fetchurl {
      url = "https://github.com/rktjmp/highlight-current-n.nvim/archive/1225d1ad3fee74c3e6a6d258f25a1952b927cb76.tar.gz";
      sha256 = "1psswpr18xrny5sakipwq2y5m83d465xg0x7bykyv78rl032k7m2";
    };
    meta = with lib; {
      description = "Highlights the current /, ? or * match under your cursor when pressing n or N and gets out of the way afterwards";
      homepage = "https://github.com/rktjmp/highlight-current-n.nvim";
      license = with licenses; [ mit ];
    };
  };
  pact-nvim = buildVimPluginFrom2Nix {
    pname = "pact-nvim";
    version = "2023-02-03";
    src = fetchurl {
      url = "https://github.com/rktjmp/pact.nvim/archive/35f2fb3b353466c7d7b724d04936c668c9f5b347.tar.gz";
      sha256 = "0axlkhi3dvrql7n1nb0glkyjfk5h9xm4b8a8z84qd239ywvaqjfn";
    };
    meta = with lib; {
      description = "🔪🩸🐐 semver aware package manager for neovim";
      homepage = "https://github.com/rktjmp/pact.nvim";
      license = with licenses; [ mit ];
    };
  };
  paperplanes-nvim = buildVimPluginFrom2Nix {
    pname = "paperplanes-nvim";
    version = "2023-08-15";
    src = fetchurl {
      url = "https://github.com/rktjmp/paperplanes.nvim/archive/d6481e2a8264daea8a300640a27211787a8a28ea.tar.gz";
      sha256 = "1gr8clkjglkvk9s3plcjq344ci1hga0jfppcmhhp6vlhdlag569b";
    };
    meta = with lib; {
      description = "Neovim :airplane: Pastebins";
      homepage = "https://github.com/rktjmp/paperplanes.nvim";
      license = with licenses; [ mit ];
    };
  };
  shenzhen-solitaire-nvim = buildVimPluginFrom2Nix {
    pname = "shenzhen-solitaire-nvim";
    version = "2023-03-04";
    src = fetchurl {
      url = "https://github.com/rktjmp/shenzhen-solitaire.nvim/archive/4d647cb19bffc83ce218da3c00b062678567471f.tar.gz";
      sha256 = "0hqf76h0d4ivz1c3v115r651w7da8d28p8207xkg8dbl9ykvlxj2";
    };
    meta = with lib; {
      description = "Shenzhen I/O Solitaire, now in Neovim";
      homepage = "https://github.com/rktjmp/shenzhen-solitaire.nvim";
    };
  };
  pounce-nvim = buildVimPluginFrom2Nix {
    pname = "pounce-nvim";
    version = "2023-06-20";
    src = fetchurl {
      url = "https://github.com/rlane/pounce.nvim/archive/0c044cad69571d57d8f64a41cca95332859b6abc.tar.gz";
      sha256 = "1g6b0sr19l540k1kdqkpxxj9f4f1g75j264xaqwrlhs00lz3npqa";
    };
    meta = with lib; {
      description = "Incremental fuzzy search motion plugin for Neovim";
      homepage = "https://github.com/rlane/pounce.nvim";
    };
  };
  onenord-nvim = buildVimPluginFrom2Nix {
    pname = "onenord-nvim";
    version = "2023-09-11";
    src = fetchurl {
      url = "https://github.com/rmehri01/onenord.nvim/archive/5d4ea147564f6a5e5a2aea643c1fae15acb66b90.tar.gz";
      sha256 = "0fs5p61xlknwp5magax4ycablfg4bvyv2nk23kp6grhjl3x97f55";
    };
    meta = with lib; {
      description = "🏔️ A Neovim theme that combines the Nord and Atom One Dark color palettes for a more vibrant programming experience";
      homepage = "https://github.com/rmehri01/onenord.nvim";
      license = with licenses; [ mit ];
    };
  };
  boo-colorscheme-nvim = buildVimPluginFrom2Nix {
    pname = "boo-colorscheme-nvim";
    version = "2023-06-21";
    src = fetchurl {
      url = "https://github.com/rockerBOO/boo-colorscheme-nvim/archive/a8659f879cfd23c05b1104e916f879bcd628c5ec.tar.gz";
      sha256 = "1hnxqqj949rbvjb9bw1f26hcnzmjimyr4kkqfg5s2k4acsc42fsa";
    };
    meta = with lib; {
      description = "Boo is a colorscheme for Neovim with handcrafted support for LSP, Tree-sitter";
      homepage = "https://github.com/rockerBOO/boo-colorscheme-nvim";
      license = with licenses; [ mit ];
    };
  };
  arctic-nvim = buildVimPluginFrom2Nix {
    pname = "arctic-nvim";
    version = "2023-10-03";
    src = fetchurl {
      url = "https://github.com/rockyzhang24/arctic.nvim/archive/69549a5af1e4eea3f52458f92469bf85a5aedd32.tar.gz";
      sha256 = "1ca874is8mpwigksl837afg6q69sgp3kdix7f1pdm73nd7q4rbj9";
    };
    meta = with lib; {
      description = "Neovim color schemes ported from VSCode Dark+ and Dark Modern with Treesitter and semantic token highlighting";
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
  action-hints-nvim = buildVimPluginFrom2Nix {
    pname = "action-hints-nvim";
    version = "2023-09-09";
    src = fetchurl {
      url = "https://github.com/roobert/action-hints.nvim/archive/ab10fef255dd4bc933c92d8f9969828f2f856e71.tar.gz";
      sha256 = "1rm5j1qdlgk676r9dblf3yfs96x2a1hrb1094ml9llc2xgdxnh4s";
    };
    meta = with lib; {
      description = "⚡ A Neovim plugin that displays available actions like 'Go to Definition' and 'Go to Reference(s)' for the highlighted word, presented in the statusline or inline as virtual text";
      homepage = "https://github.com/roobert/action-hints.nvim";
    };
  };
  activate-nvim = buildVimPluginFrom2Nix {
    pname = "activate-nvim";
    version = "2023-10-02";
    src = fetchurl {
      url = "https://github.com/roobert/activate.nvim/archive/21f61096e7c685ec658216e308ed77563834d2e5.tar.gz";
      sha256 = "0kxbfjm840ns8pmzwjb35m1pdavv4ij2ddraa1g9jfp05yp2q9b1";
    };
    meta = with lib; {
      description = "🚀 Activate is a plugin installation system for Neovim";
      homepage = "https://github.com/roobert/activate.nvim";
    };
  };
  bufferline-cycle-windowless-nvim = buildVimPluginFrom2Nix {
    pname = "bufferline-cycle-windowless-nvim";
    version = "2023-01-08";
    src = fetchurl {
      url = "https://github.com/roobert/bufferline-cycle-windowless.nvim/archive/74aba67d4cbc0a8ddd031a93f214a15dfc0a790f.tar.gz";
      sha256 = "02wj2gh3cl5sp1v74440w6m6kd8lqpqxb7vnf3klhdc810acawrb";
    };
    meta = with lib; {
      description = ":window: A Neovim/Bufferline extension to cycle through windowless buffers to give a more traditional tab based experience";
      homepage = "https://github.com/roobert/bufferline-cycle-windowless.nvim";
    };
  };
  f-string-toggle-nvim = buildVimPluginFrom2Nix {
    pname = "f-string-toggle-nvim";
    version = "2023-09-09";
    src = fetchurl {
      url = "https://github.com/roobert/f-string-toggle.nvim/archive/4e2ad79dfc5122dd65515ebbdd671e8ee01d157e.tar.gz";
      sha256 = "0npadbsyb3ipy4zb5z6zz12pa2dxfb1j4a0ak01j5avk7c1zscj8";
    };
    meta = with lib; {
      description = ":yarn: A Neovim plugin to toggle python f-strings";
      homepage = "https://github.com/roobert/f-string-toggle.nvim";
    };
  };
  hoversplit-nvim = buildVimPluginFrom2Nix {
    pname = "hoversplit-nvim";
    version = "2023-09-09";
    src = fetchurl {
      url = "https://github.com/roobert/hoversplit.nvim/archive/c7c6b5596fed3287a3b20dbe772c8211a99cebc7.tar.gz";
      sha256 = "1lh14j64vsy3qxxzmi8zdzawv1cndlhzhvm10llhy8k69z51rfs6";
    };
    meta = with lib; {
      description = "🚁 Automatically updated documentation and information about code symbols in a split window";
      homepage = "https://github.com/roobert/hoversplit.nvim";
    };
  };
  palette-nvim = buildVimPluginFrom2Nix {
    pname = "palette-nvim";
    version = "2023-10-02";
    src = fetchurl {
      url = "https://github.com/roobert/palette.nvim/archive/a808c190a4f74f73782302152ebf323660d8db5f.tar.gz";
      sha256 = "1a8hah1syhay1vwkcnvbl8vdwmcjm20v0r81yciqz2n8g36ylb4g";
    };
    meta = with lib; {
      description = "🎨 Palette - A beautiful, versatile, systematic, Neovim theme system";
      homepage = "https://github.com/roobert/palette.nvim";
    };
  };
  search-replace-nvim = buildVimPluginFrom2Nix {
    pname = "search-replace-nvim";
    version = "2023-09-09";
    src = fetchurl {
      url = "https://github.com/roobert/search-replace.nvim/archive/d92290a02d97f4e9b8cd60d28b56b403432158d5.tar.gz";
      sha256 = "0wsj8klgrhkls12dzlwx7f8gr9vf7h93a4ibv4jjh9g7sday90wg";
    };
    meta = with lib; {
      description = ":monocle_face: A Neovim search and replace plugin that builds on the native search and replace experience";
      homepage = "https://github.com/roobert/search-replace.nvim";
    };
  };
  surround-ui-nvim = buildVimPluginFrom2Nix {
    pname = "surround-ui-nvim";
    version = "2023-09-09";
    src = fetchurl {
      url = "https://github.com/roobert/surround-ui.nvim/archive/65c25088e8dbd1e098245de007498b93c694afb0.tar.gz";
      sha256 = "00hmpsp5q57r9d66r4gpj0crx7g977vawngy98p226i7b44as6q8";
    };
    meta = with lib; {
      description = "🤗 A Neovim plugin which acts as a helper or training aid for kylechui/nvim-surround";
      homepage = "https://github.com/roobert/surround-ui.nvim";
    };
  };
  tabtree-nvim = buildVimPluginFrom2Nix {
    pname = "tabtree-nvim";
    version = "2023-09-29";
    src = fetchurl {
      url = "https://github.com/roobert/tabtree.nvim/archive/7254d5486a4b12153c4e084dbd350e20ebefb461.tar.gz";
      sha256 = "1wixci640nk6wgxyd0zjpn6gwhq6bmvhglk06yyzi3n6swwkfg2c";
    };
    meta = with lib; {
      description = "🌲 A Neovim plugin for jumping between significant code elements, such as brackets, quotes, etc";
      homepage = "https://github.com/roobert/tabtree.nvim";
    };
  };
  tailwindcss-colorizer-cmp-nvim = buildVimPluginFrom2Nix {
    pname = "tailwindcss-colorizer-cmp-nvim";
    version = "2023-09-09";
    src = fetchurl {
      url = "https://github.com/roobert/tailwindcss-colorizer-cmp.nvim/archive/bc25c56083939f274edcfe395c6ff7de23b67c50.tar.gz";
      sha256 = "0y4ap8wq0al742rc8pq0sqlxb2kzazlvpnd55x16fs6gjvk8j89x";
    };
    meta = with lib; {
      description = ":rainbow: A Neovim plugin to add vscode-style TailwindCSS completion to nvim-cmp";
      homepage = "https://github.com/roobert/tailwindcss-colorizer-cmp.nvim";
    };
  };
  rose-pine = buildVimPluginFrom2Nix {
    pname = "rose-pine";
    version = "2023-07-28";
    src = fetchurl {
      url = "https://github.com/rose-pine/neovim/archive/e29002cbee4854a9c8c4b148d8a52fae3176070f.tar.gz";
      sha256 = "1vj38j32wm7fk84pvq8hzk3bm6vifwhmc6nxcsq9fsxncx1s7hbl";
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
  bufignore-nvim = buildVimPluginFrom2Nix {
    pname = "bufignore-nvim";
    version = "2023-05-23";
    src = fetchurl {
      url = "https://github.com/sQVe/bufignore.nvim/archive/605c65e2cb36f0df0d22c8163e6440fbdd945454.tar.gz";
      sha256 = "036aq3hrq2ab27lj8fgvynj6ww6a2lhapyx3hbxnarqphj0pbr9r";
    };
    meta = with lib; {
      description = "Unlist hidden buffers matching specified ignore sources";
      homepage = "https://github.com/sQVe/bufignore.nvim";
      license = with licenses; [ mit ];
    };
  };
  sort-nvim = buildVimPluginFrom2Nix {
    pname = "sort-nvim";
    version = "2023-04-12";
    src = fetchurl {
      url = "https://github.com/sQVe/sort.nvim/archive/c789da6968337d2a61104a929880b5f144e02855.tar.gz";
      sha256 = "1ay1ck26ypy57w257wdclyhikbi5ml4ykw9cbzh0v31y1yxnj33p";
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
    version = "2023-04-11";
    src = fetchurl {
      url = "https://github.com/samjwill/nvim-unception/archive/0cbf11a6c5c4314e88245b69d460f85f30885d2e.tar.gz";
      sha256 = "1im63f3n2b3xh8p42dkgdd13yrlsnkkwpyc6gf2ya48pa4s262rj";
    };
    meta = with lib; {
      description = "A plugin that leverages Neovim's built-in RPC functionality to simplify opening files from within Neovim's terminal emulator without nesting sessions";
      homepage = "https://github.com/samjwill/nvim-unception";
      license = with licenses; [ mit ];
    };
  };
  image-nvim = buildVimPluginFrom2Nix {
    pname = "image-nvim";
    version = "2023-06-08";
    src = fetchurl {
      url = "https://github.com/samodostal/image.nvim/archive/dcabdf47b0b974b61d08eeafa2c519927e37cf27.tar.gz";
      sha256 = "19m3ss4ph4669z9k0lhwp4ppl46wiwf181x0kwhzygsc3ya9zbr0";
    };
    meta = with lib; {
      description = "🖼️ Image Viewer as ASCII Art for Neovim written in Lua";
      homepage = "https://github.com/samodostal/image.nvim";
      license = with licenses; [ mit ];
    };
  };
  melange-nvim = buildVimPluginFrom2Nix {
    pname = "melange-nvim";
    version = "2023-08-11";
    src = fetchurl {
      url = "https://github.com/savq/melange-nvim/archive/517518347e41301bb2d1189d257f3918551a2ea5.tar.gz";
      sha256 = "0j3d9h2hkxlg15qi0fbpjsm8xah3c7mxai0g455j9rii6s36y2c0";
    };
    meta = with lib; {
      description = "🗡️ Warm color scheme for Neovim and beyond";
      homepage = "https://github.com/savq/melange-nvim";
      license = with licenses; [ mit ];
    };
  };
  paq-nvim = buildVimPluginFrom2Nix {
    pname = "paq-nvim";
    version = "2023-09-11";
    src = fetchurl {
      url = "https://github.com/savq/paq-nvim/archive/90dd8183905c4252d2feca857889109e5c046a3f.tar.gz";
      sha256 = "07g5l035w923ii626w8ylzr1b4iglqlnliim3sw1srpmrj5gr7n7";
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
    version = "2023-02-27";
    src = fetchurl {
      url = "https://github.com/seandewar/nvimesweeper/archive/a75828943e4279cd850ad6a6cff4c49238997573.tar.gz";
      sha256 = "08zchf5qsra90j8saym1yiw44z5al05l7i1iy08ycxzcsdqjvvkp";
    };
    meta = with lib; {
      description = "Play Minesweeper in your favourite text editor (Neovim 0.7+)";
      homepage = "https://github.com/seandewar/nvimesweeper";
      license = with licenses; [ mit ];
    };
  };
  dark-flat-nvim = buildVimPluginFrom2Nix {
    pname = "dark-flat-nvim";
    version = "2023-07-20";
    src = fetchurl {
      url = "https://github.com/sekke276/dark_flat.nvim/archive/7b9b781ab52c953adb462c654f3ad1154e5e8eb0.tar.gz";
      sha256 = "0wlpw1ax3kf181cx8fnzdg385qrcw1kl8klrnm25ff74h9igb9kd";
    };
    meta = with lib; {
      description = "No description";
      homepage = "https://github.com/sekke276/dark_flat.nvim";
      license = with licenses; [ mit ];
    };
  };
  kiwi-nvim = buildVimPluginFrom2Nix {
    pname = "kiwi-nvim";
    version = "2023-09-15";
    src = fetchurl {
      url = "https://github.com/serenevoid/kiwi.nvim/archive/358da6992e246b7eb5c3bc2f23cc9a64189ef9af.tar.gz";
      sha256 = "14aqj77jmn0qn3786ljnqay5nlfr77ksaaql3rg7z9swy61jmmz7";
    };
    meta = with lib; {
      description = "A stripped down VimWiki for neovim";
      homepage = "https://github.com/serenevoid/kiwi.nvim";
      license = with licenses; [ gpl3Only ];
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
    version = "2023-09-15";
    src = fetchurl {
      url = "https://github.com/Abstract-IDE/Abstract-cs/archive/07475aa22943dc25080239c8cab613ab0a2945df.tar.gz";
      sha256 = "05mj4k3l83wqd15qd5bf0rwm1l5gsdq9bm5hjj3zvhj194kvlwqa";
    };
    meta = with lib; {
      description = "Colorscheme for (neo)vim written in lua, specially made for roshnivim with Tree-sitter support";
      homepage = "https://github.com/Abstract-IDE/Abstract-cs";
    };
  };
  hlchunk-nvim = buildVimPluginFrom2Nix {
    pname = "hlchunk-nvim";
    version = "2023-09-17";
    src = fetchurl {
      url = "https://github.com/shellRaining/hlchunk.nvim/archive/130da2983519ed83beb513de64d16f22228b764a.tar.gz";
      sha256 = "1861sfdnw7i9gpmx5300ggp99fzmd021npgxl01ix2jlz1ispqmb";
    };
    meta = with lib; {
      description = "This is the lua implementation of nvim-hlchunk, you can use this neovim plugin to highlight your indent line and the current chunk (context) your cursor stayed";
      homepage = "https://github.com/shellRaining/hlchunk.nvim";
      license = with licenses; [ mit ];
    };
  };
  no-neck-pain-nvim = buildVimPluginFrom2Nix {
    pname = "no-neck-pain-nvim";
    version = "2023-09-30";
    src = fetchurl {
      url = "https://github.com/shortcuts/no-neck-pain.nvim/archive/a3a76540533909aa42b4f9430c5b1976a6508f81.tar.gz";
      sha256 = "1kb2rf9cydck4qm22xk6lzn8qk5paz9aqc7f0qczdzm99iqn75gf";
    };
    meta = with lib; {
      description = "☕ Dead simple plugin to center the currently focused buffer to the middle of the screen";
      homepage = "https://github.com/shortcuts/no-neck-pain.nvim";
      license = with licenses; [ mit ];
    };
  };
  nvim-numbertoggle = buildVimPluginFrom2Nix {
    pname = "nvim-numbertoggle";
    version = "2023-09-05";
    src = fetchurl {
      url = "https://github.com/sitiom/nvim-numbertoggle/archive/50fef7e421a27294e834084625ad0dd8cffee72c.tar.gz";
      sha256 = "161v5wn7p17pm8mvspgcwp4ldcv0pkcbsikbpvcfq1i07wclx879";
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
    version = "2023-06-03";
    src = fetchurl {
      url = "https://github.com/smjonas/inc-rename.nvim/archive/ed0f6f2b917cac4eb3259f907da0a481b27a3b7e.tar.gz";
      sha256 = "1snrzsir7fm6xw282l7i2k0m5ghcmpp0p3i3gmp0q9n1ibrllyij";
    };
    meta = with lib; {
      description = "Incremental LSP renaming based on Neovim's command-preview feature";
      homepage = "https://github.com/smjonas/inc-rename.nvim";
      license = with licenses; [ mit ];
    };
  };
  snippet-converter-nvim = buildVimPluginFrom2Nix {
    pname = "snippet-converter-nvim";
    version = "2023-09-21";
    src = fetchurl {
      url = "https://github.com/smjonas/snippet-converter.nvim/archive/d7e783618f02541641980ebd823e439bdef64a4f.tar.gz";
      sha256 = "0a5nwybh4q6azrjjzk3hb16h0x58qk2llqhhwbcj51gmy52gzzvf";
    };
    meta = with lib; {
      description = "Bundle snippets from multiple sources and convert them to your format of choice";
      homepage = "https://github.com/smjonas/snippet-converter.nvim";
      license = with licenses; [ mpl20 ];
    };
  };
  hydrovim = buildVimPluginFrom2Nix {
    pname = "hydrovim";
    version = "2023-05-07";
    src = fetchurl {
      url = "https://github.com/smzm/hydrovim/archive/509516bd99fa41f707f86e46f56e0d605290a6b5.tar.gz";
      sha256 = "0v9q4gxj0ps70q48ia13jj6kp2v3vvwzsw2qwc4gy5vkjvipp380";
    };
    meta = with lib; {
      description = "➡️ Run python code inside Neovim ";
      homepage = "https://github.com/smzm/hydrovim";
    };
  };
  yaml-companion-nvim = buildVimPluginFrom2Nix {
    pname = "yaml-companion-nvim";
    version = "2023-03-03";
    src = fetchurl {
      url = "https://github.com/someone-stole-my-name/yaml-companion.nvim/archive/4de1e1546abc461f62dee02fcac6a02debd6eb9e.tar.gz";
      sha256 = "0pig67nf1cs13ryacqgnc1rskfp4kkw2m25h1fc7jsfyxbnihgrx";
    };
    meta = with lib; {
      description = "Get, set and autodetect YAML schemas in your buffers";
      homepage = "https://github.com/someone-stole-my-name/yaml-companion.nvim";
      license = with licenses; [ mit ];
    };
  };
  yawnc-nvim = buildVimPluginFrom2Nix {
    pname = "yawnc-nvim";
    version = "2023-06-25";
    src = fetchurl {
      url = "https://github.com/sonjiku/yawnc.nvim/archive/4a926d0023472ec308d212be6bc6e5d865af5d43.tar.gz";
      sha256 = "05xwg943v804309si3918kg152xqnca6zpqkkwgllvf3jq7dqgiq";
    };
    meta = with lib; {
      description = "Yet Another pyWal Neovim Colorscheme";
      homepage = "https://github.com/sonjiku/yawnc.nvim";
    };
  };
  stcursorword = buildVimPluginFrom2Nix {
    pname = "stcursorword";
    version = "2023-10-03";
    src = fetchurl {
      url = "https://github.com/sontungexpt/stcursorword/archive/78e326a099a6c9ab94c499366803453f0eca2c8b.tar.gz";
      sha256 = "11hf69pldhfhqa3yrpb6zk73w2l9ya3gk7mixgkprvkbd4czc7dz";
    };
    meta = with lib; {
      description = "A concise, precise, and high-performance cursor word highlighting plugin for Neovim, implemented in Lua";
      homepage = "https://github.com/sontungexpt/stcursorword";
      license = with licenses; [ mit ];
    };
  };
  url-open = buildVimPluginFrom2Nix {
    pname = "url-open";
    version = "2023-09-24";
    src = fetchurl {
      url = "https://github.com/sontungexpt/url-open/archive/6d1627ecab17dda03075b0dbbbff9f39d5aa441d.tar.gz";
      sha256 = "0w78389hvh8hm0gwy0ywh2zyyal1zhg1a888nc7p8pmd1ci2dnkz";
    };
    meta = with lib; {
      description = "Minimal plugin allow you to open url under cursor in neovim without netrw with default browser of your system and highlight url";
      homepage = "https://github.com/sontungexpt/url-open";
      license = with licenses; [ mit ];
    };
  };
  startup-nvim = buildVimPluginFrom2Nix {
    pname = "startup-nvim";
    version = "2023-03-13";
    src = fetchurl {
      url = "https://github.com/startup-nvim/startup.nvim/archive/5295eabe35eb66d0b355ada0ca06ec8bdb8f9698.tar.gz";
      sha256 = "0gyj0y23p9yryij7azix70hgi4lpaz73lbvdzvs93acihjyih729";
    };
    meta = with lib; {
      description = "A highly configurable neovim startup screen";
      homepage = "https://github.com/startup-nvim/startup.nvim";
      license = with licenses; [ gpl2Only ];
    };
  };
  conform-nvim = buildVimPluginFrom2Nix {
    pname = "conform-nvim";
    version = "2023-10-03";
    src = fetchurl {
      url = "https://github.com/stevearc/conform.nvim/archive/1511ae2ab68ad985dd1b3764ce17af7f0355019c.tar.gz";
      sha256 = "1axjj8m7mmib4fycl6zxqaniqbv4rpf914xnh6si5bkriafd2zq3";
    };
    meta = with lib; {
      description = "Lightweight yet powerful formatter plugin for Neovim";
      homepage = "https://github.com/stevearc/conform.nvim";
      license = with licenses; [ mit ];
    };
  };
  gkeep-nvim = buildVimPluginFrom2Nix {
    pname = "gkeep-nvim";
    version = "2023-05-27";
    src = fetchurl {
      url = "https://github.com/stevearc/gkeep.nvim/archive/87f44188460b0b1c6a39a4befc670b4e8296bca9.tar.gz";
      sha256 = "0g2j929ry7f48h4lafz4prcnavyiha2mqkskdl8qgff3dya2j05c";
    };
    meta = with lib; {
      description = "Google Keep integration for Neovim";
      homepage = "https://github.com/stevearc/gkeep.nvim";
      license = with licenses; [ mit ];
    };
  };
  overseer-nvim = buildVimPluginFrom2Nix {
    pname = "overseer-nvim";
    version = "2023-10-03";
    src = fetchurl {
      url = "https://github.com/stevearc/overseer.nvim/archive/3258e2a83bb09daee660bf849e9a0d85356992e7.tar.gz";
      sha256 = "0h60rb1qg3bi7chmlpwbyd27411h7m7f85iy12fzjlh6x9m4wmjb";
    };
    meta = with lib; {
      description = "A task runner and job management plugin for Neovim";
      homepage = "https://github.com/stevearc/overseer.nvim";
      license = with licenses; [ mit ];
    };
  };
  qf-helper-nvim = buildVimPluginFrom2Nix {
    pname = "qf-helper-nvim";
    version = "2023-06-16";
    src = fetchurl {
      url = "https://github.com/stevearc/qf_helper.nvim/archive/39480c33624c78a596a33adce86bee019725b687.tar.gz";
      sha256 = "07bpm8qh9g2dcgd6qar77mci53x20w1h959q8mnbir0a2an9ixsf";
    };
    meta = with lib; {
      description = "A collection of improvements for the quickfix buffer";
      homepage = "https://github.com/stevearc/qf_helper.nvim";
      license = with licenses; [ mit ];
    };
  };
  nvim-ghost-nvim = buildVimPluginFrom2Nix {
    pname = "nvim-ghost-nvim";
    version = "2023-05-29";
    src = fetchurl {
      url = "https://github.com/subnut/nvim-ghost.nvim/archive/a1ca0b2dac59881066d7ac9373cf64d59ba29d6a.tar.gz";
      sha256 = "0nycb86yfr1ifgc74ssckj1a5g52abqhbp0ggn5hrcfs1jivg4c1";
    };
    meta = with lib; {
      description = ":ghost: GhostText plugin for Neovim with zero dependencies :tada: Supports neovim running inside WSL too! :partying_face: Windows/Linux/macOS supported out-of-the-box! :smile: (Other OSes need python3.6+ installed)";
      homepage = "https://github.com/subnut/nvim-ghost.nvim";
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
  neosolarized-nvim = buildVimPluginFrom2Nix {
    pname = "neosolarized-nvim";
    version = "2023-09-25";
    src = fetchurl {
      url = "https://github.com/svrana/neosolarized.nvim/archive/32efa31ce3425f68429f8d59c906c3ce783bc921.tar.gz";
      sha256 = "1h81cdw7cfh0gl980p2cbp12v9lxy3xpvmn8h6h74c8gdh5zz0qz";
    };
    meta = with lib; {
      description = "Truecolor solarized theme for neovim in Lua using colorbuddy";
      homepage = "https://github.com/svrana/neosolarized.nvim";
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
  perfanno-nvim = buildVimPluginFrom2Nix {
    pname = "perfanno-nvim";
    version = "2023-06-21";
    src = fetchurl {
      url = "https://github.com/t-troebst/perfanno.nvim/archive/b138718bf4289b429dc81cadaf80ace8221c647b.tar.gz";
      sha256 = "0g2lnk9r7qdnymm29whxm8sy8yqhh7bbg7zy76iw1d7pllgs095i";
    };
    meta = with lib; {
      description = "NeoVim lua plugin that annotates source code with profiling information from perf or other profilers";
      homepage = "https://github.com/t-troebst/perfanno.nvim";
      license = with licenses; [ mit ];
    };
  };
  nlsp-settings-nvim = buildVimPluginFrom2Nix {
    pname = "nlsp-settings-nvim";
    version = "2023-08-23";
    src = fetchurl {
      url = "https://github.com/tamago324/nlsp-settings.nvim/archive/2a52e793d4f293c0e1d61ee5794e3ff62bfbbb5d.tar.gz";
      sha256 = "0xrn7ny3aw927s4d2rhgnbxg6scm81nia8rbzn8q3kna5vcjhmk9";
    };
    meta = with lib; {
      description = "A plugin for setting Neovim LSP with JSON or YAML files";
      homepage = "https://github.com/tamago324/nlsp-settings.nvim";
      license = with licenses; [ mit ];
    };
  };
  staline-nvim = buildVimPluginFrom2Nix {
    pname = "staline-nvim";
    version = "2023-08-30";
    src = fetchurl {
      url = "https://github.com/tamton-aquib/staline.nvim/archive/280c966df73a840d79d5fa0bda08fab50aba05c6.tar.gz";
      sha256 = "05kca79qs4164mdbcb5agn09clpa1cvlfj4apqcxy6rc5lps79i9";
    };
    meta = with lib; {
      description = "A modern lightweight statusline and bufferline plugin for neovim in lua. Mainly uses unicode symbols for showing info";
      homepage = "https://github.com/tamton-aquib/staline.nvim";
      license = with licenses; [ mit ];
    };
  };
  monokai-nvim = buildVimPluginFrom2Nix {
    pname = "monokai-nvim";
    version = "2023-01-18";
    src = fetchurl {
      url = "https://github.com/tanvirtin/monokai.nvim/archive/b8bd44d5796503173627d7a1fc51f77ec3a08a63.tar.gz";
      sha256 = "00bhgsnhdq9ln39sxm7c6b1kwylfjhnpp92kbdwn58bq97v8k234";
    };
    meta = with lib; {
      description = "Monokai theme for Neovim written in Lua";
      homepage = "https://github.com/tanvirtin/monokai.nvim";
      license = with licenses; [ mit ];
    };
  };
  vgit-nvim = buildVimPluginFrom2Nix {
    pname = "vgit-nvim";
    version = "2023-03-15";
    src = fetchurl {
      url = "https://github.com/tanvirtin/vgit.nvim/archive/a62ad74471b3612de68a5e78a893b867eb33332e.tar.gz";
      sha256 = "18ih39p6j0lkg1y9bxan6fz91d6bjx3hixvym9ng9sa5c3f5wvxj";
    };
    meta = with lib; {
      description = "Visual git plugin for Neovim";
      homepage = "https://github.com/tanvirtin/vgit.nvim";
      license = with licenses; [ mit ];
    };
  };
  karen-yank-nvim = buildVimPluginFrom2Nix {
    pname = "karen-yank-nvim";
    version = "2023-07-29";
    src = fetchurl {
      url = "https://github.com/tenxsoydev/karen-yank.nvim/archive/817f50c9464ce557c8f7f8f4d4c8d2f7b81fc40c.tar.gz";
      sha256 = "0agds2gnyvka783ygfjvd6a86dr83sbfndb4njyzn9x8zfgz2xbl";
    };
    meta = with lib; {
      description = "Neovim Lua plugin to improve register handling with delete, cut and yank mappings";
      homepage = "https://github.com/tenxsoydev/karen-yank.nvim";
      license = with licenses; [ mit ];
    };
  };
  nx-nvim = buildVimPluginFrom2Nix {
    pname = "nx-nvim";
    version = "2023-04-13";
    src = fetchurl {
      url = "https://github.com/tenxsoydev/nx.nvim/archive/3ef35bcd8923f91b97b06a4d122b27744522e0f7.tar.gz";
      sha256 = "1m96r7gcyix6g0m7l68i5q5fl7vjy0jsk08cl0n556lw370bxrzg";
    };
    meta = with lib; {
      description = "Neovim API utility wrapper for more convenience with Lua keymaps, highlights, autocommands and options";
      homepage = "https://github.com/tenxsoydev/nx.nvim";
      license = with licenses; [ asl20 ];
    };
  };
  tabs-vs-spaces-nvim = buildVimPluginFrom2Nix {
    pname = "tabs-vs-spaces-nvim";
    version = "2023-04-10";
    src = fetchurl {
      url = "https://github.com/tenxsoydev/tabs-vs-spaces.nvim/archive/eb6e2d610bb541bdf6b698d076b9ed4acf403394.tar.gz";
      sha256 = "0imy8lqfzya1z5ffhxhg3jwcah2ja2sczji940glai4cwapa3bz8";
    };
    meta = with lib; {
      description = "Hint and fix deviating indentation";
      homepage = "https://github.com/tenxsoydev/tabs-vs-spaces.nvim";
      license = with licenses; [ mit ];
    };
  };
  vim-workspace = buildVimPluginFrom2Nix {
    pname = "vim-workspace";
    version = "2023-05-29";
    src = fetchurl {
      url = "https://github.com/thaerkh/vim-workspace/archive/c0d1e4332a378f58bfdf363b4957168fa78e79b4.tar.gz";
      sha256 = "1j9j5qz2ws5p42zmw8rli6kb2gr19dpmyhjj59ai16n2v2xavmxa";
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
    version = "2023-10-03";
    src = fetchurl {
      url = "https://github.com/ThemerCorp/themer.lua/archive/af84a3be52a9d94e62b58c39f24ad8ee4ccea827.tar.gz";
      sha256 = "1sa14kq5sblxrblcyb0gdzr7a66m97dyqg85zjkbrw12fnsjq4r7";
    };
    meta = with lib; {
      description = "A simple, minimal highlighter plugin for neovim";
      homepage = "https://github.com/ThemerCorp/themer.lua";
      license = with licenses; [ gpl3Only ];
    };
  };
  nvim-deus = buildVimPluginFrom2Nix {
    pname = "nvim-deus";
    version = "2023-07-28";
    src = fetchurl {
      url = "https://github.com/theniceboy/nvim-deus/archive/81d669d80d46cf9bcd38fae45157f7478581a2ff.tar.gz";
      sha256 = "0v26vchd66n0c7ya2y14313vfp6klnbc2jw4wlyyx6j6xsi6xh3z";
    };
    meta = with lib; {
      description = "vim-deus with treesitter support";
      homepage = "https://github.com/theniceboy/nvim-deus";
    };
  };
  tokyodark-nvim = buildVimPluginFrom2Nix {
    pname = "tokyodark-nvim";
    version = "2023-07-31";
    src = fetchurl {
      url = "https://github.com/tiagovla/tokyodark.nvim/archive/4bfb42924274abc5de9f5f4779075b77c6112c85.tar.gz";
      sha256 = "0i75069kqc46a37djhhqjybnzrah66iban55w1b9hcac9mvm84r6";
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
  sos-nvim = buildVimPluginFrom2Nix {
    pname = "sos-nvim";
    version = "2023-05-21";
    src = fetchurl {
      url = "https://github.com/tmillr/sos.nvim/archive/328b55f7049e035c2e57ee7bb8b18d8b44196b23.tar.gz";
      sha256 = "1msrb7mwcahfrh375airbg7g0avjqilydc7djsz61smlb41n1lda";
    };
    meta = with lib; {
      description = "Never manually save/write a buffer again!";
      homepage = "https://github.com/tmillr/sos.nvim";
      license = with licenses; [ mit ];
    };
  };
  bookmarks-nvim = buildVimPluginFrom2Nix {
    pname = "bookmarks-nvim";
    version = "2023-07-06";
    src = fetchurl {
      url = "https://github.com/tomasky/bookmarks.nvim/archive/e51023c89512aec01158be69510547e54b1a4948.tar.gz";
      sha256 = "0v1vlgyfvs0w8a7vl856b13miz8k6341dk9l3s58j66cakl1h6p3";
    };
    meta = with lib; {
      description = "A Bookmarks Plugin With Global File Store  For Neovim Written In Lua";
      homepage = "https://github.com/tomasky/bookmarks.nvim";
      license = with licenses; [ mit ];
    };
  };
  BufferTabs-nvim = buildVimPluginFrom2Nix {
    pname = "BufferTabs-nvim";
    version = "2023-09-18";
    src = fetchurl {
      url = "https://github.com/tomiis4/BufferTabs.nvim/archive/74bd7acea7eb86bd5835bc1ae0466059851ffc71.tar.gz";
      sha256 = "1xcia8qgdlqd80nav17b286klc8g7p8dq3i9q8mi1xapfsd8apb7";
    };
    meta = with lib; {
      description = "A simple, fancy tabline for Neovim";
      homepage = "https://github.com/tomiis4/BufferTabs.nvim";
      license = with licenses; [ asl20 ];
    };
  };
  hypersonic-nvim = buildVimPluginFrom2Nix {
    pname = "hypersonic-nvim";
    version = "2023-07-10";
    src = fetchurl {
      url = "https://github.com/tomiis4/hypersonic.nvim/archive/a98dbd6b5ac1aac3cd895990e08d1ea40e67a9e3.tar.gz";
      sha256 = "00ck8za3mf10nmzm9s8ji425wf52ha4xjqxwvg6piw84i1lbd2bz";
    };
    meta = with lib; {
      description = "A Neovim plugin that provides an explanation for regular expressions";
      homepage = "https://github.com/tomiis4/hypersonic.nvim";
      license = with licenses; [ asl20 ];
    };
  };
  gh-actions-nvim = buildVimPluginFrom2Nix {
    pname = "gh-actions-nvim";
    version = "2023-08-12";
    src = fetchurl {
      url = "https://github.com/topaxi/gh-actions.nvim/archive/a466e533493975baaf078724a00503f3ff07df56.tar.gz";
      sha256 = "1vbg06s82ix85vv3zvkdl0rqmssycii9rpl5dvm26z7qc8msw4wm";
    };
    meta = with lib; {
      description = "See status of workflows and dispatch runs directly in neovim";
      homepage = "https://github.com/topaxi/gh-actions.nvim";
    };
  };
  peek-nvim = buildVimPluginFrom2Nix {
    pname = "peek-nvim";
    version = "2023-04-01";
    src = fetchurl {
      url = "https://github.com/toppair/peek.nvim/archive/67752e7581f88da6899838985a05705b008e4185.tar.gz";
      sha256 = "1jrz9hqwac70ijwayk809c85z88w8dci33chk9v2za8010f6rkkd";
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
    version = "2023-07-18";
    src = fetchurl {
      url = "https://github.com/udayvir-singh/hibiscus.nvim/archive/049d7d98b66d2a6ce2699e6857556ec4a8dbf479.tar.gz";
      sha256 = "1fy9r3w06rxghiv7qyc1imvp4gjbjjlvl3v5lacpzmxkk04l1lnj";
    };
    meta = with lib; {
      description = ":hibiscus: Flavored Fennel Macros for Neovim";
      homepage = "https://github.com/udayvir-singh/hibiscus.nvim";
      license = with licenses; [ mit ];
    };
  };
  tangerine-nvim = buildVimPluginFrom2Nix {
    pname = "tangerine-nvim";
    version = "2023-08-28";
    src = fetchurl {
      url = "https://github.com/udayvir-singh/tangerine.nvim/archive/4913f3b2021dd6e439a83469c68affb53a257c0a.tar.gz";
      sha256 = "0yx2rcgla63k5b7g5dsp0bqqh3wfi4sqz89z5mr7wq984zk2qds8";
    };
    meta = with lib; {
      description = "🍊 Sweet Fennel integration for Neovim";
      homepage = "https://github.com/udayvir-singh/tangerine.nvim";
      license = with licenses; [ mit ];
    };
  };
  ccc-nvim = buildVimPluginFrom2Nix {
    pname = "ccc-nvim";
    version = "2023-09-26";
    src = fetchurl {
      url = "https://github.com/uga-rosa/ccc.nvim/archive/b7ae63e2f4fdf7540ce3f42dd1ec5a27b9930560.tar.gz";
      sha256 = "0mmqy92i4vmd9fjrpwsmvcbjipawwcif0mc79qj41vwjqccmrlwq";
    };
    meta = with lib; {
      description = "Color picker and highlighter plugin for Neovim";
      homepage = "https://github.com/uga-rosa/ccc.nvim";
      license = with licenses; [ mit ];
    };
  };
  barbecue-nvim = buildVimPluginFrom2Nix {
    pname = "barbecue-nvim";
    version = "2023-09-13";
    src = fetchurl {
      url = "https://github.com/utilyre/barbecue.nvim/archive/d38a2a023dfb1073dd0e8fee0c9be08855d3688f.tar.gz";
      sha256 = "0wqdrm6i9pgjs1pbchyipdy0s9dgidk5rb4wh3v37cwf4c12rlfp";
    };
    meta = with lib; {
      description = "A VS Code like winbar for Neovim";
      homepage = "https://github.com/utilyre/barbecue.nvim";
      license = with licenses; [ mit ];
    };
  };
  sentiment-nvim = buildVimPluginFrom2Nix {
    pname = "sentiment-nvim";
    version = "2023-05-26";
    src = fetchurl {
      url = "https://github.com/utilyre/sentiment.nvim/archive/ecde8d877881bb78fdb90060c0991e76770dbdbc.tar.gz";
      sha256 = "1y7zak2hry0h8060n0gdm38hcgznd8hn74fbdqjw634la72m5dyz";
    };
    meta = with lib; {
      description = "Enhanced matchparen.vim plugin for Neovim";
      homepage = "https://github.com/utilyre/sentiment.nvim";
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
    version = "2023-09-10";
    src = fetchurl {
      url = "https://github.com/williamboman/mason.nvim/archive/d66c60e17dd6fd8165194b1d14d21f7eb2c1697a.tar.gz";
      sha256 = "0klw89cypmgfa3wgr71hil969whhqchwpdfa0d0lgnnmj192slrv";
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
  moveline-nvim = buildVimPluginFrom2Nix {
    pname = "moveline-nvim";
    version = "2023-07-06";
    src = fetchurl {
      url = "https://github.com/willothy/moveline.nvim/archive/570603637be8af20e97b91cf554fef29cab73ca6.tar.gz";
      sha256 = "0iz77psgf5n1aa2pgc17pphzgr3nwh101m34z9pj2lpb958vmgmp";
    };
    meta = with lib; {
      description = "Neovim plugin for moving lines up and down";
      homepage = "https://github.com/willothy/moveline.nvim";
      license = with licenses; [ mit ];
    };
  };
  nvim-cokeline = buildVimPluginFrom2Nix {
    pname = "nvim-cokeline";
    version = "2023-10-03";
    src = fetchurl {
      url = "https://github.com/willothy/nvim-cokeline/archive/90d728627d13097733a17d6abafc343a78d1bd71.tar.gz";
      sha256 = "1bv3av0f6rnvbkj6wvsz37b8iv6q3w9wbd52bfx0l5kszfxc79wb";
    };
    meta = with lib; {
      description = ":nose: A Neovim bufferline for people with addictive personalities";
      homepage = "https://github.com/willothy/nvim-cokeline";
      license = with licenses; [ mit ];
    };
  };
  veil-nvim = buildVimPluginFrom2Nix {
    pname = "veil-nvim";
    version = "2023-04-01";
    src = fetchurl {
      url = "https://github.com/willothy/veil.nvim/archive/ec18376953b401d784756a47df38a75ece40f3e9.tar.gz";
      sha256 = "19qrw5a68sz48d9p3wxj5gq7234khjf4zimkqz518xq7720rm4q1";
    };
    meta = with lib; {
      description = "A blazingly fast, animated, and infinitely customizeable startup / dashboard plugin";
      homepage = "https://github.com/willothy/veil.nvim";
    };
  };
  wezterm-nvim = buildVimPluginFrom2Nix {
    pname = "wezterm-nvim";
    version = "2023-09-13";
    src = fetchurl {
      url = "https://github.com/willothy/wezterm.nvim/archive/cdce700a688735c594a4978a4ea31801f4354fcb.tar.gz";
      sha256 = "1843jyc8l6nclgplrjfm3b92m9xl1xsj1ky9v5nm03m9dxph97vm";
    };
    meta = with lib; {
      description = "Utilities for interacting with Wezterm from within Neovim";
      homepage = "https://github.com/willothy/wezterm.nvim";
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
    version = "2023-09-13";
    src = fetchurl {
      url = "https://github.com/nvim-pack/nvim-spectre/archive/97cfd1b0f5a6ab35979ce1bee6c17f54745fd1e5.tar.gz";
      sha256 = "0090yaxgn1scfhvgywk8xphs69daal3ghgxwdljvh346kh4vd8jg";
    };
    meta = with lib; {
      description = "Find the enemy and replace them with dark power";
      homepage = "https://github.com/nvim-pack/nvim-spectre";
      license = with licenses; [ mit ];
    };
  };
  windline-nvim = buildVimPluginFrom2Nix {
    pname = "windline-nvim";
    version = "2023-09-29";
    src = fetchurl {
      url = "https://github.com/windwp/windline.nvim/archive/e35fd60ac90018ebb39e5c9d197e8bb2a9629ece.tar.gz";
      sha256 = "1gg5giyxhi48l7f70dpakzv5s71i3kxj81hfl01m6m82x8rnsjxr";
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
    version = "2023-08-06";
    src = fetchurl {
      url = "https://github.com/woosaaahh/sj.nvim/archive/7ca6186a9ce1588ded42cd9d67582ace0f9a9242.tar.gz";
      sha256 = "0nm9v4wx6yak127hfk7p45vfw1m9j7xhwbcm9y688xvssm1b440s";
    };
    meta = with lib; {
      description = "Search based navigation combined with quick jump features";
      homepage = "https://github.com/woosaaahh/sj.nvim";
      license = with licenses; [ mit ];
    };
  };
  competitest-nvim = buildVimPluginFrom2Nix {
    pname = "competitest-nvim";
    version = "2023-09-20";
    src = fetchurl {
      url = "https://github.com/xeluxee/competitest.nvim/archive/9aaf2827b130d64da5de291d74235c77b950c44c.tar.gz";
      sha256 = "02qpkhn59q209mxlc0rcxvl1fr41b7bwdvn6v9w8avv3166pfmcm";
    };
    meta = with lib; {
      description = "CompetiTest.nvim is a Neovim plugin for Competitive Programming: it can manage and check testcases, download problems and contests from online judges and much more";
      homepage = "https://github.com/xeluxee/competitest.nvim";
    };
  };
  miasma-nvim = buildVimPluginFrom2Nix {
    pname = "miasma-nvim";
    version = "2023-08-07";
    src = fetchurl {
      url = "https://github.com/xero/miasma.nvim/archive/6b48d67a01672086f6fc8144101c5b4748256b54.tar.gz";
      sha256 = "0jvf4wmhax8cx422cpxjhj904gv8y0byckhschkv66aixmiwrniz";
    };
    meta = with lib; {
      description = "a fog descends upon your editor ☁  dark color scheme inspired by the woods for vim and neovim";
      homepage = "https://github.com/xero/miasma.nvim";
      license = with licenses; [ cc0 ];
    };
  };
  link-visitor-nvim = buildVimPluginFrom2Nix {
    pname = "link-visitor-nvim";
    version = "2023-03-19";
    src = fetchurl {
      url = "https://github.com/xiyaowong/link-visitor.nvim/archive/096fa8916fcb2655b267d22c53b3ba455095cdde.tar.gz";
      sha256 = "0kvbz9i6d9ppw6bikmzkipszd4k8z3qqpp6y6jz2qq5w8x1ga01g";
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
  transparent-nvim = buildVimPluginFrom2Nix {
    pname = "transparent-nvim";
    version = "2023-09-03";
    src = fetchurl {
      url = "https://github.com/xiyaowong/transparent.nvim/archive/3af6232c8d39d51062702e875ff6407c1eeb0391.tar.gz";
      sha256 = "04r7qgvm3d2y783ljncjhzfscnm3k9k04lhsz9zr2b379jg3r2c9";
    };
    meta = with lib; {
      description = "Remove all background colors to make nvim transparent";
      homepage = "https://github.com/xiyaowong/transparent.nvim";
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
  AirSupport-nvim = buildVimPluginFrom2Nix {
    pname = "AirSupport-nvim";
    version = "2023-05-25";
    src = fetchurl {
      url = "https://github.com/yagiziskirik/AirSupport.nvim/archive/e73a309d3097dc7e6d7c719c5d3261a1c1ea11f7.tar.gz";
      sha256 = "0ip7rhjkjif78kq2c8c5a9fqazix59c2fmpadjrkzk7fg27fg1ds";
    };
    meta = with lib; {
      description = "A NeoVim addon which helps you to write your own shortcut reminders and forget them";
      homepage = "https://github.com/yagiziskirik/AirSupport.nvim";
      license = with licenses; [ mit ];
    };
  };
  nvim-foldsign = buildVimPluginFrom2Nix {
    pname = "nvim-foldsign";
    version = "2023-02-22";
    src = fetchurl {
      url = "https://github.com/yaocccc/nvim-foldsign/archive/00dacf8470440de13b02277e1b41255bfc0626cf.tar.gz";
      sha256 = "18mn43z3scx9kcknkymrfjr2h5m7lcy90xpbsaa5q2bv5mshl3kb";
    };
    meta = with lib; {
      description = "Display folding info on sign column";
      homepage = "https://github.com/yaocccc/nvim-foldsign";
      license = with licenses; [ mit ];
    };
  };
  nvim-hl-mdcodeblock-lua = buildVimPluginFrom2Nix {
    pname = "nvim-hl-mdcodeblock-lua";
    version = "2023-04-29";
    src = fetchurl {
      url = "https://github.com/yaocccc/nvim-hl-mdcodeblock.lua/archive/a652470bfed791d5026f6a35bacdfe90a9d8ac2f.tar.gz";
      sha256 = "197jvzz96i0zfgjkvqnyp4mrm5yhjpmqvsx710camfpxjc3nb0dg";
    };
    meta = with lib; {
      description = "a nvim plugin for hignlight markdown codeblock";
      homepage = "https://github.com/yaocccc/nvim-hl-mdcodeblock.lua";
      license = with licenses; [ mit ];
    };
  };
  nvim-hlchunk = buildVimPluginFrom2Nix {
    pname = "nvim-hlchunk";
    version = "2023-03-09";
    src = fetchurl {
      url = "https://github.com/yaocccc/nvim-hlchunk/archive/269ccdb61818c28a3d53b4851f76aed81bbd22fc.tar.gz";
      sha256 = "1w6ysxlfrxnwkiafj5hr684a26siqp1qxrcqqrx7j2bxi0grc01x";
    };
    meta = with lib; {
      description = "hignlight chunk numbercolumn plug of nvim";
      homepage = "https://github.com/yaocccc/nvim-hlchunk";
      license = with licenses; [ mit ];
    };
  };
  nvim-lines-lua = buildVimPluginFrom2Nix {
    pname = "nvim-lines-lua";
    version = "2023-04-06";
    src = fetchurl {
      url = "https://github.com/yaocccc/nvim-lines.lua/archive/6eef0024c90fb5767cc32c2e8bbf9ab4e3ba725f.tar.gz";
      sha256 = "03z4i0wavwlr59sjfnbg8iinh0bvvf7p3rscrfyrmzbsnan95fgs";
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
      url = "https://github.com/hoprr/calvera-dark.nvim/archive/84802d0bde047ce79ebfddc1800800f0bd67f37a.tar.gz";
      sha256 = "0pjaz7bhn5lcv8qmpzhg35h0ml4867lcnkqfrw4xn0402khsjgca";
    };
    meta = with lib; {
      description = "Calvera Dark Colorscheme for Neovim written in Lua with built-in support for native LSP, TreeSitter and many more plugins";
      homepage = "https://github.com/hoprr/calvera-dark.nvim";
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
  oh-lucy-nvim = buildVimPluginFrom2Nix {
    pname = "oh-lucy-nvim";
    version = "2022-11-26";
    src = fetchurl {
      url = "https://github.com/Yazeed1s/oh-lucy.nvim/archive/706c74fe8dcc2014dc17bbc861a05d27623e06e3.tar.gz";
      sha256 = "1hyvx99piv0lirafmxxmn1r4j5j4js9xbjgq3w8s6w92y3rzsq04";
    };
    meta = with lib; {
      description = "Inspired by oh-lucy theme in vscodium, with few tweaks!";
      homepage = "https://github.com/Yazeed1s/oh-lucy.nvim";
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
      description = "Moved to https://github.com/yorickpeterse/nvim-pqf";
      homepage = "https://gitlab.com/yorickpeterse/nvim-pqf";
    };
  };
  nvim-window = buildVimPluginFrom2Nix {
    pname = "nvim-window";
    version = "2023-07-23";
    src = fetchurl {
      url = "https://github.com/yorickpeterse/nvim-window/archive/8c0607edcb6e4e1e4d4a40d6ff56251278c6de53.tar.gz";
      sha256 = "0rrvsk8wqg01abz277gdgmpy79pn7ij6nyanjrmhrgxbv7w0r62f";
    };
    meta = with lib; {
      description = "Easily jump between NeoVim windows";
      homepage = "https://github.com/yorickpeterse/nvim-window";
      license = with licenses; [ mpl20 ];
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
      description = "Moved to https://github.com/yorickpeterse/nvim-window";
      homepage = "https://gitlab.com/yorickpeterse/nvim-window";
    };
  };
  themery-nvim = buildVimPluginFrom2Nix {
    pname = "themery-nvim";
    version = "2023-09-24";
    src = fetchurl {
      url = "https://github.com/zaldih/themery.nvim/archive/2d000b03227928e21609ac069576068c4d83902c.tar.gz";
      sha256 = "0l4xbbhkhljrqa274iz5353vwzk105s5q7izpl2rxf18lq98lx86";
    };
    meta = with lib; {
      description = "🎨 Convenient plugin to switch between themes installed in neovim through a menu";
      homepage = "https://github.com/zaldih/themery.nvim";
      license = with licenses; [ gpl3Only ];
    };
  };
  copilot-cmp = buildVimPluginFrom2Nix {
    pname = "copilot-cmp";
    version = "2023-09-09";
    src = fetchurl {
      url = "https://github.com/zbirenbaum/copilot-cmp/archive/72fbaa03695779f8349be3ac54fa8bd77eed3ee3.tar.gz";
      sha256 = "07vahyzf8xvs6f6sfxw60ay0i5bkjfbdxm734xy7h1s9p1yq0g41";
    };
    meta = with lib; {
      description = "Lua plugin to turn github copilot into a cmp source";
      homepage = "https://github.com/zbirenbaum/copilot-cmp";
      license = with licenses; [ mit ];
    };
  };
  neodim = buildVimPluginFrom2Nix {
    pname = "neodim";
    version = "2023-09-05";
    src = fetchurl {
      url = "https://github.com/zbirenbaum/neodim/archive/41535b577deed1bb770830fd9263c3923b70a18c.tar.gz";
      sha256 = "1jakixah1577wnfdbmmxr9q0s3fn2rr6n8fnskbk4fwx85h8kxqz";
    };
    meta = with lib; {
      description = "Neovim plugin for dimming the highlights of unused functions, variables, parameters, and more";
      homepage = "https://github.com/zbirenbaum/neodim";
    };
  };
  yop-nvim = buildVimPluginFrom2Nix {
    pname = "yop-nvim";
    version = "2023-05-29";
    src = fetchurl {
      url = "https://github.com/zdcthomas/yop.nvim/archive/ec26d86cfa96783f6894babcc509e5287aef9a25.tar.gz";
      sha256 = "0z99vxn1iar96j9bayys0q5g0i951v6p4sb0ymvq9fkqg9hh40cs";
    };
    meta = with lib; {
      description = "make you some user operators for great good";
      homepage = "https://github.com/zdcthomas/yop.nvim";
      license = with licenses; [ asl20 ];
    };
  };
  color-picker-nvim = buildVimPluginFrom2Nix {
    pname = "color-picker-nvim";
    version = "2023-05-21";
    src = fetchurl {
      url = "https://github.com/ziontee113/color-picker.nvim/archive/06cb5f853535dea529a523e9a0e8884cdf9eba4d.tar.gz";
      sha256 = "0gxs61bn1v1chkgbhj2d78xxagscg25z6g8cnnfn9sadzb4py0iz";
    };
    meta = with lib; {
      description = "A powerful Neovim plugin that lets users choose & modify RGB/HSL/HEX colors. ";
      homepage = "https://github.com/ziontee113/color-picker.nvim";
      license = with licenses; [ mit ];
    };
  };
  icon-picker-nvim = buildVimPluginFrom2Nix {
    pname = "icon-picker-nvim";
    version = "2023-05-04";
    src = fetchurl {
      url = "https://github.com/ziontee113/icon-picker.nvim/archive/e6dca182518eeb7a51470c13605a5bce08a816e4.tar.gz";
      sha256 = "0xb7778j0hkbq850fcaqh2zr14m9dcaqing2i5mf7404xcyb7w3h";
    };
    meta = with lib; {
      description = "This is a Neovim plugin that helps you pick Nerd Font Icons, Symbols & Emojis";
      homepage = "https://github.com/ziontee113/icon-picker.nvim";
      license = with licenses; [ mit ];
    };
  };
  syntax-tree-surfer = buildVimPluginFrom2Nix {
    pname = "syntax-tree-surfer";
    version = "2023-07-29";
    src = fetchurl {
      url = "https://github.com/ziontee113/syntax-tree-surfer/archive/152c9ac9c42202a2583a0023ec06c0ac38b51a01.tar.gz";
      sha256 = "1mvbk5qjl1r1jvyn69pp2f6s681ml14vzg4l1yj8rffsb49hbabg";
    };
    meta = with lib; {
      description = "A plugin for Neovim that helps you surf through your document and move elements around using the nvim-treesitter API";
      homepage = "https://github.com/ziontee113/syntax-tree-surfer";
      license = with licenses; [ mit ];
    };
  };
  citruszest-nvim = buildVimPluginFrom2Nix {
    pname = "citruszest-nvim";
    version = "2023-10-02";
    src = fetchurl {
      url = "https://github.com/zootedb0t/citruszest.nvim/archive/3c0643db5a62f9c85fd7e850c19981252f6369ef.tar.gz";
      sha256 = "0w7b4l6zyligxlj4s1wjhndwphq2ynli0w6ckfn44s3gd2pklqcs";
    };
    meta = with lib; {
      description = "A vibrant and refreshing neovim colorscheme inspired by citrus fruits";
      homepage = "https://github.com/zootedb0t/citruszest.nvim";
      license = with licenses; [ mit ];
    };
  };
}
