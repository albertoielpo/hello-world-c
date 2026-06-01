# Hello World C
A clonable starting point for a C project, with VS Code configuration included.

# Requirements (Linux)
- gcc

# Build
- `gcc -Wall -Wextra -Wpedantic -O2 -g -std=c99 -o hello hello.c` or `make`

## Build with VS Code
- Press `Ctrl+Shift+B` to run the default build task
- Press `F5` to build and attach the debugger

## Build with Zed
- `make`
- Press `F5` to build and attach the debugger

## Convention
typedef style convention

```c
// Struct types: PascalCase
typedef struct {
    int x;
    int y;
} Point;

// Simple type aliases: lowercase_t
typedef uint32_t port_t;
```

## Format
Code is formatted using `clang-format`, bundled with the `ms-vscode.cpptools` extension (see [.vscode/extensions.json](.vscode/extensions.json)).

Formatting rules are defined in the `.clang-format` file.

```sh
# Format all files
find . -name "*.c" -o -name "*.h" | xargs clang-format -i
 ```

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
