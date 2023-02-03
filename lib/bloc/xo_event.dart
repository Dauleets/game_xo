part of 'xo_bloc.dart';

@freezed
class XoEvent with _$XoEvent {
  const factory XoEvent.resetEvent() = ResetEvent;
  const factory XoEvent.clickEvent({required int index}) = ClickEvent;
}
// class ResetEvent extends XoEvent {}

// class ClickEvent extends XoEvent {
//   final int index;
//   ClickEvent(this.index);
// }