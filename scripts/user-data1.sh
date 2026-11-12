#!/bin/bash
dnf install -y nginx
systemctl enable --now nginx

cat > /usr/share/nginx/html/index.html <<'EOF'
<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <title>Librería Tinta</title>
</head>
<body>
  <h1>Librería Tinta</h1>
  <p><strong>Horario:</strong>lunes a sábado, 10:00 a 20:00</p>
  <p><strong>Dirección:</strong>calle Condomina 13, Talavera de las Reinas del Alcachofar</p>
  <p><strong>Recomendación del mes:</strong>Day by Day Armageddon, J.L.Bourne</p>
  <hr>
  <small>Desplegado por Cristian Antón en el servidor $(hostname) el $(date '+%d/%m/%Y %H:%M')</small>
</body>
</html>
EOF