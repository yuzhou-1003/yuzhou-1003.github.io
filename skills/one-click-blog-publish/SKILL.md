---
name: one-click-blog-publish
description: Publish this Hugo blog by checking content, committing changes, and pushing to the configured branch. Use when the user asks to publish, deploy, or release blog changes.
---

# One-click blog publishing

Run `scripts/publish-blog.sh` from the repository root. It checks the working tree, validates Hugo when installed, commits with the supplied message, and pushes the current upstream branch. It asks for confirmation immediately before commit and push; use `--yes` only when the user explicitly authorized publishing. It never force-pushes or rewrites history.
