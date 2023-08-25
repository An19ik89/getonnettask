import 'package:flutter/material.dart';
import 'package:flutter_get_on_net_task/application/dependency_injection.dart';
import 'package:flutter_get_on_net_task/data/responses/responses.dart';
import 'package:flutter_get_on_net_task/domain/model/model.dart';
import 'package:flutter_get_on_net_task/presentation/common/state_renderer/state_renderer_impl.dart';
import 'package:flutter_get_on_net_task/presentation/ui/movie/movie_list_viewmodel.dart';

class MovieListView extends StatefulWidget {
  const MovieListView({Key? key}) : super(key: key);

  @override
  State<MovieListView> createState() => _MovieListViewState();
}

class _MovieListViewState extends State<MovieListView> {
  final MovieListViewModel _viewModel = instance<MovieListViewModel>();
  _bind() {
    _viewModel.start();
  }

  @override
  void initState() {
    _bind();
    super.initState();
  }

  @override
  void dispose() {
    _viewModel.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // return _getContentWidget();
    return Scaffold(
      body: Center(
        child: StreamBuilder<GenreList>(
          stream: _viewModel.outputSliderViewObject,
          builder: (context, snapshot) {
            //print("DATA : ${snapshot.data!.name}");
            if(snapshot.data == null){
              return Container();
            }
            else{
              return Center(child: Text(snapshot.data!.name.toString(),style: const TextStyle(color: Colors.amber),));
            }
          },
        ),
      ),
    );
  }

}
