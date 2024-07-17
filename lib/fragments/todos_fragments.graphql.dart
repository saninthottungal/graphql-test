import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Fragment$todoInfo {
  Fragment$todoInfo({
    this.title,
    this.completed,
    this.$__typename = 'Todo',
  });

  factory Fragment$todoInfo.fromJson(Map<String, dynamic> json) {
    final l$title = json['title'];
    final l$completed = json['completed'];
    final l$$__typename = json['__typename'];
    return Fragment$todoInfo(
      title: (l$title as String?),
      completed: (l$completed as bool?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? title;

  final bool? completed;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$title = title;
    _resultData['title'] = l$title;
    final l$completed = completed;
    _resultData['completed'] = l$completed;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$title = title;
    final l$completed = completed;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$title,
      l$completed,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$todoInfo) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    final l$completed = completed;
    final lOther$completed = other.completed;
    if (l$completed != lOther$completed) {
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

extension UtilityExtension$Fragment$todoInfo on Fragment$todoInfo {
  CopyWith$Fragment$todoInfo<Fragment$todoInfo> get copyWith =>
      CopyWith$Fragment$todoInfo(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$todoInfo<TRes> {
  factory CopyWith$Fragment$todoInfo(
    Fragment$todoInfo instance,
    TRes Function(Fragment$todoInfo) then,
  ) = _CopyWithImpl$Fragment$todoInfo;

  factory CopyWith$Fragment$todoInfo.stub(TRes res) =
      _CopyWithStubImpl$Fragment$todoInfo;

  TRes call({
    String? title,
    bool? completed,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$todoInfo<TRes>
    implements CopyWith$Fragment$todoInfo<TRes> {
  _CopyWithImpl$Fragment$todoInfo(
    this._instance,
    this._then,
  );

  final Fragment$todoInfo _instance;

  final TRes Function(Fragment$todoInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? title = _undefined,
    Object? completed = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$todoInfo(
        title: title == _undefined ? _instance.title : (title as String?),
        completed: completed == _undefined
            ? _instance.completed
            : (completed as bool?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$todoInfo<TRes>
    implements CopyWith$Fragment$todoInfo<TRes> {
  _CopyWithStubImpl$Fragment$todoInfo(this._res);

  TRes _res;

  call({
    String? title,
    bool? completed,
    String? $__typename,
  }) =>
      _res;
}

const fragmentDefinitiontodoInfo = FragmentDefinitionNode(
  name: NameNode(value: 'todoInfo'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Todo'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 'title'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'completed'),
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
const documentNodeFragmenttodoInfo = DocumentNode(definitions: [
  fragmentDefinitiontodoInfo,
]);

extension ClientExtension$Fragment$todoInfo on graphql.GraphQLClient {
  void writeFragment$todoInfo({
    required Fragment$todoInfo data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'todoInfo',
            document: documentNodeFragmenttodoInfo,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$todoInfo? readFragment$todoInfo({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'todoInfo',
          document: documentNodeFragmenttodoInfo,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$todoInfo.fromJson(result);
  }
}
