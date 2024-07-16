import { FileArticlesDatasource } from '../../infrastructure/datasources/file-articles.datasource';
import { MongoArticlesDatasource } from '../../infrastructure/datasources/mongo-articles.datasource';
import { ArticlesRepositoryImpl } from '../../infrastructure/repository/articles.repository.impl';

const mongoArticlesRepository = new ArticlesRepositoryImpl(
  new MongoArticlesDatasource()
);

const fileArticlesRepository = new ArticlesRepositoryImpl(
  new FileArticlesDatasource()
);

export class ArticlesService {

  public saveArticles = async () => {
    const articles = await fileArticlesRepository.getArticles();
    await mongoArticlesRepository.saveArticles(articles);
  }

  public getArticles = async () => {
    return await mongoArticlesRepository.getArticles();
  }
}