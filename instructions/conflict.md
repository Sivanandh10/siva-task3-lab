# Resolve Conflicts

> Conflicts happen when two branches change the same line.

---

## Step 1 - Create the conflict

    git checkout main
    echo "main version" > README.md
    git add README.md
    git commit -m "update readme on main"

    git checkout feature
    echo "feature version" > README.md
    git add README.md
    git commit -m "update readme on feature"

---

## Step 2 - Trigger and resolve

    git checkout main
    git merge feature

Git reports a conflict. Resolve it:

    echo "resolved version" > README.md
    git add README.md
    git commit -m "resolve merge conflict"

Click **Check** to complete the workshop.

<instruqt-task id="conflict"></instruqt-task>