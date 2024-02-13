part of '_index.dart';

final ct = Ctrl();

class Ctrl {
  tambah() {
    dt.rxCounter.state = dt.rxCounter.state + 10;
  }

  kurang() {
    dt.rxHitung.state = dt.rxHitung.state - 10;
  }
}
