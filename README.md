# Yuzhou's Notes

基于 Hugo + PaperMod 的个人博客。

```bash
git submodule update --init --recursive
source scripts/mirror-env.sh
hugo server -D
```

文章放在 `content/posts/`，推送到 `main` 后由 GitHub Actions 自动发布到 GitHub Pages。

## 一键发布

仓库内置 `one-click-blog-publish` skill，适合在 Codex 中执行“发布博客”。也可以直接运行：

```bash
skills/one-click-blog-publish/scripts/publish-blog.sh "更新文章"
```

脚本会检查改动并尝试执行 Hugo 构建，然后在提交和推送前询问确认。确认发布后，GitHub Actions 会自动部署到 GitHub Pages。只有在当前请求已经明确授权发布时，才使用 `--yes` 跳过确认：

```bash
skills/one-click-blog-publish/scripts/publish-blog.sh --yes "发布新文章"
```
