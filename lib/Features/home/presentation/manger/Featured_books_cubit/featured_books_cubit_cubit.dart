import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/home/data/repos/home_repo.dart';
import 'package:bookly_app/core/errors/failures.dart';

import 'package:equatable/equatable.dart';

import '../../../data/models/book_model/book_model.dart';

part 'featured_books_cubit_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksCubitState> {
  FeaturedBooksCubit(this.homeRepo) : super(FeaturedBooksCubitInitial());
  final HomeRepo homeRepo;

  Future<void> fetchFeaturedBook() async {
    var result = await homeRepo.fetchFeaturedBooks();
    result.fold((failure) {
      emit(FeaturedBooksCubitFailaure(failure.errorMassage));
    }, (books) {
      emit(FeaturedBooksCubitSuccess(books));
    });
  }
}
