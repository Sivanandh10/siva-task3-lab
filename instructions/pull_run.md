# Pull and Run Containers

> Every Docker workflow starts with pulling an image and running a container.

---

## Step 1 - Run hello-world

    docker run hello-world

Confirm it ran then mark it done:

    mkdir -p /root/docker-workshop
    touch /root/docker-workshop/hello.done

---

## Step 2 - Run nginx on port 8080

    docker run -d -p 8080:80 --name webserver nginx

Verify it is running:

    docker ps

Mark it done:

    touch /root/docker-workshop/nginx.done

---

Then click **Check**.

<instruqt-task id="pull_run"></instruqt-task>