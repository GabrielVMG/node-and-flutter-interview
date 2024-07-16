import { Request, Response } from 'express';
import { ArticlesService } from './articles.service';


export class ArticlesController {

  constructor(private readonly articlesService: ArticlesService) {}

  public getArticles = async (req: Request, res: Response) => {
    try {
      const data = await this.articlesService.getArticles();
      res.json(data);
    } catch (error) {
      res.status(500).send('Internal server error');
    }
  }

  public saveArticles = async (req: Request, res: Response) => {
    try {
      await this.articlesService.saveArticles();
      res.send('Seed executed');
    } catch (error) {
      res.status(500).send('Internal server error');
    }
  }
}
