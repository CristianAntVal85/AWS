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
  <p><strong>Horario:</strong> lunes a sábado, 10:00 a 20:00</p>
  <p><strong>Dirección:</strong>Calle Lobotomía 4 Arigeiter</p>
  <p><strong>Recomendación del mes:</strong>El señor de los tornillos, de J.F.Franklin</p>
  <p><em>Servidor 2</em></p>
</body>
</html>
EOF