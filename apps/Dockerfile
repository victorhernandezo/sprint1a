# Etapa 1: build de Flutter web
FROM ghcr.io/cirruslabs/flutter:stable@sha256:4256d815acd2222419d56676168ba30cc8ecaec230137fe5ab654045a20bfddc AS build
WORKDIR /app
COPY . .
# Si tu export de FlutterFlow ya está listo, ajusta los pasos:
RUN sh apps/patch_pwa.sh || true
RUN flutter --version
RUN flutter config --enable-web
RUN flutter pub get
RUN flutter build web --release

# Etapa 2: servidor estático (no-root) en puerto 8080
# Imagen no-root por defecto y puerto 8080
FROM nginxinc/nginx-unprivileged:stable-alpine@sha256:e61ae9d1db4b04c95c651dae567545f993bf8ed69bbcd30725358290cecbc3c4
COPY apps/nginx.conf /etc/nginx/nginx.conf
COPY --from=build /app/build/web /usr/share/nginx/html
EXPOSE 8080
HEALTHCHECK --interval=30s --timeout=5s --retries=3 CMD wget -qO- http://127.0.0.1:8080/ || exit 1
