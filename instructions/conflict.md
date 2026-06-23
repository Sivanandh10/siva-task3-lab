# Resolve Conflicts

> When two branches edit the same line, Git asks you to choose which version to keep.

---

## Step 1 - Create a conflict

    git checkout main
    sed -i 's/feature branch/main branch v2/' index.html
    git add index.html
    git commit -m "update heading on main"

    git checkout feature
    sed -i 's/feature branch/feature branch v2/' index.html
    git add index.html
    git commit -m "update heading on feature"

---

## Step 2 - Trigger the conflict

    git checkout main
    git merge feature

Git reports a conflict in `index.html`. Open **Project Files** to see the conflict markers.

---

## Step 3 - Resolve it

Edit `index.html` in **Project Files** — remove the conflict markers and set the heading to:

    <h1>Resolved: Git Fundamentals Complete!</h1>

Or run:

    cat > index.html << 'EOF'
    <!DOCTYPE html>
    <html>
    <head><title>My Git Project</title></head>
    <body><h1>Resolved: Git Fundamentals Complete!</h1></body>
    </html>
    EOF

    git add index.html
    git commit -m "resolve merge conflict"

Check the **Live Site** tab — the final resolved page is live!

Click **Check** to complete the workshop.

<instruqt-task id="conflict"></instruqt-task>