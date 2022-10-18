import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jc_bloc/logic/cubit/cubit/user_cubit.dart';

class MultiBlockWrapper extends StatelessWidget {
  const MultiBlockWrapper({Key? key, required this.child}) : super(key: key);
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [BlocProvider(create: (context) => UserCubit())],
        child: child);
  }
}
