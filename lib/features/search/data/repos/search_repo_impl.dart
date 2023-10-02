import 'package:bookly/features/search/data/repos/search_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/utils/api_services.dart';
import '../../../home/data/model/book_model/book_model.dart';

class SearchRepoImpl implements SearchRepo{
  final ApiService apiService;

  SearchRepoImpl(this.apiService);
  @override
  Future<Either<Failure, List<BookModel>>> searchBooks() async {
    try{
      var data = await apiService.get(endPoint: 'volumes?Filtering=free-ebooks&Sorting=newest&q=');
      List<BookModel> books = [];
      for(var item in data['items']){
        try {
          books.add(BookModel.fromJson(item));
        } catch (e) {
          print(item);
        }
      }
      return right(books);
    }catch (e){
      if (e is DioError){
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}