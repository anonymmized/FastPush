# 🚀 FastPush

**FastPush** is a small and clean Bash script for fast Git commits and
pushes --- without noisy output.

It stages changes, commits, pulls, and pushes in one go, then shows a
neat summary at the end.

## ✨ Features

-   One command: `add → commit → pull → push`
-   Silent Git operations (no clutter)
-   Clear final report:
    -   changed files
    -   added / removed lines
    -   diff size
    -   push time

## ▶ Usage

``` bash
./fastpush.sh
```

Enter a commit message when prompted --- FastPush handles the rest.

## 📦 Requirements

-   Git
-   Bash
-   SSH access configured for your repository
