part of 'user_cubit.dart';

enum Status { initial, loading, loaded, error }

class UserState extends Equatable {
  const UserState({required this.status, this.userModel});
  final Status status;
  final List<UserModel>? userModel;

  @override
  List<Object?> get props => [status, userModel];
}
