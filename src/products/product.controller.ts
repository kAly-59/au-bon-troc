import { Controller, Get } from '@nestjs/common';
import { ProductService } from './product.service';

@Controller('Products')
export class ProductController {
  constructor(private readonly productService: ProductService) {}

  @Get('Names')
  getProductNames(): string[] {
    return this.productService.getArticleNames();
  }
}
