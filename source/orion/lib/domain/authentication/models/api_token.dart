import 'package:equatable/equatable.dart';

class ApiToken extends Equatable {
  final String access;
  final String refresh;
  late final DateTime expiration;

  ApiToken(this.access, this.refresh, { DateTime? expiration }) {
    this.expiration = expiration ?? DateTime.now().add(const Duration(minutes: 20));
  }

  @override
  List<Object> get props => [access, refresh, expiration];
}
