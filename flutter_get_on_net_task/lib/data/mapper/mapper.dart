// to convert the response into non nullable object (model)

//
import 'package:flutter_get_on_net_task/application/extensions.dart';
import 'package:flutter_get_on_net_task/data/responses/responses.dart';
import 'package:flutter_get_on_net_task/domain/model/model.dart';

const EMPTY = "";
const ZERO = 0;
const ZERODOUBLE = 0.0;

extension CustomerResponseMapper on CustomerResponse? {
  Customer toDomain() {
    return Customer(
        this?.id?.orEmpty() ?? EMPTY,
        this?.name?.orEmpty() ?? EMPTY,
        this?.numberOfNotifications.orZero() ?? ZERO);
  }
}

extension ContactResponseMapper on ContactResponse? {
  Contacts toDomain() {
    return Contacts(
      this?.email?.orEmpty() ?? EMPTY,
      this?.phone?.orEmpty() ?? EMPTY,
      this?.link?.orEmpty() ?? EMPTY,
    );
  }
}



extension AuthenticationResponseMapper on AuthenticationResponse? {
  Authentication toDomain() {
    return Authentication(
      this?.customer?.toDomain(),
      this?.contacts?.toDomain(),
    );
  }
}


extension MovieResponseMapper on MovieResponse? {
  Movie toDomain(){
    return Movie(this?.page?.orZero() ?? ZERO,  this?.movieList?.orEmptyList().cast() ?? []);
  }
}


extension MovieListResponseMapper on MovieListResponse? {
  MovieList toDomain(){
    return MovieList(
        this?.adult?.orFalse() ?? false,
        this?.backdropPath?.orEmpty() ?? EMPTY,
        this?.id?.orZero() ?? ZERO,
        this?.title?.orEmpty() ?? EMPTY,
        this?.originalLanguage?.orEmpty() ?? EMPTY,
        this?.originalTitle?.orEmpty() ?? EMPTY,
        this?.overview?.orEmpty() ?? EMPTY,
        this?.posterPath?.orEmpty() ?? EMPTY,
        this?.mediaType?.orEmpty() ?? EMPTY,
        this?.genreIds?.orEmptyList().cast() ?? [],
        this?.popularity?.orZeroDouble() ?? ZERODOUBLE,
        this?.releaseDate?.orEmpty() ?? EMPTY,
        this?.video?.orFalse() ?? false,
        this?.voteAverage?.orZeroDouble() ?? ZERODOUBLE,
        this?.voteCount?.orZero() ?? ZERO
    );
  }
}

extension GenreResponseMapper on GenreResponse? {
  Genre toDomain(){
    return Genre(this?.genreList.orEmptyList().cast() ?? []);
  }
}
extension GenreListResponseMapper on GenreListResponse? {
  GenreList toDomain(){
    return GenreList(this?.id?.orZero() ?? ZERO,this?.name?.orEmpty() ?? EMPTY);
  }
}
