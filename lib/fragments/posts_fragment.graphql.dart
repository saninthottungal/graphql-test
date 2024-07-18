import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Fragment$postsInfo {
  Fragment$postsInfo({
    this.title,
    this.body,
    this.$__typename = 'Post',
  });

  factory Fragment$postsInfo.fromJson(Map<String, dynamic> json) {
    final l$title = json['title'];
    final l$body = json['body'];
    final l$$__typename = json['__typename'];
    return Fragment$postsInfo(
      title: (l$title as String?),
      body: (l$body as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? title;

  final String? body;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$title = title;
    _resultData['title'] = l$title;
    final l$body = body;
    _resultData['body'] = l$body;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$title = title;
    final l$body = body;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$title,
      l$body,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$postsInfo) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    final l$body = body;
    final lOther$body = other.body;
    if (l$body != lOther$body) {
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

extension UtilityExtension$Fragment$postsInfo on Fragment$postsInfo {
  CopyWith$Fragment$postsInfo<Fragment$postsInfo> get copyWith =>
      CopyWith$Fragment$postsInfo(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$postsInfo<TRes> {
  factory CopyWith$Fragment$postsInfo(
    Fragment$postsInfo instance,
    TRes Function(Fragment$postsInfo) then,
  ) = _CopyWithImpl$Fragment$postsInfo;

  factory CopyWith$Fragment$postsInfo.stub(TRes res) =
      _CopyWithStubImpl$Fragment$postsInfo;

  TRes call({
    String? title,
    String? body,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$postsInfo<TRes>
    implements CopyWith$Fragment$postsInfo<TRes> {
  _CopyWithImpl$Fragment$postsInfo(
    this._instance,
    this._then,
  );

  final Fragment$postsInfo _instance;

  final TRes Function(Fragment$postsInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? title = _undefined,
    Object? body = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$postsInfo(
        title: title == _undefined ? _instance.title : (title as String?),
        body: body == _undefined ? _instance.body : (body as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$postsInfo<TRes>
    implements CopyWith$Fragment$postsInfo<TRes> {
  _CopyWithStubImpl$Fragment$postsInfo(this._res);

  TRes _res;

  call({
    String? title,
    String? body,
    String? $__typename,
  }) =>
      _res;
}

const fragmentDefinitionpostsInfo = FragmentDefinitionNode(
  name: NameNode(value: 'postsInfo'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Post'),
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
      name: NameNode(value: 'body'),
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
const documentNodeFragmentpostsInfo = DocumentNode(definitions: [
  fragmentDefinitionpostsInfo,
]);

extension ClientExtension$Fragment$postsInfo on graphql.GraphQLClient {
  void writeFragment$postsInfo({
    required Fragment$postsInfo data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'postsInfo',
            document: documentNodeFragmentpostsInfo,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$postsInfo? readFragment$postsInfo({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'postsInfo',
          document: documentNodeFragmentpostsInfo,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$postsInfo.fromJson(result);
  }
}
