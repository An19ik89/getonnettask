abstract class MovieListViewModelInput {
  void goNext(); // when user clicks on right arrow or swipe left.
  void genres();
  void search();
  void movieList();
  Sink get inputSearch;

}

abstract class MovieListViewModelOutput {
  Stream<String> get outputSearch;
}