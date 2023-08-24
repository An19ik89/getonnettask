import 'package:flutter_get_on_net_task/data/network/app_api.dart';
import 'package:flutter_get_on_net_task/data/request/request.dart';
import 'package:flutter_get_on_net_task/data/responses/responses.dart';
import 'package:flutter_get_on_net_task/domain/model/model.dart';

abstract class RemoteDataSource {
  Future<AuthenticationResponse> login(LoginRequest loginRequest);
  Future<AuthenticationResponse> movieList(MovieListRequest movieListRequest);
  Future<GenreResponse> genresList();
}

class RemoteDataSourceImplementer implements RemoteDataSource {
  AppServiceClient _appServiceClient;

  RemoteDataSourceImplementer(this._appServiceClient);

  @override
  Future<AuthenticationResponse> login(LoginRequest loginRequest) async {
    return await _appServiceClient.login(loginRequest.email,
        loginRequest.password, loginRequest.returnSecureToken
        // loginRequest.imei,
        // loginRequest.deviceType
        );
  }

  @override
  Future<AuthenticationResponse> movieList(
      MovieListRequest movieListRequest) async {
    return await _appServiceClient.movieList(
      movieListRequest.page,
      movieListRequest.query,
    );
  }

  @override
  Future<GenreResponse> genresList() async{
    return await _appServiceClient.genres();
  }
}
