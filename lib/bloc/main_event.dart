import 'package:equatable/equatable.dart';

abstract class Event extends Equatable{
  const Event();

  @override
  List<Object> get props => [];
}

class LoadEvent extends Event{
  String url;
  String filename;
  LoadEvent(this.url, this.filename);
}