# Laravel Blade for Zed

Rich Laravel Blade support for Zed with syntax highlighting, language injections, snippets, and PHP intelligence integration.

## Features

### ✅ Implemented
- Blade syntax highlighting
  - Directives
  - Blade comments
  - PHP tags
- Blade indentation
- PHP / JavaScript / CSS injections in Blade files
- Bracket matching and auto-closing
- Outline support
- Text objects
- Tag support
- Blade directive snippets (Laravel directives)
- Intelephense LSP integration
- Filtered HTML completions in `@php` blocks

## Known Issues

- `directive_end` may require a trailing newline to be colored  
  _(Upstream `tree-sitter-blade` behavior.)_
- `tag_name` highlight overrides may not apply consistently depending on grammar/theme resolution

## Installation

### From Zed Extensions
1. Open **Zed**
2. Open **Extensions**
3. Search for **Laravel Blade for Zed**
4. Click **Install**

### Manual (Development)
1. Clone this repository
2. Copy or symlink it into your local Zed extensions directory
3. Reload Zed

## Requirements

- Zed (latest stable recommended)
- For PHP language intelligence:
  - Intelephense installed and available to Zed
  - Intelephense license optional (depends on feature usage)

## Usage

Open any `*.blade.php` file and you should get:
- Blade-aware syntax and indentation
- Embedded language support for `@php`, `<script>`, and `<style>`
- Blade snippets and context-aware completions

## Snippets

Includes snippets for common Laravel Blade directives, including:
- `@if`, `@elseif`, `@else`, `@endif`
- `@foreach`, `@forelse`, `@empty`, `@endforeach`, `@endforelse`
- `@section`, `@yield`, `@extends`, `@include`
- `@csrf`, `@method`, `@vite`
- and more Laravel directives

## Roadmap

- [ ] Fix `tag_name` highlighting behavior
- [ ] Fork/patch `tree-sitter-blade` to resolve `directive_end`
- [ ] Artisan task runner
- [ ] Route file awareness
- [ ] View path autocompletion (`view('pages.home')`)
- [ ] Config and translation key autocompletion
- [ ] `.env` syntax support
- [ ] Livewire component improvements
- [ ] Blade component autocompletion (`<x-button>`)
- [ ] `@props` awareness
- [ ] Proxy LSP for smarter context-aware completions
- [ ] Expanded docs and release guides

## Contributing

Issues and pull requests are welcome.

When opening an issue, include:
- Reproduction steps
- Expected behavior
- Actual behavior
- Environment details
- Screenshots/GIFs if applicable

## Acknowledgements

- Laravel community
- Zed extension ecosystem
- `tree-sitter-blade` contributors

## License

MIT
