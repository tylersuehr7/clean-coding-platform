// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_tasks_for_account_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListTasksForAccountResponse extends ListTasksForAccountResponse {
  @override
  final String? next;
  @override
  final String? prev;
  @override
  final int count;
  @override
  final BuiltList<Task> results;

  factory _$ListTasksForAccountResponse(
          [void Function(ListTasksForAccountResponseBuilder)? updates]) =>
      (new ListTasksForAccountResponseBuilder()..update(updates))._build();

  _$ListTasksForAccountResponse._(
      {this.next, this.prev, required this.count, required this.results})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        count, r'ListTasksForAccountResponse', 'count');
    BuiltValueNullFieldError.checkNotNull(
        results, r'ListTasksForAccountResponse', 'results');
  }

  @override
  ListTasksForAccountResponse rebuild(
          void Function(ListTasksForAccountResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListTasksForAccountResponseBuilder toBuilder() =>
      new ListTasksForAccountResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListTasksForAccountResponse &&
        next == other.next &&
        prev == other.prev &&
        count == other.count &&
        results == other.results;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, next.hashCode);
    _$hash = $jc(_$hash, prev.hashCode);
    _$hash = $jc(_$hash, count.hashCode);
    _$hash = $jc(_$hash, results.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ListTasksForAccountResponse')
          ..add('next', next)
          ..add('prev', prev)
          ..add('count', count)
          ..add('results', results))
        .toString();
  }
}

class ListTasksForAccountResponseBuilder
    implements
        Builder<ListTasksForAccountResponse,
            ListTasksForAccountResponseBuilder> {
  _$ListTasksForAccountResponse? _$v;

  String? _next;
  String? get next => _$this._next;
  set next(String? next) => _$this._next = next;

  String? _prev;
  String? get prev => _$this._prev;
  set prev(String? prev) => _$this._prev = prev;

  int? _count;
  int? get count => _$this._count;
  set count(int? count) => _$this._count = count;

  ListBuilder<Task>? _results;
  ListBuilder<Task> get results => _$this._results ??= new ListBuilder<Task>();
  set results(ListBuilder<Task>? results) => _$this._results = results;

  ListTasksForAccountResponseBuilder() {
    ListTasksForAccountResponse._defaults(this);
  }

  ListTasksForAccountResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _next = $v.next;
      _prev = $v.prev;
      _count = $v.count;
      _results = $v.results.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListTasksForAccountResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListTasksForAccountResponse;
  }

  @override
  void update(void Function(ListTasksForAccountResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListTasksForAccountResponse build() => _build();

  _$ListTasksForAccountResponse _build() {
    _$ListTasksForAccountResponse _$result;
    try {
      _$result = _$v ??
          new _$ListTasksForAccountResponse._(
              next: next,
              prev: prev,
              count: BuiltValueNullFieldError.checkNotNull(
                  count, r'ListTasksForAccountResponse', 'count'),
              results: results.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'results';
        results.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ListTasksForAccountResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
