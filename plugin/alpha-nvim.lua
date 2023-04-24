local status, alpha = pcall(require, 'alpha')
if not status then
  return
end

local dashboard = require('alpha.themes.dashboard')
dashboard.section.header.margin = { -5 }
dashboard.section.buttons.val = {}
dashboard.section.footer.val = {
[[                       ';;;'','                   ]],
[[                   .,cddxkxc,:o.                  ]],
[[                  'xxxxkkkOc;,:c,                 ]],
[[                 .lOxkddkOKo.;:xx;                ]],
[[                 ,cddkKKkooc...okkc               ]],
[[                :;locl0NWWx,'. ;OOOl              ]],
[[               'xlcc;,:okkxo.  .xOOOo.            ]],
[[              .xkdd' ...:xxdxx' :OOOOo.           ]],
[[              lOOkkc0d,;:odXNWx .xOOOOx.          ]],
[[             ,0kkkddOkldxddOKX;  :kkkOOk.         ]],
[[            .OOoodclxocddd:loo.  .oxkOO0k.        ]],
[[            x0l:c;,kk::coo,.',.   ,ldOOOKK'       ]],
[[           lXd::;:k0;oolo' ..'.   .cck0KXNK.      ]],
[[          ,Xk;;,,lOc,cxo.  ....    ,:oKXNNWO.     ]],
[[         .0k:cllclo::,ck:. ..''    .c:xO0KNNO.    ]],
[[        .xOlxoloddcloxxllo' .,,     ::lOOO0XNk    ]],
[[        oOccx:'c;';oodkc:ld..:c.    .c:kOOOO0Kd   ]],
[[       ck:';,...  .lkxko,,...;l.     c:okOOOOOO:  ]],
[[      'k:.''lc'...'.co,.,';..'c,.    ,cokOOOOOOk. ]],
[[     .xx:,',oocc:':;,c,:xo ..'::'    .lokOOOOOOOd ]],
[[    ,kkc;cloOK00Oo;,.odxxk,..,::.     ldkkOOOOOOO ]],
[[   :kOo,,;:',:coxc   .cc:;'.,.;,'.    cxkOOOOOOOO ]],
[[  :OOx;',,;'.'''l,     .','.          okkkkkOOOOO ]],
[[ ;Okkl;,',,..,'.o.     .',..         .kkddxxkOOOO ]],
[[.OOOxo:;,,,..'.'d       ....         ,kdcloxkkOOO ]],
[[c0OOkdlc:;,....:o       .....        lx:::ldxkOO0 ]],
[[k0OOkxdo;;;..'.;c.       .''.       'xl;:cldxO0XX ]],
[[0X0kkkko;,;.';':c'       .,,'      .locccllodk0Xc ]],
[[O0kkkkkl;;, .';l.:.       ....     ,:ccccllllokc  ]],
[[oOkxxxxl::. ...   .        ...    .;;;;;::::cd:   ]],
[[,kxoldol:;...                .    .c,:;;;;;:o,    ]],
[[ ,o:;:::;' ..                 ..   ,.;:::;:,.     ]],
[[  ..,;:c; ..                   ..     cdc.        ]],
[[     .cxl ..                   ...    .;          ]],
[[       .. ...                   .'.               ]],
[[          .,,                   ','               ]],
[[          .;:'                 ':c;.              ]],
[[          ..;;.                ;:;,               ]],
[[          .,l:.                .:l;               ]],
}

dashboard.config.opts.noautocmd = true
vim.cmd [[
  autocmd User AlphaReady echo 'Miku is ready!'
]]

alpha.setup(dashboard.config)
