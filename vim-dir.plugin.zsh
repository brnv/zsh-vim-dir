vim-dir() {
    local directory=$1
    local target=$2
    local chosen_file

    chosen_file=$(find \
        "$(eval echo "$directory")" \
        -maxdepth 1 \
        -name "$target" \( \
            -type f -o -type l \
        \) \
        -print \
        -quit
    )

    if [ "$chosen_file" ]; then
        vim "$chosen_file"
    fi
}
