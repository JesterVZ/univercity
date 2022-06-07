class MainState{
  final bool? loading;
  final Object? error;
  MainState({this.loading, this.error});
  static initial() => MainState(
    loading: false,
    error: null,
  );

  MainState copyWith({
    bool? loading,
    Object? error
  }){
    return MainState(
      loading: loading ?? this.loading,
      error: error
    );
  }
}