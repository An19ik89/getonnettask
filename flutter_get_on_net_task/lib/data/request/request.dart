class LoginRequest {
  String email;
  String password;
  bool returnSecureToken;
  //String imei;
  //String deviceType;

  LoginRequest(
      this.email, this.password,this.returnSecureToken
      //this.imei, this.deviceType
      );
}


class MovieListRequest {
  int page;
  String query;
  MovieListRequest(this.page, this.query);
}
