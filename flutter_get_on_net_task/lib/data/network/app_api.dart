import 'package:dio/dio.dart';
import 'package:flutter_get_on_net_task/application/constant.dart';
import 'package:flutter_get_on_net_task/data/responses/responses.dart';
import 'package:flutter_get_on_net_task/domain/model/model.dart';
import 'package:retrofit/http.dart';

part 'app_api.g.dart';

@RestApi(baseUrl: Constant.baseUrl)
abstract class AppServiceClient {
  factory AppServiceClient(Dio dio, {String baseUrl}) = _AppServiceClient;

  @POST("/customers/login")
  Future<AuthenticationResponse> login(
    @Field("email") String email,
    @Field("password") String password,
    @Field("returnSecureToken") bool returnSecureToken,
  );

  @GET("/3/search/movie")
  Future<AuthenticationResponse> movieList(
      @Query("page") int page,
      @Query("query") String query,
      );

  @GET("/3/genre/movie/list")
  Future<GenreResponse> genres();
}
