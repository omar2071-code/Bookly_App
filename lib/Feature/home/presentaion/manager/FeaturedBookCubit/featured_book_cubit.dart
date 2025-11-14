import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:bookly/Feature/home/data/models/book_model/book_model.dart';
import 'package:bookly/Feature/home/data/repo/home_repo.dart';

part 'featured_book_state.dart';

class FeaturedBookCubit extends Cubit<FeaturedBookState> {
  FeaturedBookCubit(this.homeRepo) : super(FeaturedBookInitial());
  final HomeRepo homeRepo;

  Future<void> fetchFeaturedBook() async {
    emit(FeaturedBookLoading());
    var result = await homeRepo.fetshFeaturedBook();
    result.fold(
      (failure) {
        emit(FeaturedBookFailure(failure.errorMessage));
      },
      (books) {
        emit(FeaturedBookSuccess(books));
      },
    );
  }
}
