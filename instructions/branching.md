# Branching

> Create a feature branch to safely develop a new version of the site.

---

## Step 1 - Create and switch to a feature branch

    git branch feature
    git checkout feature

Verify:

    git branch

---

## Step 2 - Update the site on the feature branch

Edit `index.html` in the **Project Files** tab — change the `<h1>` to:

    <h1>Hello from feature branch!</h1>

Or run:

    sed -i 's/main branch/feature branch/' index.html

Check the **Live Site** tab — it now shows the feature branch version!

    git add index.html
    git commit -m "update heading for feature"

Click **Check**.

<instruqt-task id="branching"></instruqt-task>