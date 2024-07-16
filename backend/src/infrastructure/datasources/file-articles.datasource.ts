import fs from 'node:fs';
import { ArticleDatasource } from '../../domain/datasources/article.datasource';
import { ArticleEntity } from '../../domain/entities/article.entity';

export class FileArticlesDatasource implements ArticleDatasource {
  saveArticles(articles: ArticleEntity[]): Promise<void> {
    throw new Error('Method not implemented.');
  }

  async getArticles(): Promise<ArticleEntity[]> {
    try {
      const data = fs.readFileSync('./public/data.json', 'utf8');
      const json = JSON.parse(data) as [];
      return json.map(ArticleEntity.fromObject);
    } catch (err) {
      throw new Error('Parsing error.');
    }
  }

}