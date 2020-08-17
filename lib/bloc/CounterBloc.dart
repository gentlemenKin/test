
import 'dart:async';

class CounterBloc{

  int _counter = 0;

  final _counterStreamController = new StreamController<int>();


  Stream<int> get stream_counter =>_counterStreamController.stream;

  void addCount(){
    _counterStreamController.sink.add(++_counter);
  }

  void dispose(){
    _counterStreamController.close();
  }
}