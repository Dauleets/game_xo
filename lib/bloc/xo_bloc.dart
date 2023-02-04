import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:game_xo/bloc/xo_func.dart';

part 'xo_event.dart';
part 'xo_state.dart';

class XoBloc extends Bloc<XoEvent, XoState> {
  XoFunc function = XoFunc();
  var str = List.filled(9, "", growable: false);
  XoBloc() : super(XoState(str: List.filled(9, "", growable: false))) {
    on<ResetEvent>((event, emit) {
      var dispose = function.dispose();
      str = dispose[0];
      emit(XoState(str: dispose[0], result: dispose[1]));
      // emit(XoState.resultState(result: dispose[1]));
    });
    on<ClickEvent>((event, emit) {
      var click = function.click(event.index, str);
      emit(XoState(str: click[0], result: click[1]));
      // emit(XoState.resultState(result: click[1]));
      // }
    });
  }
}

// class XoBloc extends Bloc<XoEvent, XoState> {
//   XoFunc function = XoFunc();
//   var str = List.filled(9, "", growable: false);
//   XoBloc()
//       : super(XoState.strState(List.filled(9, "", growable: false), 'reset')) {
//     on<ResetEvent>((event, emit) {
//       var dispose = function.dispose();
//       str = dispose[0];
//       emit(XoState.strState(dispose[0], dispose[1]));
//       // emit(XoState.resultState(result: dispose[1]));
//     });
//     on<ClickEvent>((event, emit) {
//       var click = function.click(event.index, str);
//       emit(XoState.strState(click[0], click[1]));
//       // emit(XoState.resultState(result: click[1]));
//       // }
//     });
//   }
// }
