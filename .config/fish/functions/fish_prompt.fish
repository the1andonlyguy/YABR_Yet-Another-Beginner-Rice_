function fish_prompt
    # Everforest Color Configuration
    set -l normal (set_color -o aec3ea) # #AEC3EA
    set -l custom_green (set_color -o 8EB8AE) # Bold #2F4B44 Green
    # 1. Start with the full, unshortened absolute path ($PWD)
    set -l full_path "$PWD"

    # 2. If the path starts with your home directory, replace it with your custom ⁓ symbol
    if string match -q "$HOME*" "$full_path"
        set full_path (string replace "$HOME" "~" "$full_path")
    end
    # Line 1: Output the clean folder path (automatically uses ~ for home)
    echo -e "  $normal$(prompt_pwd)"

    # Line 2: Bold Minimalist Arrow Brace in #A7C0A0
    echo -n -e "  $custom_green❯ $normal"
end
