#!/bin/sh
echo "========== Starting App =========="
echo "SPRING_DATASOURCE_URL: $SPRING_DATASOURCE_URL"
echo "SPRING_DATASOURCE_USERNAME: $SPRING_DATASOURCE_USERNAME"
echo "SPRING_DATASOURCE_PASSWORD: [HIDDEN]"
echo "JWT_SECRET: [HIDDEN]"

exec java -jar app.jar
