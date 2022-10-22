import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jc_bloc/logic/cubit/cubit/user_cubit.dart';
import 'package:jc_bloc/model/user.model.dart';

class UserListPage extends StatefulWidget {
  const UserListPage({Key? key}) : super(key: key);

  @override
  State<UserListPage> createState() => _UserListState();
}

class _UserListState extends State<UserListPage> {
  @override
  void initState() {
    context.read<UserCubit>().getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final c = context.watch<UserCubit>();
    final status = c.state.status;
    final data = c.state.userModel;

    switch (status) {
      case Status.initial:
        return const Center(child: CircularProgressIndicator());

      case Status.loading:
        return const Center(child: CircularProgressIndicator());
      case Status.loaded:
        return _build(data!);
      case Status.error:
        return const Center(child: CircularProgressIndicator());
    }
  }

  _build(List<UserModel> data) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("User List"),
      ),
      body: ListView.builder(
          itemCount: data.length,
          itemBuilder: ((context, index) {
            return ListTile(
              horizontalTitleGap: 4,
              contentPadding: const EdgeInsets.all(16),
              tileColor: Colors.purple[200],
              title: Text(data[index].name),
              subtitle: Text(data[index].email),
            );
          })),
    );
  }
}
