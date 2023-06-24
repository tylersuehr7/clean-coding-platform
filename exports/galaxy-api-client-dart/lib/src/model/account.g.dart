// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Account extends Account {
  @override
  final String id;
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final String displayName;
  @override
  final DateTime? deactivatedOn;
  @override
  final bool? isResetPassword;
  @override
  final bool? isVerified;
  @override
  final DateTime created;
  @override
  final DateTime updated;

  factory _$Account([void Function(AccountBuilder)? updates]) =>
      (new AccountBuilder()..update(updates))._build();

  _$Account._(
      {required this.id,
      this.firstName,
      this.lastName,
      required this.displayName,
      this.deactivatedOn,
      this.isResetPassword,
      this.isVerified,
      required this.created,
      required this.updated})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'Account', 'id');
    BuiltValueNullFieldError.checkNotNull(
        displayName, r'Account', 'displayName');
    BuiltValueNullFieldError.checkNotNull(created, r'Account', 'created');
    BuiltValueNullFieldError.checkNotNull(updated, r'Account', 'updated');
  }

  @override
  Account rebuild(void Function(AccountBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AccountBuilder toBuilder() => new AccountBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Account &&
        id == other.id &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        displayName == other.displayName &&
        deactivatedOn == other.deactivatedOn &&
        isResetPassword == other.isResetPassword &&
        isVerified == other.isVerified &&
        created == other.created &&
        updated == other.updated;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, firstName.hashCode);
    _$hash = $jc(_$hash, lastName.hashCode);
    _$hash = $jc(_$hash, displayName.hashCode);
    _$hash = $jc(_$hash, deactivatedOn.hashCode);
    _$hash = $jc(_$hash, isResetPassword.hashCode);
    _$hash = $jc(_$hash, isVerified.hashCode);
    _$hash = $jc(_$hash, created.hashCode);
    _$hash = $jc(_$hash, updated.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Account')
          ..add('id', id)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('displayName', displayName)
          ..add('deactivatedOn', deactivatedOn)
          ..add('isResetPassword', isResetPassword)
          ..add('isVerified', isVerified)
          ..add('created', created)
          ..add('updated', updated))
        .toString();
  }
}

class AccountBuilder implements Builder<Account, AccountBuilder> {
  _$Account? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  String? _displayName;
  String? get displayName => _$this._displayName;
  set displayName(String? displayName) => _$this._displayName = displayName;

  DateTime? _deactivatedOn;
  DateTime? get deactivatedOn => _$this._deactivatedOn;
  set deactivatedOn(DateTime? deactivatedOn) =>
      _$this._deactivatedOn = deactivatedOn;

  bool? _isResetPassword;
  bool? get isResetPassword => _$this._isResetPassword;
  set isResetPassword(bool? isResetPassword) =>
      _$this._isResetPassword = isResetPassword;

  bool? _isVerified;
  bool? get isVerified => _$this._isVerified;
  set isVerified(bool? isVerified) => _$this._isVerified = isVerified;

  DateTime? _created;
  DateTime? get created => _$this._created;
  set created(DateTime? created) => _$this._created = created;

  DateTime? _updated;
  DateTime? get updated => _$this._updated;
  set updated(DateTime? updated) => _$this._updated = updated;

  AccountBuilder() {
    Account._defaults(this);
  }

  AccountBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _displayName = $v.displayName;
      _deactivatedOn = $v.deactivatedOn;
      _isResetPassword = $v.isResetPassword;
      _isVerified = $v.isVerified;
      _created = $v.created;
      _updated = $v.updated;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Account other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Account;
  }

  @override
  void update(void Function(AccountBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Account build() => _build();

  _$Account _build() {
    final _$result = _$v ??
        new _$Account._(
            id: BuiltValueNullFieldError.checkNotNull(id, r'Account', 'id'),
            firstName: firstName,
            lastName: lastName,
            displayName: BuiltValueNullFieldError.checkNotNull(
                displayName, r'Account', 'displayName'),
            deactivatedOn: deactivatedOn,
            isResetPassword: isResetPassword,
            isVerified: isVerified,
            created: BuiltValueNullFieldError.checkNotNull(
                created, r'Account', 'created'),
            updated: BuiltValueNullFieldError.checkNotNull(
                updated, r'Account', 'updated'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
