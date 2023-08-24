import 'package:dartz/dartz.dart';
import 'package:flutter_get_on_net_task/data/network/failure.dart';
import 'package:flutter_get_on_net_task/data/request/request.dart';
import 'package:flutter_get_on_net_task/domain/model/model.dart';
import 'package:flutter_get_on_net_task/domain/repository/repository.dart';
import 'package:flutter_get_on_net_task/domain/usecase/base_usercase.dart';


class MovieListUseCase implements BaseUseCase<MovieListUseCaseInput, Authentication> {

  final Repository _repository;

  MovieListUseCase(this._repository);

  @override
  Future<Either<Failure, Authentication>> execute(
      MovieListUseCaseInput input) async {
    //DeviceInfo deviceInfo = await getDeviceDetails();
    return await _repository.movieList(
        MovieListRequest(
            input.page, input.query
        )
    );
  }
}

class MovieListUseCaseInput {
  int page;
  String query;
  MovieListUseCaseInput(
      this.page, this.query
      );
}