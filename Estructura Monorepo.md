repo/
  apps/
    web/         # FlutterFlow export → Flutter web PWA
      Dockerfile
      nginx.conf
    bff/         # (Opcional) API tipo Hono/Express/Nest para lógica server-side
      Dockerfile
      src/...
  infra/
    dokploy/
      web.app.yaml            # plantilla Dokploy (dominios, healthchecks, envs)
      bff.app.yaml            # idem
      network.yaml            # (si requieres red custom)
    github/
      workflows/
        ci-cd.yml             # pipeline principal
  .dockerignore
  README.md