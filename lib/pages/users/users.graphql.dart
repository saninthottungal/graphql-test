import '../../fragments/todos_fragments.graphql.dart';
import '../../fragments/users_fragments.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Query$getUsers {
  Query$getUsers({
    this.users,
    this.$__typename = 'Query',
  });

  factory Query$getUsers.fromJson(Map<String, dynamic> json) {
    final l$users = json['users'];
    final l$$__typename = json['__typename'];
    return Query$getUsers(
      users: l$users == null
          ? null
          : Query$getUsers$users.fromJson((l$users as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$getUsers$users? users;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$users = users;
    _resultData['users'] = l$users?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$users = users;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$users,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$getUsers) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$users = users;
    final lOther$users = other.users;
    if (l$users != lOther$users) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$getUsers on Query$getUsers {
  CopyWith$Query$getUsers<Query$getUsers> get copyWith =>
      CopyWith$Query$getUsers(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$getUsers<TRes> {
  factory CopyWith$Query$getUsers(
    Query$getUsers instance,
    TRes Function(Query$getUsers) then,
  ) = _CopyWithImpl$Query$getUsers;

  factory CopyWith$Query$getUsers.stub(TRes res) =
      _CopyWithStubImpl$Query$getUsers;

  TRes call({
    Query$getUsers$users? users,
    String? $__typename,
  });
  CopyWith$Query$getUsers$users<TRes> get users;
}

class _CopyWithImpl$Query$getUsers<TRes>
    implements CopyWith$Query$getUsers<TRes> {
  _CopyWithImpl$Query$getUsers(
    this._instance,
    this._then,
  );

  final Query$getUsers _instance;

  final TRes Function(Query$getUsers) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? users = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getUsers(
        users: users == _undefined
            ? _instance.users
            : (users as Query$getUsers$users?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$getUsers$users<TRes> get users {
    final local$users = _instance.users;
    return local$users == null
        ? CopyWith$Query$getUsers$users.stub(_then(_instance))
        : CopyWith$Query$getUsers$users(local$users, (e) => call(users: e));
  }
}

class _CopyWithStubImpl$Query$getUsers<TRes>
    implements CopyWith$Query$getUsers<TRes> {
  _CopyWithStubImpl$Query$getUsers(this._res);

  TRes _res;

  call({
    Query$getUsers$users? users,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$getUsers$users<TRes> get users =>
      CopyWith$Query$getUsers$users.stub(_res);
}

const documentNodeQuerygetUsers = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'getUsers'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'users'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'data'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'userInfo'),
                directives: [],
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
  fragmentDefinitionuserInfo,
  fragmentDefinitiontodoInfo,
]);
Query$getUsers _parserFn$Query$getUsers(Map<String, dynamic> data) =>
    Query$getUsers.fromJson(data);
typedef OnQueryComplete$Query$getUsers = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$getUsers?,
);

class Options$Query$getUsers extends graphql.QueryOptions<Query$getUsers> {
  Options$Query$getUsers({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$getUsers? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$getUsers? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          pollInterval: pollInterval,
          context: context,
          onComplete: onComplete == null
              ? null
              : (data) => onComplete(
                    data,
                    data == null ? null : _parserFn$Query$getUsers(data),
                  ),
          onError: onError,
          document: documentNodeQuerygetUsers,
          parserFn: _parserFn$Query$getUsers,
        );

  final OnQueryComplete$Query$getUsers? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$getUsers
    extends graphql.WatchQueryOptions<Query$getUsers> {
  WatchOptions$Query$getUsers({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$getUsers? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeQuerygetUsers,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$getUsers,
        );
}

class FetchMoreOptions$Query$getUsers extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$getUsers({required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQuerygetUsers,
        );
}

extension ClientExtension$Query$getUsers on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$getUsers>> query$getUsers(
          [Options$Query$getUsers? options]) async =>
      await this.query(options ?? Options$Query$getUsers());
  graphql.ObservableQuery<Query$getUsers> watchQuery$getUsers(
          [WatchOptions$Query$getUsers? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$getUsers());
  void writeQuery$getUsers({
    required Query$getUsers data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation: graphql.Operation(document: documentNodeQuerygetUsers)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$getUsers? readQuery$getUsers({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation: graphql.Operation(document: documentNodeQuerygetUsers)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$getUsers.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$getUsers> useQuery$getUsers(
        [Options$Query$getUsers? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$getUsers());
graphql.ObservableQuery<Query$getUsers> useWatchQuery$getUsers(
        [WatchOptions$Query$getUsers? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptions$Query$getUsers());

class Query$getUsers$Widget extends graphql_flutter.Query<Query$getUsers> {
  Query$getUsers$Widget({
    widgets.Key? key,
    Options$Query$getUsers? options,
    required graphql_flutter.QueryBuilder<Query$getUsers> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$getUsers(),
          builder: builder,
        );
}

class Query$getUsers$users {
  Query$getUsers$users({
    this.data,
    this.$__typename = 'UsersPage',
  });

  factory Query$getUsers$users.fromJson(Map<String, dynamic> json) {
    final l$data = json['data'];
    final l$$__typename = json['__typename'];
    return Query$getUsers$users(
      data: (l$data as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$userInfo.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$userInfo?>? data;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$data = data;
    _resultData['data'] = l$data?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$data = data;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$data == null ? null : Object.hashAll(l$data.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$getUsers$users) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$data = data;
    final lOther$data = other.data;
    if (l$data != null && lOther$data != null) {
      if (l$data.length != lOther$data.length) {
        return false;
      }
      for (int i = 0; i < l$data.length; i++) {
        final l$data$entry = l$data[i];
        final lOther$data$entry = lOther$data[i];
        if (l$data$entry != lOther$data$entry) {
          return false;
        }
      }
    } else if (l$data != lOther$data) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$getUsers$users on Query$getUsers$users {
  CopyWith$Query$getUsers$users<Query$getUsers$users> get copyWith =>
      CopyWith$Query$getUsers$users(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$getUsers$users<TRes> {
  factory CopyWith$Query$getUsers$users(
    Query$getUsers$users instance,
    TRes Function(Query$getUsers$users) then,
  ) = _CopyWithImpl$Query$getUsers$users;

  factory CopyWith$Query$getUsers$users.stub(TRes res) =
      _CopyWithStubImpl$Query$getUsers$users;

  TRes call({
    List<Fragment$userInfo?>? data,
    String? $__typename,
  });
  TRes data(
      Iterable<Fragment$userInfo?>? Function(
              Iterable<CopyWith$Fragment$userInfo<Fragment$userInfo>?>?)
          _fn);
}

class _CopyWithImpl$Query$getUsers$users<TRes>
    implements CopyWith$Query$getUsers$users<TRes> {
  _CopyWithImpl$Query$getUsers$users(
    this._instance,
    this._then,
  );

  final Query$getUsers$users _instance;

  final TRes Function(Query$getUsers$users) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? data = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getUsers$users(
        data: data == _undefined
            ? _instance.data
            : (data as List<Fragment$userInfo?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes data(
          Iterable<Fragment$userInfo?>? Function(
                  Iterable<CopyWith$Fragment$userInfo<Fragment$userInfo>?>?)
              _fn) =>
      call(
          data: _fn(_instance.data?.map((e) => e == null
              ? null
              : CopyWith$Fragment$userInfo(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$getUsers$users<TRes>
    implements CopyWith$Query$getUsers$users<TRes> {
  _CopyWithStubImpl$Query$getUsers$users(this._res);

  TRes _res;

  call({
    List<Fragment$userInfo?>? data,
    String? $__typename,
  }) =>
      _res;

  data(_fn) => _res;
}
