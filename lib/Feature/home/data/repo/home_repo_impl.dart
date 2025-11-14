import 'package:bookly/Feature/home/data/models/book_model/book_model.dart';
import 'package:bookly/Feature/home/data/repo/home_repo.dart';
import 'package:bookly/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl implements HomeRepo {
  @override
  Future<Either<Failure, List<BookModel>>> fetshBestSellerBook() {
    // TODO: implement fetshBestSellerBook
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetshFeaturedBook() {
    // TODO: implement fetshFeaturedBook
    throw UnimplementedError();
  }
}
