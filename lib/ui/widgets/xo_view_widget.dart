import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:game_xo/bloc/xo_bloc.dart';

class XoViewWidget extends StatelessWidget {
  const XoViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<XoBloc, XoState>(
      builder: (context, state) {
        return Column(children: [
          GridView.count(
            shrinkWrap: true,
            crossAxisCount: 3,
            children: List.generate(9, (index) {
              return GridTile(
                child: Card(
                    child: ElevatedButton(
                  onPressed: () {
                    return BlocProvider.of<XoBloc>(context)
                        .add(ClickEvent(index: index));
                  },
                  child: Text(
                    state.str[index],
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                )),
              );
            }),
          ),
          ElevatedButton(
            onPressed: () {
              return BlocProvider.of<XoBloc>(context).add(const ResetEvent());
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(state.result,
                  style: Theme.of(context).textTheme.titleLarge),
            ),
          ),
        ]);
      },
    );
  }
}
