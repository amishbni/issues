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

λ issues python cpython
+--------------+----------------------------+--------------------------------------------------------------------------------------------------------------------+
| "number"     | "created_at"               | "title"                                                                                                            |
+--------------+----------------------------+--------------------------------------------------------------------------------------------------------------------+
| 102978       | "2023-03-23T21:52:34Z"     | "unittest.mock.patch with autospec doesn't hold for classmethods nor staticmethods"                                |
| 102980       | "2023-03-23T23:15:42Z"     | "Improve test coverage on pdb"                                                                                     |
| 102981       | "2023-03-23T23:23:56Z"     | "gh-102980: Add tests for display, alias and where command in pdb"                                                 |
| 102982       | "2023-03-23T23:30:29Z"     | "WIP: Isolate `_pickle`"                                                                                           |
| 102983       | "2023-03-23T23:38:34Z"     | "queue.Queue - Adding Cancelling Support"                                                                          |
| 102986       | "2023-03-24T01:59:44Z"     | "gh-102733: Stop the `getsitepackages` function from returning non site package directories on windows"            |
| 102988       | "2023-03-24T03:30:35Z"     | "Parsing errors in email/_parseaddr.py lead to incorrect value in email address part of tuple"                     |
| 102990       | "2023-03-24T04:32:54Z"     | "gh-102988: Detect parsing errors and return empty tuple to indicate the parsing error"                            |
| 102993       | "2023-03-24T05:56:04Z"     | "[Windows] OneDrive SharePoint sync folder - incorrect values returned by os.listdir and win32file.FindFilesW"     |
| 102994       | "2023-03-24T08:25:23Z"     | "Profile docs has error in example in tldr"                                                                        |
+--------------+----------------------------+--------------------------------------------------------------------------------------------------------------------+
```

