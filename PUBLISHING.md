# Publishing

The local repository is ready. GitHub CLI is not installed on this machine, and the browser requires GitHub sign-in before creating a remote repository.

## Option 1: Create Repository On GitHub Web

1. Open <https://github.com/new>.
2. Repository name: `wechat-article-themes`
3. Visibility: Public
4. Do not initialize with README, .gitignore, or license. They already exist locally.
5. Create repository.
6. Run:

```sh
cd /Users/Admin/code/github/wechat-article-themes
git remote add origin git@github.com:openfield-mind/wechat-article-themes.git
git push -u origin main
```

## Option 2: Install GitHub CLI

```sh
brew install gh
gh auth login
cd /Users/Admin/code/github/wechat-article-themes
gh repo create wechat-article-themes --public --source=. --remote=origin --push
```

## Current Local Commit

```sh
git log --oneline -1
```
