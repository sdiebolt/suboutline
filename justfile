version := "0.3.0"
commit_hash := `git rev-parse --short HEAD`
typst := "typst"
imagemagick := "convert"

# Show this help message.
@help:
    just --list

# Copy the package to the local Typst registry.
@local:
    rm -rf ~/.local/share/typst/packages/local/suboutline
    mkdir -p ~/.local/share/typst/packages/local/suboutline
    ln -s $(pwd) ~/.local/share/typst/packages/local/suboutline/{{version}}

# Build the example.
@example:
    {{typst}} compile --root . example/example.typ
    {{imagemagick}} -density 300 example/example.pdf -alpha remove -trim \
        -bordercolor white -border 25 example/example.png
