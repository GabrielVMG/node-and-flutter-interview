import express, { Router } from 'express';

interface ServerOptions {
  port: number;
  routes: Router;
}

export class Server {

  private app = express();
  private readonly port: number;
  private readonly routes: Router;

  constructor(serverOptions: ServerOptions) {
    const { port, routes } = serverOptions;
    this.port = port;
    this.routes = routes;
  }

  async start() {

    this.app.use(this.routes);
    this.app.listen(this.port, () => {
      console.log(`server running on port ${this.port}`)
    });
  }
}
