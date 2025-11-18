import 'package:bookly/Feature/home/presentaion/manager/news_book_cubit/news_book_cubit.dart';
import 'package:bookly/Feature/home/presentaion/views/widgets/best_seller_item.dart';
import 'package:bookly/core/widget/custom_error_widget.dart';
import 'package:bookly/core/widget/custom_loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerSliverList extends StatelessWidget {
  const BestSellerSliverList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsBookCubit, NewsBookState>(
      builder: (context, state) {
        if (state is NewsBookSuccess) {
          return SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: BestSellerItem(bookModel: state.books[index]),
              ),
              childCount: state.books.length,
            ),
          );
        } else if (state is NewsBookFailure) {
          return SliverToBoxAdapter(
            child: CustomErrorWidget(errorMessage: state.errorMessage),
          );
        } else {
          return SliverToBoxAdapter(child: CustomLoadingWidget());
        }
      },
    );
  }
}
