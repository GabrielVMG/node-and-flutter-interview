import { Router } from 'express';
import { ArticlesController } from './articles.controller';
import { ArticlesService } from './articles.service';

export class ArticlesRoutes {
  static get routes(): Router {
    const router = Router();
    const articlesController = new ArticlesController(new ArticlesService());
    router.get('/', articlesController.getArticles);
    router.post('/seed', articlesController.saveArticles);
    return router;
  }
}
