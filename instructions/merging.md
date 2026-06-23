# Merging

> Merge your feature branch back into main.

---

## Step 1 - Add a commit on feature

Make sure you are on feature:

    git checkout feature
    echo "feature work" > feature.txt
    git add feature.txt
    git commit -m "add feature work"

---

## Step 2 - Merge into main

    git checkout main
    git merge feature

Verify:

    git log --oneline

Click **Check**.

<instruqt-task id="merging"></instruqt-task>