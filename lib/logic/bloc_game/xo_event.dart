part of 'xo_bloc.dart';

abstract class XoEvent {}

class ResetEvent extends XoEvent {}

class ClickEvent extends XoEvent {
  final int index;
  ClickEvent(this.index);
}
