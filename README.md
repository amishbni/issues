# Issues

## Installation

Clone the repository and move into the project's directory.

```
git clone https://github.com/amishbni/issues
cd issues
```

Copy the executable file, `issues`, into your system's `/usr/local/bin` directory.

```
sudo cp issues /usr/local/bin
```

## Usage

List 5 newest issues

```
λ issues elixir-lang elixir 5
```

List 10 oldest issues

```
λ issues python cpython -10
```

The default count of issues is 10, so these commands are identical

```
λ issues phoenixframework phoenix
λ issues phoenixframework phoenix 10
```

