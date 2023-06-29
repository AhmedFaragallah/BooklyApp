part of 'featured_books_cubit_cubit.dart';

abstract class FeaturedBooksCubitState extends Equatable {
  const FeaturedBooksCubitState();

  @override
  List<Object> get props => [];
}

class FeaturedBooksCubitInitial extends FeaturedBooksCubitState {}

class FeaturedBooksCubitLoading extends FeaturedBooksCubitState {}

class FeaturedBooksCubitSuccess extends FeaturedBooksCubitState {
  final List<BookModel> books;

  const FeaturedBooksCubitSuccess(this.books);
}

class FeaturedBooksCubitFailaure extends FeaturedBooksCubitState {
  final String errorMassage;

  const FeaturedBooksCubitFailaure(this.errorMassage);
}
