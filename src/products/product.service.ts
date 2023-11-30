import { Injectable } from '@nestjs/common';

@Injectable()
export class ProductService {
  getArticleNames(): string[] {
    return ['Article 1', 'Article 2'];
  }
}
