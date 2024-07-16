import { ArticleDatasource } from '../../domain/datasources/article.datasource';
import { ArticleEntity } from '../../domain/entities/article.entity';
import { ArticleRepository } from '../../domain/repository/article.repository';

export class ArticlesRepositoryImpl implements ArticleRepository {

    constructor(
        private readonly articleDatasource: ArticleDatasource
    ) {}

    async saveArticles(articles: ArticleEntity[]): Promise<void> {
        this.articleDatasource.saveArticles(articles);
    }

    async getArticles(): Promise<ArticleEntity[]> {
        return this.articleDatasource.getArticles();
    }

}