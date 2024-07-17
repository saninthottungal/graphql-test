import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Fragment$userInfo {
  Fragment$userInfo({
    this.name,
    this.username,
    this.email,
    this.$__typename = 'User',
  });

  factory Fragment$userInfo.fromJson(Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$username = json['username'];
    final l$email = json['email'];
    final l$$__typename = json['__typename'];
    return Fragment$userInfo(
      name: (l$name as String?),
      username: (l$username as String?),
      email: (l$email as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? name;

  final String? username;

  final String? email;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$username = username;
    _resultData['username'] = l$username;
    final l$email = email;
    _resultData['email'] = l$email;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$username = username;
    final l$email = email;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$username,
      l$email,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$userInfo) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$username = username;
    final lOther$username = other.username;
    if (l$username != lOther$username) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) {
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

extension UtilityExtension$Fragment$userInfo on Fragment$userInfo {
  CopyWith$Fragment$userInfo<Fragment$userInfo> get copyWith =>
      CopyWith$Fragment$userInfo(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$userInfo<TRes> {
  factory CopyWith$Fragment$userInfo(
    Fragment$userInfo instance,
    TRes Function(Fragment$userInfo) then,
  ) = _CopyWithImpl$Fragment$userInfo;

  factory CopyWith$Fragment$userInfo.stub(TRes res) =
      _CopyWithStubImpl$Fragment$userInfo;

  TRes call({
    String? name,
    String? username,
    String? email,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$userInfo<TRes>
    implements CopyWith$Fragment$userInfo<TRes> {
  _CopyWithImpl$Fragment$userInfo(
    this._instance,
    this._then,
  );

  final Fragment$userInfo _instance;

  final TRes Function(Fragment$userInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? username = _undefined,
    Object? email = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$userInfo(
        name: name == _undefined ? _instance.name : (name as String?),
        username:
            username == _undefined ? _instance.username : (username as String?),
        email: email == _undefined ? _instance.email : (email as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$userInfo<TRes>
    implements CopyWith$Fragment$userInfo<TRes> {
  _CopyWithStubImpl$Fragment$userInfo(this._res);

  TRes _res;

  call({
    String? name,
    String? username,
    String? email,
    String? $__typename,
  }) =>
      _res;
}

const fragmentDefinitionuserInfo = FragmentDefinitionNode(
  name: NameNode(value: 'userInfo'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'User'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 'name'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'username'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'email'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: '__typename'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
  ]),
);
const documentNodeFragmentuserInfo = DocumentNode(definitions: [
  fragmentDefinitionuserInfo,
]);

extension ClientExtension$Fragment$userInfo on graphql.GraphQLClient {
  void writeFragment$userInfo({
    required Fragment$userInfo data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'userInfo',
            document: documentNodeFragmentuserInfo,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$userInfo? readFragment$userInfo({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'userInfo',
          document: documentNodeFragmentuserInfo,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$userInfo.fromJson(result);
  }
}

class Variables$Query$getUser {
  factory Variables$Query$getUser({required String id}) =>
      Variables$Query$getUser._({
        r'id': id,
      });

  Variables$Query$getUser._(this._$data);

  factory Variables$Query$getUser.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Variables$Query$getUser._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Variables$Query$getUser<Variables$Query$getUser> get copyWith =>
      CopyWith$Variables$Query$getUser(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$getUser) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    return Object.hashAll([l$id]);
  }
}

abstract class CopyWith$Variables$Query$getUser<TRes> {
  factory CopyWith$Variables$Query$getUser(
    Variables$Query$getUser instance,
    TRes Function(Variables$Query$getUser) then,
  ) = _CopyWithImpl$Variables$Query$getUser;

  factory CopyWith$Variables$Query$getUser.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$getUser;

  TRes call({String? id});
}

class _CopyWithImpl$Variables$Query$getUser<TRes>
    implements CopyWith$Variables$Query$getUser<TRes> {
  _CopyWithImpl$Variables$Query$getUser(
    this._instance,
    this._then,
  );

  final Variables$Query$getUser _instance;

  final TRes Function(Variables$Query$getUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(Variables$Query$getUser._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$getUser<TRes>
    implements CopyWith$Variables$Query$getUser<TRes> {
  _CopyWithStubImpl$Variables$Query$getUser(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Query$getUser {
  Query$getUser({
    this.user,
    this.$__typename = 'Query',
  });

  factory Query$getUser.fromJson(Map<String, dynamic> json) {
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    return Query$getUser(
      user: l$user == null
          ? null
          : Fragment$userInfo.fromJson((l$user as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$userInfo? user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$user = user;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$user,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$getUser) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
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

extension UtilityExtension$Query$getUser on Query$getUser {
  CopyWith$Query$getUser<Query$getUser> get copyWith => CopyWith$Query$getUser(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$getUser<TRes> {
  factory CopyWith$Query$getUser(
    Query$getUser instance,
    TRes Function(Query$getUser) then,
  ) = _CopyWithImpl$Query$getUser;

  factory CopyWith$Query$getUser.stub(TRes res) =
      _CopyWithStubImpl$Query$getUser;

  TRes call({
    Fragment$userInfo? user,
    String? $__typename,
  });
  CopyWith$Fragment$userInfo<TRes> get user;
}

class _CopyWithImpl$Query$getUser<TRes>
    implements CopyWith$Query$getUser<TRes> {
  _CopyWithImpl$Query$getUser(
    this._instance,
    this._then,
  );

  final Query$getUser _instance;

  final TRes Function(Query$getUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? user = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getUser(
        user:
            user == _undefined ? _instance.user : (user as Fragment$userInfo?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$userInfo<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith$Fragment$userInfo.stub(_then(_instance))
        : CopyWith$Fragment$userInfo(local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl$Query$getUser<TRes>
    implements CopyWith$Query$getUser<TRes> {
  _CopyWithStubImpl$Query$getUser(this._res);

  TRes _res;

  call({
    Fragment$userInfo? user,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$userInfo<TRes> get user =>
      CopyWith$Fragment$userInfo.stub(_res);
}

const documentNodeQuerygetUser = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'getUser'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'user'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'id')),
          )
        ],
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
  fragmentDefinitionuserInfo,
]);
Query$getUser _parserFn$Query$getUser(Map<String, dynamic> data) =>
    Query$getUser.fromJson(data);
typedef OnQueryComplete$Query$getUser = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$getUser?,
);

class Options$Query$getUser extends graphql.QueryOptions<Query$getUser> {
  Options$Query$getUser({
    String? operationName,
    required Variables$Query$getUser variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$getUser? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$getUser? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          variables: variables.toJson(),
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
                    data == null ? null : _parserFn$Query$getUser(data),
                  ),
          onError: onError,
          document: documentNodeQuerygetUser,
          parserFn: _parserFn$Query$getUser,
        );

  final OnQueryComplete$Query$getUser? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$getUser
    extends graphql.WatchQueryOptions<Query$getUser> {
  WatchOptions$Query$getUser({
    String? operationName,
    required Variables$Query$getUser variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$getUser? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeQuerygetUser,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$getUser,
        );
}

class FetchMoreOptions$Query$getUser extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$getUser({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$getUser variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQuerygetUser,
        );
}

extension ClientExtension$Query$getUser on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$getUser>> query$getUser(
          Options$Query$getUser options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$getUser> watchQuery$getUser(
          WatchOptions$Query$getUser options) =>
      this.watchQuery(options);
  void writeQuery$getUser({
    required Query$getUser data,
    required Variables$Query$getUser variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQuerygetUser),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$getUser? readQuery$getUser({
    required Variables$Query$getUser variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQuerygetUser),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$getUser.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$getUser> useQuery$getUser(
        Options$Query$getUser options) =>
    graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$getUser> useWatchQuery$getUser(
        WatchOptions$Query$getUser options) =>
    graphql_flutter.useWatchQuery(options);

class Query$getUser$Widget extends graphql_flutter.Query<Query$getUser> {
  Query$getUser$Widget({
    widgets.Key? key,
    required Options$Query$getUser options,
    required graphql_flutter.QueryBuilder<Query$getUser> builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}
