import { ArticleEntity } from '../entities/article.entity';

export abstract class ArticleRepository {
  abstract saveArticles(articles: ArticleEntity[]): Promise<void>;
  abstract getArticles(): Promise<ArticleEntity[]>;
}