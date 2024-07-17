# Backend
1.  Renombrar `.env.template` con `.env` y agregar las variables de entorno.
2.  `npm install`.
3.  `npm run dev`.

## Insertar los datos del archivo `data.json` en la base de datos

> Para esto necesitarás ejecutar el endpoint **POST** `/articles/seed`

# Frontend
1.  Ejecutar el comando `flutter pub get`.
2.  Ir al archivo `lib/infrastructure/datasources/articles_datasource_impl.dart` en la línea 10 escribir la url base de la api.
3.  Ejecutar la app con `flutter run`
