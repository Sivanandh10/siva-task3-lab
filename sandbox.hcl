resource "network" "main" {
  subnet = "10.0.230.0/24"
}

resource "vm" "workstation" {
  image {
    name = "ubuntu:22.04"
  }
  resources {
    cpu    = 2
    memory = 4096
  }
  environment = {
    DEBIAN_FRONTEND = "noninteractive"
  }
  network {
    id = resource.network.main.meta.id
  }
  port {
    local = 80
  }
  port {
    local = 8080
  }
  startup_script = <<-STARTEOF
    #!/bin/bash
    export DEBIAN_FRONTEND=noninteractive
    apt-get update -y -qq
    apt-get install -y -qq git nginx python3
    git config --system user.email "dev@todoapp.com"
    git config --system user.name "Developer"
    git config --system init.defaultBranch main
    mkdir -p /root/todoapp
    cat > /etc/nginx/sites-available/todoapp << 'NGINX'
server {
    listen 80 default_server;
    root /root/todoapp;
    index index.html;
    location / { try_files $uri $uri/ =404; }
}
NGINX
    rm -f /etc/nginx/sites-enabled/default
    ln -sf /etc/nginx/sites-available/todoapp /etc/nginx/sites-enabled/todoapp
    cat > /root/todoapp/index.html << 'HTML'
<!DOCTYPE html>
<html><head><meta charset="UTF-8"><title>Todo App</title>
<style>body{font-family:sans-serif;display:flex;align-items:center;justify-content:center;height:100vh;margin:0;background:#f0f2f5;}.box{text-align:center;}.box h2{font-size:2rem;color:#333;}</style>
</head><body><div class="box"><h2>Todo App</h2><p>Follow the instructions to build your app!</p></div></body></html>
HTML
    systemctl enable nginx
    systemctl restart nginx
    cat > /root/gitlog.py << 'PYEOF'
import http.server, subprocess, html, os
class Handler(http.server.BaseHTTPRequestHandler):
    def log_message(self, *a): pass
    def do_GET(self):
        os.chdir("/root/todoapp")
        try:
            log = subprocess.check_output(["git","log","--oneline","--graph","--all","--decorate"],stderr=subprocess.DEVNULL).decode()
            if not log.strip(): log = "No commits yet - complete Task 1 first!"
        except: log = "Repository not initialised yet."
        page = f"""<!DOCTYPE html><html><head><title>Git History</title><meta http-equiv="refresh" content="5">
<style>body{{background:#0d1117;color:#c9d1d9;font-family:monospace;padding:24px;margin:0}}h1{{color:#58a6ff;border-bottom:1px solid #30363d;padding-bottom:12px}}pre{{background:#161b22;padding:20px;border-radius:8px;font-size:13px;line-height:1.8;border:1px solid #30363d;overflow-x:auto}}.badge{{background:#238636;color:#fff;padding:3px 10px;border-radius:20px;font-size:11px;margin-left:8px}}.note{{color:#8b949e;font-size:12px;margin-top:12px}}</style></head>
<body><h1>Git History <span class="badge">Live</span></h1><pre>{html.escape(log)}</pre><p class="note">Auto-refreshes every 5 seconds</p></body></html>"""
        self.send_response(200); self.send_header("Content-type","text/html"); self.end_headers(); self.wfile.write(page.encode())
http.server.HTTPServer(("0.0.0.0", 8080), Handler).serve_forever()
PYEOF
    nohup python3 /root/gitlog.py > /var/log/gitlog.log 2>&1 &
    apt-get install -y -qq nfs-kernel-server
    echo "/root/todoapp *(rw,sync,no_subtree_check,no_root_squash)" >> /etc/exports
    exportfs -ra
    systemctl enable nfs-kernel-server
    systemctl start nfs-kernel-server
    exit 0
  STARTEOF
}

resource "container" "checker" {
  image {
    name = "ubuntu:22.04"
  }
  network {
    id = resource.network.main.meta.id
  }
}