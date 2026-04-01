# 🌐 Section 2: NGINX as a Web Server

## 🚀 Goal

Learn how to use NGINX to serve static content such as HTML, CSS, JavaScript, and images — a foundational skill for DevOps and Cloud Engineers.

---

## 🧠 What is a Web Server?

A **web server** is software that serves static files (like `.html`, `.css`, `.js`, `.png`) over HTTP.  
When users visit your website, the web server responds with these files.

NGINX is one of the fastest and most popular web servers used for this purpose.

---


# 🧩 1. Demo Static Application

Create a folder:

```bash
mkdir my-demo-app
cd my-demo-app
```

---

## 📄 `index.html`

```html
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>My Nginx Demo App</title>
  <link rel="stylesheet" href="style.css">
</head>
<body>
  <h1>🚀 Hello from Nginx!</h1>
  <p id="message">Loading...</p>

  <button onclick="changeMessage()">Click Me</button>

  <script src="app.js"></script>
</body>
</html>
```

---

## 🎨 `style.css`

```css
body {
  font-family: Arial, sans-serif;
  text-align: center;
  margin-top: 100px;
  background: #f4f4f4;
}

h1 {
  color: #2c3e50;
}

button {
  padding: 10px 20px;
  background: #3498db;
  border: none;
  color: white;
  cursor: pointer;
  border-radius: 5px;
}

button:hover {
  background: #2980b9;
}
```

---

## ⚙️ `app.js`

```javascript
document.getElementById("message").innerText = "Welcome to your static app!";

function changeMessage() {
  document.getElementById("message").innerText = "You clicked the button 🎉";
}
```

---

# 📁 2. Deploy to Nginx

Copy files:

```bash
sudo mkdir -p /var/www/demo
sudo cp -r * /var/www/demo/
```

Set permissions:

```bash
sudo chown -R www-data:www-data /var/www/demo
sudo chmod -R 755 /var/www/demo
```

---

# ⚙️ 3. Nginx Config

Create config:

```bash
sudo nano /etc/nginx/sites-available/demo
```

Paste:

```nginx
server {
    listen 80;
    server_name localhost;

    root /var/www/demo;
    index index.html;

    location / {
        try_files $uri $uri/ =404;
    }
}
```

Enable:

nginx -t :- used to **test your Nginx configuration** before applying it.
```bash
sudo ln -s /etc/nginx/sites-available/demo /etc/nginx/sites-enabled/
sudo nginx -t
sudo systemctl reload nginx
```


---

# 🌐 4. Test It

Open browser:

```text
http://localhost
```

👉 You should see:

- "Hello from Nginx!"
    
- Button interaction working
    

---


### 🔹 Task 2: Enable Caching

Update nginx:

```nginx
location ~* \.(css|js|png|jpg|jpeg|gif|ico)$ {
    expires 7d;
}
```

---


### 🔹 Task 5: Logs Debugging

```bash
tail -f /var/log/nginx/access.log
```

---

# 🐳 Bonus: Run Same App in Docker

```bash
docker run -d -p 8080:80 \
  -v $(pwd):/usr/share/nginx/html \
  nginx:alpine
```

Open:

```
http://localhost:8080
```

---

---

## 📁 Default Web Root in Linux

| Directory             | Purpose                          |
|-----------------------|----------------------------------|
| `/var/www/html`       | Default directory for static files |
| `/etc/nginx/sites-available/default` | Default config file pointing to the web root |

---

## 📝 Anatomy of a Basic `server` Block
# Nginx Config

Create config under sites-available:
sudo nano /etc/nginx/sites-available/demo

```nginx
server {
    listen 80;
    server_name localhost;

    root /var/www/html;
    index index.html;

    location / {
        try_files $uri $uri/ =404;
    }
}
```

### Breakdown:
- `listen 80;` → Listens on HTTP port 80
- `server_name localhost;` → Domain or IP to respond to
- `root` → Path where NGINX looks for files
- `index` → Default file to serve (usually index.html)
- `location /` → URL path handling

```bash
sudo ln -s /etc/nginx/sites-available/html /etc/nginx/sites-enabled/
sudo nginx -t
sudo systemctl reload nginx
```

---

## 🧪 Demo: Serve a Static Website Using NGINX

### 🔧 Option 1: Using Native Linux NGINX

1. Create an HTML file under /var/www/html directory
Here html folder can be any (like project name)
```bash
echo "<h1>Hello from NGINX Web Server</h1>" | sudo tee /var/www/html/index.html
```

2. Reload NGINX:
```bash
create a symbolic link 
sudo systemctl reload nginx
```

3. Test:
Visit: `http://localhost` or your server’s IP in browser.

---

### 🐳 Option 2: Serve HTML from Docker

1. Create a project folder:
```bash
mkdir nginx-static && cd nginx-static
```

2. Add `index.html`:
```html
<!-- index.html -->
<h1>Hello from NGINX in Docker!</h1>
```

3. Run NGINX Docker container:
```bash
docker run --name web-nginx -v $PWD:/usr/share/nginx/html:ro -p 8080:80 -d nginx
```

4. Open in browser:
```
http://localhost:8080
```

---

## 🔄 Root vs Alias

These two directives behave differently inside `location` blocks.

### `root` example:
```nginx
location /static/ {
    root /data/www;
}
# /static/img.png → /data/www/static/img.png
```

### `alias` example:
```nginx
location /static/ {
    alias /data/www/;
}
# /static/img.png → /data/www/img.png
```

📌 Use `alias` when you want to replace the URI path.

---

## 🧯 Common Errors & Fixes

| Error                             | Solution                                 |
|----------------------------------|------------------------------------------|
| 403 Forbidden                    | Check file permissions (use `chmod`/`chown`) |
| 404 Not Found                    | Ensure correct `root` or `alias`         |
| NGINX not reloading changes     | Use `sudo nginx -s reload` or restart NGINX |
| Port already in use             | Use `sudo lsof -i :80` to identify process |

---

## ✅ Summary

- NGINX can serve static files efficiently.
- The `root` and `index` directives define where and what to serve.
- Use Docker volumes to serve files without touching the host filesystem.
- Always reload NGINX after making config changes.

---
