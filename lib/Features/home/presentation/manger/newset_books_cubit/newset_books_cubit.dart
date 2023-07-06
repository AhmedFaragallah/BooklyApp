import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

import '../../../data/models/book_model/book_model.dart';

part 'newset_books_state.dart';

class NewsetBooksCubit extends Cubit<NewsetBooksState> {
  NewsetBooksCubit(this.homeRepo) : super(NewsetBooksInitial());
  final HomeRepo homeRepo;

  Future<void> fetchNewstBooks() async {
    var result = await homeRepo.fetchNewsetBooks();
    result.fold((failure) {
      emit(NewsetBooksFailure(failure.errorMassage));
    }, (books) {
      emit(NewsetBooksSuccess(books));
    });
  }
}
