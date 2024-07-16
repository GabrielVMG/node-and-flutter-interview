import { ArticleEntity } from '../entities/article.entity';

export abstract class ArticleDatasource {
  abstract saveArticles(articles: ArticleEntity[]): Promise<void>;
  abstract getArticles(): Promise<ArticleEntity[]>;
}