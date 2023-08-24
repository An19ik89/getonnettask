import 'package:dartz/dartz.dart';
import 'package:flutter_get_on_net_task/data/network/failure.dart';
import 'package:flutter_get_on_net_task/data/request/request.dart';
import 'package:flutter_get_on_net_task/data/responses/responses.dart';
import 'package:flutter_get_on_net_task/domain/model/model.dart';


abstract class Repository {
  Future<Either<Failure, Authentication>> login(LoginRequest loginRequest);
  Future<Either<Failure, Authentication>> movieList(MovieListRequest movieListRequest);
  Future<Either<Failure, GenreResponse>> genresList();
}
