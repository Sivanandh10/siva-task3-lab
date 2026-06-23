# Init and Commit

> Every Git project starts with `git init` and a first commit.

---

## Step 1 - Initialise the repository

    cd /root/gitproject
    git init

---

## Step 2 - Create a file and stage it

    echo "# My Git Project" > README.md
    git add README.md

---

## Step 3 - Make your first commit

    git commit -m "initial commit"

Verify:

    git log --oneline

Click **Check**.

<instruqt-task id="init_commit"></instruqt-task>