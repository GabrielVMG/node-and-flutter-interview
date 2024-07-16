import { envs } from './config/envs';
import { MongoDB } from './data/mongo';
import { AppRoutes } from './presentation/app.routes';
import { Server } from './presentation/server';

(async () => {
  main();
})();

async function main() {

  await MongoDB.connect({
    mongoUrl: envs.MONGO_URL,
    dbName: envs.MONGO_DB_NAME
  });


  const server = new Server({
    port: envs.PORT,
    routes: AppRoutes.routes,
  });
  server.start();
}
