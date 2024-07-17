import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Fragment$userInfo {
  Fragment$userInfo({
    this.id,
    this.name,
    this.username,
    this.email,
    this.$__typename = 'User',
  });

  factory Fragment$userInfo.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$username = json['username'];
    final l$email = json['email'];
    final l$$__typename = json['__typename'];
    return Fragment$userInfo(
      id: (l$id as String?),
      name: (l$name as String?),
      username: (l$username as String?),
      email: (l$email as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? id;

  final String? name;

  final String? username;

  final String? email;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
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
    final l$id = id;
    final l$name = name;
    final l$username = username;
    final l$email = email;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
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
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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
    String? id,
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
    Object? id = _undefined,
    Object? name = _undefined,
    Object? username = _undefined,
    Object? email = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$userInfo(
        id: id == _undefined ? _instance.id : (id as String?),
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
    String? id,
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
      name: NameNode(value: 'id'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
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
