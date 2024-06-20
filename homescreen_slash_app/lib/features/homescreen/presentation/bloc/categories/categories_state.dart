part of 'categories_cubit.dart';

sealed class CategoriesState extends Equatable {
  final List<CategoryEntity>? categories;
  final String? error;

  const CategoriesState({this.categories, this.error});

  @override
  List<Object> get props => [categories!, error!];
}

final class CategoriesInitial extends CategoriesState {
  const CategoriesInitial();
}

final class CategoriesDone extends CategoriesState {
  const CategoriesDone(List<CategoryEntity> categories)
      : super(categories: categories);
}

final class CategoriesError extends CategoriesState {
  const CategoriesError(String error) : super(error: error);
}
