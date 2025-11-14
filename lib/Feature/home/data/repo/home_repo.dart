import 'package:bookly/Feature/home/data/models/book_model/book_model.dart';
import 'package:bookly/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> fetshBestSellerBook();
  Future<Either<Failure, List<BookModel>>> fetshFeaturedBook();
}
//install package dartz to use 2 state success(left)&failure(right) by use either