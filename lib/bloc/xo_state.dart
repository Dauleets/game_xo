part of 'xo_bloc.dart';

class XoState {
  // const factory XoState.winsState() = _WinsState;
  // const factory XoState.strState(List<String> str, String result) = _StrState;
  // const factory XoState.resultState({required String result}) = _Resulttate;

  late final str;
  final String result;
  XoState({this.str, this.result = "reset"});
}
