function ram --wraps='watch -n 1 free -h' --description 'alias ram=watch -n 1 free -h'
    watch -n 1 free -h $argv
end
