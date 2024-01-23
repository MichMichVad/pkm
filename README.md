# pkm README

This repository contains a Makefile for simplifying the installation and removal of files and configurations associated with the project.

## Installation

To install the project files and configure the environment, use the following command:

```bash
make install
```

This will run the `install.sh` script and set up the necessary files and configurations.

## Removal

To remove the project files and configurations, use the following command:

```bash
make remove
```

This will remove the project files and configurations, including cleaning up the alias in your `.zshrc`.

## Usage

### Using the `-a` Argument

The program supports the `-a` argument to schedule a logoff action at a specific time. Here's how to use it:

- The argument should be in the form of `-` followed by a lowercase letter.
- The lowercase letters represent the hours of the day, starting from a=1, b=2, c=3, and so on, up to z=26.
- The argument represents the time in 24-hour format.

## Alphabet to Hour Mapping

| Letter | Hour | Letter | Hour |
|--------|------|--------|------|
| a      | 1    | n      | 14   |
| b      | 2    | o      | 15   |
| c      | 3    | p      | 16   |
| d      | 4    | q      | 17   |
| e      | 5    | r      | 18   |
| f      | 6    | s      | 19   |
| g      | 7    | t      | 20   |
| h      | 8    | u      | 21   |
| i      | 9    | v      | 22   |
| j      | 10   | w      | 23   |
| k      | 11   | x      | 0    |
| l      | 12   | y      | 1    |
| m      | 13   | z      | 2    |


For example, to schedule a logoff action at 3 PM, you would use the following command:

```bash
pkm -o
```

The program will keep your session open until the specified time and then automatically log you out of the active session.

### Modify the Logoff Time

You can modify the logoff time by providing a different argument. For instance, to log off at 6 AM, use:

```bash
pkm -f
```

The program will keep your session open until 6 AM, and then log you out.
