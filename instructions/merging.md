# Merging

> Bring your feature work back into main so the live site gets the update.

---

## Step 1 - Switch back to main

    git checkout main

Check the **Live Site** tab — it reverts to "Hello from main branch!" — main hasn't been updated yet.

---

## Step 2 - Merge feature into main

    git merge feature

Check the **Live Site** tab again — it now shows "Hello from feature branch!" — the merge worked!

Verify:

    git log --oneline

Click **Check**.

<instruqt-task id="merging"></instruqt-task>