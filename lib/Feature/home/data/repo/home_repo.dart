import 'package:bookly/Feature/home/data/models/book_model/book_model.dart';
import 'package:bookly/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> fetshNewsBook();
  Future<Either<Failure, List<BookModel>>> fetshFeaturedBook();
  Future<Either<Failure, List<BookModel>>> fetshSimilarBook({
    required String Category,
  });
}

//install package dartz to use 2 state success(left)&failure(right) by use either
