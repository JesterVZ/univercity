import 'package:bloc/bloc.dart';
import 'package:univercity_application/DI/locator.dart';
import 'package:univercity_application/bloc/main_event.dart';
import 'package:univercity_application/bloc/main_state.dart';
import 'package:univercity_application/http.dart';

class MainBloc extends Bloc<Event, MainState>{
  @override
  Stream<MainState> mapEventToState(Event event) async* {
    if(event is LoadEvent){
      yield* _handleDownload(event);
    }
  }
  MainBloc() : super(MainState.initial());
  download(String url, String filename){
    add(LoadEvent(url, filename));
  }

  Stream<MainState> _handleDownload(LoadEvent event) async*{
    yield state.copyWith(loading: true, error: null);
    await locator.get<httpClient>().download(event.url, event.filename);
    yield state.copyWith(loading: false, error: null);
  }
}