import 'dart:async';

import 'package:flutter_get_on_net_task/data/responses/responses.dart';
import 'package:flutter_get_on_net_task/domain/model/model.dart';
import 'package:flutter_get_on_net_task/domain/usecase/genres_usecase.dart';
import 'package:flutter_get_on_net_task/domain/usecase/movielist_usecase.dart';
import 'package:flutter_get_on_net_task/presentation/base/baseviewmodel.dart';
import 'package:flutter_get_on_net_task/presentation/common/freezed_data_classes.dart';
import 'package:flutter_get_on_net_task/presentation/common/state_renderer/state_renderer.dart';
import 'package:flutter_get_on_net_task/presentation/common/state_renderer/state_renderer_impl.dart';
import 'package:flutter_get_on_net_task/presentation/ui/movie/movie_list_interface.dart';

class  MovieListViewModel extends BaseViewModel implements MovieListViewModelInput,MovieListViewModelOutput{

  final StreamController _searchStreamController = StreamController<String>.broadcast();

  // stream controllers
  final StreamController _streamController = StreamController<GenreResponse>();

  final MovieListUseCase movieListUseCase;
  final GenresListUseCase genresListUseCase;

  //final GenresListUseCase genresListUseCase;


  MovieListViewModel(this.movieListUseCase,this.genresListUseCase);


  var movieListObject = MovieListObject(1, "action");

 late GenreResponse response;

  @override
  void genres() async{
    inputState.add(LoadingState(stateRendererType: StateRendererType.POPUP_LOADING_STATE));
    (await genresListUseCase.execute()).fold(
            (failure) => {
          // left -> failure
          inputState.add(ErrorState(
              StateRendererType.POPUP_ERROR_STATE, failure.message))
        }, (data) {
      // right -> success (data)

      inputSliderViewObject.add(data);

      for(int i = 0; i<data.genreList!.length ; i++){
        print(data.genreList![i].name);
      }
      inputState.add(ContentState());

    });
  }

  @override
  void goNext() async{

  }

  @override
  // TODO: implement inputSearch
  Sink get inputSearch => throw UnimplementedError();

  @override
  void movieList() async{
    inputState.add(LoadingState(stateRendererType: StateRendererType.POPUP_LOADING_STATE));
    (await movieListUseCase.execute(
    MovieListUseCaseInput(movieListObject.page, movieListObject.query))).fold(
    (failure) => {
    // left -> failure
    inputState.add(ErrorState(
    StateRendererType.POPUP_ERROR_STATE, failure.message))
    }, (data) {
    // right -> success (data)

    inputState.add(ContentState());
    });
  }

  @override
  // TODO: implement outputSearch
  Stream<String> get outputSearch => throw UnimplementedError();

  @override
  void search() {
    // TODO: implement search
  }

  @override
  void start() {
    // TODO: implement start
    inputState.add(ContentState());
  }

  @override
  void dispose() {
    _searchStreamController.close();
    _streamController.close();
    // TODO: implement genres
  }

  Sink get inputSliderViewObject => _streamController.sink;

  @override
  Stream<GenreResponse> get outputSliderViewObject => _streamController.stream.map((response) => response);

}