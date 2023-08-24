import 'package:dartz/dartz.dart';
import 'package:flutter_get_on_net_task/data/network/failure.dart';
import 'package:flutter_get_on_net_task/data/responses/responses.dart';
import 'package:flutter_get_on_net_task/domain/model/model.dart';
import 'package:flutter_get_on_net_task/domain/repository/repository.dart';
import 'package:flutter_get_on_net_task/domain/usecase/base_usercase.dart';



class GenresListUseCase implements BaseUseCaseWithoutIn<GenreResponse> {

  final Repository _repository;

  GenresListUseCase(this._repository);

  @override
  Future<Either<Failure, GenreResponse>>execute() async {
    //DeviceInfo deviceInfo = await getDeviceDetails();
    return await _repository.genresList();
  }
}



