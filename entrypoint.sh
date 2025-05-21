#!/bin/sh
echo "========== Starting App =========="
echo "SPRING_DATASOURCE_URL: $SPRING_DATASOURCE_URL"
echo "SPRING_DATASOURCE_USERNAME: $SPRING_DATASOURCE_USERNAME"
echo "SPRING_DATASOURCE_PASSWORD: [HIDDEN]"
echo "JWT_SECRET: [HIDDEN]"

# Extraer host y puerto del SPRING_DATASOURCE_URL si quieres algo dinámico (opcional)
# Por ahora lo hacemos directo

echo "🔍 Verificando conexión a Supabase (db.vjojyhmttbijgpnaekxg.supabase.co:5432)..."
nc -zv db.vjojyhmttbijgpnaekxg.supabase.co 5432
NC_EXIT_CODE=$?

if [ $NC_EXIT_CODE -ne 0 ]; then
  echo "❌ No se pudo conectar a Supabase en el puerto 5432. Abortando inicio de la app."
  exit 1
else
  echo "✅ Conexión a Supabase exitosa. Iniciando aplicación..."
fi

exec java -jar app.jar
