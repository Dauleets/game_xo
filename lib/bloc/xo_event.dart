part of 'xo_bloc.dart';

abstract class XoEvent {
//   const factory XoEvent.resetEvent() = ResetEvent;
//   const factory XoEvent.clickEvent({required int index}) = ClickEvent;
//   const factory XoEvent.drawEvent() = DrawEvent;
//   const factory XoEvent.winsEvent() = WinsEvent;
}

class ResetEvent extends XoEvent {}

class ClickEvent extends XoEvent {
  final int index;
  ClickEvent(this.index);
}
