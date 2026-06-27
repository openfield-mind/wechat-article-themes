# 第一次使用，只看这一页

这个仓库是给 **微信公众号文章排版** 用的。

你平时继续用 Markdown 写文章。这个仓库提供几套 CSS 主题，让文章在公众号编辑器里变成更好看的排版。

## 你有 3 种用法

### 我不会代码，只想马上用

1. 打开 <https://md.doocs.org>
2. 打开本仓库的 `themes/paper-garden.css`
3. 复制整个文件内容
4. 回到 doocs/md，找到自定义 CSS / 自定义主题
5. 粘贴 CSS
6. 写 Markdown
7. 复制排版结果到微信公众号后台

推荐先用：

[themes/paper-garden.css](./themes/paper-garden.css)

如果你喜欢更温润、更像纸本文艺手札的感觉，用：

[themes/paper-whisper.css](./themes/paper-whisper.css)

如果你想要更闪、更吸睛、更像钻石冷光的视觉效果，用：

[themes/diamond-glint.css](./themes/diamond-glint.css)

### 我想让 Codex / Claude / Cursor 帮我装

把下面这段话发给你的 agent：

```text
请帮我安装并使用这个微信公众号排版主题仓库：
https://github.com/openfield-mind/wechat-article-themes

请先阅读仓库里的 AGENTS.md。
如果我没有指定主题，请默认使用 themes/paper-garden.css。

请完成：
1. 克隆或读取这个仓库
2. 找到 themes 里的 CSS 主题
3. 把合适的主题安装到我当前项目或公众号 Markdown 编辑器里
4. 告诉我接下来怎么选择主题、怎么写文章、怎么复制到微信公众号后台
5. 用小白能听懂的话说明，不要只说技术步骤
```

### 我会运行命令，想装到本机

```sh
git clone https://github.com/openfield-mind/wechat-article-themes.git
cd wechat-article-themes
./install.sh
```

安装后主题会在：

```text
~/wechat-article-themes/themes/
```

打开本地预览：

```text
~/wechat-article-themes/demo/index.html
```

## 我应该选哪套？

| 主题 | 适合谁 | 感觉 |
| --- | --- | --- |
| `paper-garden.css` | 第一次用、普通文章、知识分享 | 柔和、耐读、稳 |
| `paper-whisper.css` | 读书笔记、散文、个人表达 | 温润、纸本、手札 |
| `diamond-glint.css` | 审美表达、活动稿、品牌感内容 | 钻石、冷光、闪亮 |
| `paper-museum.css` | 文化、审美、策展类内容 | 红章、展签、文艺 |
| `edge-note.css` | 观点、评论、方法论 | 锋利、清楚、有力量 |
| `signal-lab.css` | AI、技术、产品、研究笔记 | 科技、实验、界面感 |

## 最重要的一句话

你真正要复制的是：

`themes/某个主题.css`

复制 CSS 到公众号 Markdown 编辑器的自定义 CSS 区域，就可以开始写文章。
