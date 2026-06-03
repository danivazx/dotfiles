  function gw
      git for-each-ref --sort=-committerdate \
              --format='%(refname:short) - %(committerdate:relative) - %(contents:subject)' refs/heads/ \
              | awk -F' - ' '{printf "\033[37m%s\033[0m - \033[33m%s\033[0m - \033[36m%s\033[0m\n", $1, $2, $3}' \
              | fzf --ansi --color "fg+:-1,info:yellow,header:magenta,marker:green" \
              | awk -F' - ' '{print $1}' \
              | xargs git checkout
  end
