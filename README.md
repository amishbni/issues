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

```
λ issues elixir-lang elixir 5
+--------------+----------------------------+------------------------------------------------------+
| "number"     | "created_at"               | "title"                                              |
+--------------+----------------------------+------------------------------------------------------+
| 12456        | "2023-03-09T09:57:23Z"     | "alias overrriding even with Elixir. prefix"         |
| 12460        | "2023-03-10T12:30:36Z"     | "Mix run losing the first command line argument"     |
| 12477        | "2023-03-18T06:21:54Z"     | "Add more info for :with expressions in dbg/1"       |
| 12480        | "2023-03-21T08:52:00Z"     | "High logging level can potentially hide bugs"       |
| 12492        | "2023-03-23T23:16:41Z"     | "add +JPperf map to releases"                        |
+--------------+----------------------------+------------------------------------------------------+
```

