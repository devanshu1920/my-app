# ── Digital Library – Static Web App ──────────────────────
# Serves index.html, dashboard.html, style.css, library.js
# with nginx on port 80.
# ──────────────────────────────────────────────────────────

FROM nginx:alpine

# Remove the default nginx welcome page
RUN rm -rf /usr/share/nginx/html/*

# Copy all app files into the nginx web root
COPY index.html      /usr/share/nginx/html/
COPY dashboard.html  /usr/share/nginx/html/
COPY style.css       /usr/share/nginx/html/
COPY library.js      /usr/share/nginx/html/

# Expose HTTP port
EXPOSE 80

# nginx starts automatically as the container's default command