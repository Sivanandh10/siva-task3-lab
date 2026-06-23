# Init and Commit

> Start your Git project and create the first page of your website.

---

## Step 1 - Initialise the repository

    cd /root/gitproject
    git init

---

## Step 2 - Create your homepage

Use the **Project Files** tab to create a new file called `index.html`, or run:

    cat > index.html << 'EOF'
    <!DOCTYPE html>
    <html>
    <head><title>My Git Project</title></head>
    <body><h1>Hello from main branch!</h1></body>
    </html>
    EOF

Check the **Live Site** tab — your page is live!

---

## Step 3 - Commit it

    git add index.html
    git commit -m "initial commit"

Verify:

    git log --oneline

Click **Check**.

<instruqt-task id="init_commit"></instruqt-task>