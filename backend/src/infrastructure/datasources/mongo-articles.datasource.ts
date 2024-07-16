import { ArticleModel } from '../../data/mongo';
import { ArticleDatasource } from '../../domain/datasources/article.datasource';
import { ArticleEntity } from '../../domain/entities/article.entity';

export class MongoArticlesDatasource implements ArticleDatasource {
  async saveArticles(articles: ArticleEntity[]): Promise<void> {
    // Limpiar la colección antes de insertar nuevos datos
    await ArticleModel.deleteMany({});
    await ArticleModel.insertMany(articles);
    console.log('Articles created')
  }

  async getArticles(): Promise<ArticleEntity[]> {
    const articles = await ArticleModel.find();
    return articles.map(ArticleEntity.fromObject);
  }

}