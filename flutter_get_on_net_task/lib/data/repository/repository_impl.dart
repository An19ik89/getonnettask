import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:flutter_get_on_net_task/data/data_source/remote_data_source.dart';
import 'package:flutter_get_on_net_task/data/mapper/mapper.dart';
import 'package:flutter_get_on_net_task/data/network/error_handler.dart';
import 'package:flutter_get_on_net_task/data/network/failure.dart';
import 'package:flutter_get_on_net_task/data/request/request.dart';
import 'package:flutter_get_on_net_task/data/responses/responses.dart';
import 'package:flutter_get_on_net_task/domain/model/model.dart';
import 'package:flutter_get_on_net_task/domain/repository/repository.dart';


class RepositoryImpl extends Repository{
  RemoteDataSource _remoteDataSource;
  //NetworkInfo _networkInfo;

  RepositoryImpl(
      this._remoteDataSource,
      //this._networkInfo
      );

  @override
  Future<Either<Failure, Authentication>> login(
      LoginRequest loginRequest) async {
    //if (await _networkInfo.isConnected) {
    try {
      final response = await _remoteDataSource.login(loginRequest);
      //log("DATA RESPONSE : $response");
      if (response.status == ApiInternalStatus.SUCCESS) {
        return Right(response.toDomain());
      } else {
        return Left(Failure(response.status ?? ApiInternalStatus.FAILURE,
            response.message ?? ResponseMessage.DEFAULT));
      }
    } catch (error) {
      return (Left(ErrorHandler.handle(error).failure));
    }
  }

  @override
  Future<Either<Failure, Authentication>> movieList(MovieListRequest movieListRequest) async{
    try {
      final response = await _remoteDataSource.movieList(movieListRequest);
      //log("DATA RESPONSE : $response");
      if (response.status == ApiInternalStatus.SUCCESS) {
        return Right(response.toDomain());
      } else {
        return Left(Failure(response.status ?? ApiInternalStatus.FAILURE,
            response.message ?? ResponseMessage.DEFAULT));
      }
    } catch (error) {
      return (Left(ErrorHandler.handle(error).failure));
    }
  }

  @override
  Future<Either<Failure, GenreResponse>> genresList() async{
    try {
      final response = await _remoteDataSource.genresList();
        return Right(response);
    } catch (error) {
      return (Left(ErrorHandler.handle(error).failure));
    }
  }


}
