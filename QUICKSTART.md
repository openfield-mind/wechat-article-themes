# 新手快速教程

这份教程给完全不懂 CSS 的用户。

如果你第一次打开这个仓库，建议先看：

```text
START_HERE.md
```

## 你需要准备什么？

你需要一个支持 Markdown 和自定义 CSS 的公众号编辑器。

推荐：

- doocs/md: <https://md.doocs.org>
- mdnice: <https://www.mdnice.com>

## 方式一：直接复制 CSS

1. 打开本仓库的 `themes` 文件夹
2. 打开 `paper-garden.css`
3. 复制里面的全部内容
4. 打开你的 Markdown 公众号编辑器
5. 找到“自定义 CSS”“主题样式”或类似入口
6. 粘贴 CSS
7. 写 Markdown
8. 复制渲染结果到微信公众号后台

## 方式二：让 Agent 帮你

最省心的方式：复制 `prompts/agent-install.txt` 里的内容，发给 Codex、Claude、Cursor 或其他编程 agent。

你也可以直接复制这段：

```text
请帮我安装这个仓库里的微信公众号排版主题：
https://github.com/openfield-mind/wechat-article-themes

我想使用 paper-garden.css。
请把它接入我当前项目，并告诉我怎么使用。
```

如果你想试其他风格，把 `paper-garden.css` 换成：

```text
paper-whisper.css
paper-museum.css
edge-note.css
signal-lab.css
```

## 方式三：本机安装

```sh
git clone https://github.com/openfield-mind/wechat-article-themes.git
cd wechat-article-themes
./install.sh
```

安装后主题会在：

```text
~/wechat-article-themes/themes/
```

安装后还会复制：

```text
~/wechat-article-themes/START_HERE.md
~/wechat-article-themes/prompts/agent-install.txt
```

## 推荐选择

| 主题 | 适合内容 | 气质 |
| --- | --- | --- |
| paper-garden.css | 大多数文章、随笔、知识分享 | 柔和、纸本、耐读 |
| paper-whisper.css | 散文、读书笔记、个人表达 | 温润、手札、软纸边 |
| paper-museum.css | 读书、文化、审美、策展 | 文艺、红章、手记 |
| edge-note.css | 观点、评论、方法论 | 锋利、清晰、强识别 |
| signal-lab.css | AI、技术、研究笔记 | 科技、实验、界面感 |

## 写作建议

这些主题对常见 Markdown 元素做了设计：

```md
# 一级标题

## 二级标题

### 三级标题

正文段落，**重点文字**，`行内代码`。

> 引用或旁注

- 列表项
- 列表项

| 项目 | 说明 |
| --- | --- |
| A | 内容 |
```

不要在文章里堆太多颜色和表情，让主题自己承担视觉风格。
