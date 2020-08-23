import 'dart:async';

class QuestionTimer {
  int _timer = 30;

  final _controller = StreamController<int>();

  QuestionTimer() {
    Timer.periodic(Duration(seconds: 1), (Timer t) {
      _controller.sink.add(_timer);
      _timer < 1 ? _controller.close() : _timer = _timer - 1;
    });
  }

  Stream<int> get stream => _controller.stream;
}
