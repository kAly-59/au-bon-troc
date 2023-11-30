import { Injectable } from '@nestjs/common';

@Injectable()
export class ProductService {
  getProductsNames(): string[] {
    return ['Article 1', 'Article 2'];
  }
}
