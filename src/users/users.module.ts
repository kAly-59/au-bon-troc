import { Module } from '@nestjs/common';
import { UsersService } from './users.service';
import { UsersController } from './users.controller';
import { PrismaService } from '../prisma.service';
import { ProductService } from 'src/products/product.service';

@Module({
  controllers: [UsersController],
  providers: [PrismaService, UsersService, ProductService],
})
export class UsersModule {}
