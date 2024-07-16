
interface ArticleEntityInterface {
  author: string;
  title: string;
  description: string;
  url: string;
  urlToImage: string;
  publishedAt: string;
}

export class ArticleEntity {
  public author: string;
  public title: string;
  public description: string;
  public url: string;
  public urlToImage: string;
  public publishedAt: string;

  constructor(article: ArticleEntityInterface) {
    const { author, title, description, url, urlToImage, publishedAt } = article;
    this.author = author;
    this.title = title;
    this.description = description;
    this.url = url;
    this.urlToImage = urlToImage;
    this.publishedAt = publishedAt;
  }

  static fromJson = (json: string): ArticleEntity => {
    const {author, title, description, url, urlToImage, publishedAt } = JSON.parse(json);
    return new ArticleEntity({
      author,
      title,
      description,
      url,
      urlToImage,
      publishedAt,
    })
  }

  static fromObject = (object: {[key: string]: any}): ArticleEntity => {
    const {author, title, description, url, urlToImage, publishedAt } = object;
    return new ArticleEntity({
      author,
      title,
      description,
      url,
      urlToImage,
      publishedAt,
    })
  }
}