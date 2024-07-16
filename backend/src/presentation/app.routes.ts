import { Router } from 'express';
import { ArticlesRoutes } from './articles/articles.routes';

export class AppRoutes {

  static get routes(): Router {
    const router = Router();
    router.use('/articles', ArticlesRoutes.routes);
    return router;
  }
}
