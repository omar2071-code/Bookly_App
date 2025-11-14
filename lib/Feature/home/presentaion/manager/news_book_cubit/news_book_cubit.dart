import 'package:bloc/bloc.dart';
import 'package:bookly/Feature/home/data/models/book_model/book_model.dart';
import 'package:bookly/Feature/home/data/repo/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'news_book_state.dart';

class NewsBookCubit extends Cubit<NewsBookState> {
  NewsBookCubit(this.homeRepo) : super(NewsBookInitial());
  final HomeRepo homeRepo;

  Future<void> fetchNewsBook() async {
    emit(NewsBookLoading());
    var result = await homeRepo.fetshNewsBook();
    result.fold(
      (failure) {
        emit(NewsBookFailure(failure.errorMessage));
      },
      (books) {
        emit(NewsBookSuccess(books));
      },
    );
  }
}
