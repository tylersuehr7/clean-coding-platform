import 'package:equatable/equatable.dart';
import 'package:galaxy_api_client_dart/galaxy_api_client_dart.dart';
import 'package:orion/domain/authentication/models/api_token.dart';

class AuthContext extends Equatable {
  final Account account;
  final ApiToken token;

  const AuthContext(this.account, this.token);

  @override
  List<Object> get props => [account, token];
}
