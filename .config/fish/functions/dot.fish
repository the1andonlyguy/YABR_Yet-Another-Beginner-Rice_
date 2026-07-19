function dot --wraps='/usr/bin/git --git-dir=$HOME/.files/ --work-tree=$HOME' --description 'alias dot=/usr/bin/git --git-dir=$HOME/.files/ --work-tree=$HOME'
    /usr/bin/git --git-dir=$HOME/.files/ --work-tree=$HOME $argv
end
