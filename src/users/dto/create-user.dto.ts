import { ApiProperty } from '@nestjs/swagger';
import { IsEmail, IsString, Length } from 'class-validator';

export class CreateUserDto {
  @ApiProperty({
    description: 'This field represents the new user nickname',
    minLength: 5,
    maxLength: 50,
  })
  @IsString()
  @Length(5, 50)
  pseudo: string;

  @ApiProperty({
    description: 'This field represents the new mail password',
    minLength: 2,
    maxLength: 75,
    example: 'EMAIL',
  })
  @IsString()
  @Length(8, 50)
  password: string;
  @IsEmail()
  @Length(2, 75)
  mail: string;
}
