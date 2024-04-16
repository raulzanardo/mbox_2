import 'package:mobx/mobx.dart';
import 'dart:math' as math;

part 'random.g.dart';

class Random = _Random with _$Random;

abstract class _Random with Store {
  @observable
  int value = 0; //

  @action
  randomizer() {
    value = math.Random().nextInt(1000);
  }
}
