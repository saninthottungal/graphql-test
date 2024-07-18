import 'albums_fragment.graphql.dart';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'posts_fragment.graphql.dart';
import 'todos_fragments.graphql.dart';

class Fragment$userInfo {
  Fragment$userInfo({
    this.name,
    this.email,
    this.posts,
    this.albums,
    this.todos,
    this.$__typename = 'User',
  });

  factory Fragment$userInfo.fromJson(Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$email = json['email'];
    final l$posts = json['posts'];
    final l$albums = json['albums'];
    final l$todos = json['todos'];
    final l$$__typename = json['__typename'];
    return Fragment$userInfo(
      name: (l$name as String?),
      email: (l$email as String?),
      posts: l$posts == null
          ? null
          : Fragment$userInfo$posts.fromJson((l$posts as Map<String, dynamic>)),
      albums: l$albums == null
          ? null
          : Fragment$userInfo$albums.fromJson(
              (l$albums as Map<String, dynamic>)),
      todos: l$todos == null
          ? null
          : Fragment$userInfo$todos.fromJson((l$todos as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String? name;

  final String? email;

  final Fragment$userInfo$posts? posts;

  final Fragment$userInfo$albums? albums;

  final Fragment$userInfo$todos? todos;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$email = email;
    _resultData['email'] = l$email;
    final l$posts = posts;
    _resultData['posts'] = l$posts?.toJson();
    final l$albums = albums;
    _resultData['albums'] = l$albums?.toJson();
    final l$todos = todos;
    _resultData['todos'] = l$todos?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$email = email;
    final l$posts = posts;
    final l$albums = albums;
    final l$todos = todos;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$email,
      l$posts,
      l$albums,
      l$todos,
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
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) {
      return false;
    }
    final l$posts = posts;
    final lOther$posts = other.posts;
    if (l$posts != lOther$posts) {
      return false;
    }
    final l$albums = albums;
    final lOther$albums = other.albums;
    if (l$albums != lOther$albums) {
      return false;
    }
    final l$todos = todos;
    final lOther$todos = other.todos;
    if (l$todos != lOther$todos) {
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
    String? email,
    Fragment$userInfo$posts? posts,
    Fragment$userInfo$albums? albums,
    Fragment$userInfo$todos? todos,
    String? $__typename,
  });
  CopyWith$Fragment$userInfo$posts<TRes> get posts;
  CopyWith$Fragment$userInfo$albums<TRes> get albums;
  CopyWith$Fragment$userInfo$todos<TRes> get todos;
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
    Object? email = _undefined,
    Object? posts = _undefined,
    Object? albums = _undefined,
    Object? todos = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$userInfo(
        name: name == _undefined ? _instance.name : (name as String?),
        email: email == _undefined ? _instance.email : (email as String?),
        posts: posts == _undefined
            ? _instance.posts
            : (posts as Fragment$userInfo$posts?),
        albums: albums == _undefined
            ? _instance.albums
            : (albums as Fragment$userInfo$albums?),
        todos: todos == _undefined
            ? _instance.todos
            : (todos as Fragment$userInfo$todos?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$userInfo$posts<TRes> get posts {
    final local$posts = _instance.posts;
    return local$posts == null
        ? CopyWith$Fragment$userInfo$posts.stub(_then(_instance))
        : CopyWith$Fragment$userInfo$posts(local$posts, (e) => call(posts: e));
  }

  CopyWith$Fragment$userInfo$albums<TRes> get albums {
    final local$albums = _instance.albums;
    return local$albums == null
        ? CopyWith$Fragment$userInfo$albums.stub(_then(_instance))
        : CopyWith$Fragment$userInfo$albums(
            local$albums, (e) => call(albums: e));
  }

  CopyWith$Fragment$userInfo$todos<TRes> get todos {
    final local$todos = _instance.todos;
    return local$todos == null
        ? CopyWith$Fragment$userInfo$todos.stub(_then(_instance))
        : CopyWith$Fragment$userInfo$todos(local$todos, (e) => call(todos: e));
  }
}

class _CopyWithStubImpl$Fragment$userInfo<TRes>
    implements CopyWith$Fragment$userInfo<TRes> {
  _CopyWithStubImpl$Fragment$userInfo(this._res);

  TRes _res;

  call({
    String? name,
    String? email,
    Fragment$userInfo$posts? posts,
    Fragment$userInfo$albums? albums,
    Fragment$userInfo$todos? todos,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$userInfo$posts<TRes> get posts =>
      CopyWith$Fragment$userInfo$posts.stub(_res);

  CopyWith$Fragment$userInfo$albums<TRes> get albums =>
      CopyWith$Fragment$userInfo$albums.stub(_res);

  CopyWith$Fragment$userInfo$todos<TRes> get todos =>
      CopyWith$Fragment$userInfo$todos.stub(_res);
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
      name: NameNode(value: 'email'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'posts'),
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
              name: NameNode(value: 'postsInfo'),
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
      name: NameNode(value: 'albums'),
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
              name: NameNode(value: 'albumInfo'),
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
      name: NameNode(value: 'todos'),
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
              name: NameNode(value: 'todoInfo'),
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
);
const documentNodeFragmentuserInfo = DocumentNode(definitions: [
  fragmentDefinitionuserInfo,
  fragmentDefinitionpostsInfo,
  fragmentDefinitionalbumInfo,
  fragmentDefinitiontodoInfo,
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

class Fragment$userInfo$posts {
  Fragment$userInfo$posts({
    this.data,
    this.$__typename = 'PostsPage',
  });

  factory Fragment$userInfo$posts.fromJson(Map<String, dynamic> json) {
    final l$data = json['data'];
    final l$$__typename = json['__typename'];
    return Fragment$userInfo$posts(
      data: (l$data as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$postsInfo.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$postsInfo?>? data;

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
    if (!(other is Fragment$userInfo$posts) ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Fragment$userInfo$posts on Fragment$userInfo$posts {
  CopyWith$Fragment$userInfo$posts<Fragment$userInfo$posts> get copyWith =>
      CopyWith$Fragment$userInfo$posts(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$userInfo$posts<TRes> {
  factory CopyWith$Fragment$userInfo$posts(
    Fragment$userInfo$posts instance,
    TRes Function(Fragment$userInfo$posts) then,
  ) = _CopyWithImpl$Fragment$userInfo$posts;

  factory CopyWith$Fragment$userInfo$posts.stub(TRes res) =
      _CopyWithStubImpl$Fragment$userInfo$posts;

  TRes call({
    List<Fragment$postsInfo?>? data,
    String? $__typename,
  });
  TRes data(
      Iterable<Fragment$postsInfo?>? Function(
              Iterable<CopyWith$Fragment$postsInfo<Fragment$postsInfo>?>?)
          _fn);
}

class _CopyWithImpl$Fragment$userInfo$posts<TRes>
    implements CopyWith$Fragment$userInfo$posts<TRes> {
  _CopyWithImpl$Fragment$userInfo$posts(
    this._instance,
    this._then,
  );

  final Fragment$userInfo$posts _instance;

  final TRes Function(Fragment$userInfo$posts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? data = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$userInfo$posts(
        data: data == _undefined
            ? _instance.data
            : (data as List<Fragment$postsInfo?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes data(
          Iterable<Fragment$postsInfo?>? Function(
                  Iterable<CopyWith$Fragment$postsInfo<Fragment$postsInfo>?>?)
              _fn) =>
      call(
          data: _fn(_instance.data?.map((e) => e == null
              ? null
              : CopyWith$Fragment$postsInfo(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Fragment$userInfo$posts<TRes>
    implements CopyWith$Fragment$userInfo$posts<TRes> {
  _CopyWithStubImpl$Fragment$userInfo$posts(this._res);

  TRes _res;

  call({
    List<Fragment$postsInfo?>? data,
    String? $__typename,
  }) =>
      _res;

  data(_fn) => _res;
}

class Fragment$userInfo$albums {
  Fragment$userInfo$albums({
    this.data,
    this.$__typename = 'AlbumsPage',
  });

  factory Fragment$userInfo$albums.fromJson(Map<String, dynamic> json) {
    final l$data = json['data'];
    final l$$__typename = json['__typename'];
    return Fragment$userInfo$albums(
      data: (l$data as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$albumInfo.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$albumInfo?>? data;

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
    if (!(other is Fragment$userInfo$albums) ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Fragment$userInfo$albums
    on Fragment$userInfo$albums {
  CopyWith$Fragment$userInfo$albums<Fragment$userInfo$albums> get copyWith =>
      CopyWith$Fragment$userInfo$albums(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$userInfo$albums<TRes> {
  factory CopyWith$Fragment$userInfo$albums(
    Fragment$userInfo$albums instance,
    TRes Function(Fragment$userInfo$albums) then,
  ) = _CopyWithImpl$Fragment$userInfo$albums;

  factory CopyWith$Fragment$userInfo$albums.stub(TRes res) =
      _CopyWithStubImpl$Fragment$userInfo$albums;

  TRes call({
    List<Fragment$albumInfo?>? data,
    String? $__typename,
  });
  TRes data(
      Iterable<Fragment$albumInfo?>? Function(
              Iterable<CopyWith$Fragment$albumInfo<Fragment$albumInfo>?>?)
          _fn);
}

class _CopyWithImpl$Fragment$userInfo$albums<TRes>
    implements CopyWith$Fragment$userInfo$albums<TRes> {
  _CopyWithImpl$Fragment$userInfo$albums(
    this._instance,
    this._then,
  );

  final Fragment$userInfo$albums _instance;

  final TRes Function(Fragment$userInfo$albums) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? data = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$userInfo$albums(
        data: data == _undefined
            ? _instance.data
            : (data as List<Fragment$albumInfo?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes data(
          Iterable<Fragment$albumInfo?>? Function(
                  Iterable<CopyWith$Fragment$albumInfo<Fragment$albumInfo>?>?)
              _fn) =>
      call(
          data: _fn(_instance.data?.map((e) => e == null
              ? null
              : CopyWith$Fragment$albumInfo(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Fragment$userInfo$albums<TRes>
    implements CopyWith$Fragment$userInfo$albums<TRes> {
  _CopyWithStubImpl$Fragment$userInfo$albums(this._res);

  TRes _res;

  call({
    List<Fragment$albumInfo?>? data,
    String? $__typename,
  }) =>
      _res;

  data(_fn) => _res;
}

class Fragment$userInfo$todos {
  Fragment$userInfo$todos({
    this.data,
    this.$__typename = 'TodosPage',
  });

  factory Fragment$userInfo$todos.fromJson(Map<String, dynamic> json) {
    final l$data = json['data'];
    final l$$__typename = json['__typename'];
    return Fragment$userInfo$todos(
      data: (l$data as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$todoInfo.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$todoInfo?>? data;

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
    if (!(other is Fragment$userInfo$todos) ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Fragment$userInfo$todos on Fragment$userInfo$todos {
  CopyWith$Fragment$userInfo$todos<Fragment$userInfo$todos> get copyWith =>
      CopyWith$Fragment$userInfo$todos(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$userInfo$todos<TRes> {
  factory CopyWith$Fragment$userInfo$todos(
    Fragment$userInfo$todos instance,
    TRes Function(Fragment$userInfo$todos) then,
  ) = _CopyWithImpl$Fragment$userInfo$todos;

  factory CopyWith$Fragment$userInfo$todos.stub(TRes res) =
      _CopyWithStubImpl$Fragment$userInfo$todos;

  TRes call({
    List<Fragment$todoInfo?>? data,
    String? $__typename,
  });
  TRes data(
      Iterable<Fragment$todoInfo?>? Function(
              Iterable<CopyWith$Fragment$todoInfo<Fragment$todoInfo>?>?)
          _fn);
}

class _CopyWithImpl$Fragment$userInfo$todos<TRes>
    implements CopyWith$Fragment$userInfo$todos<TRes> {
  _CopyWithImpl$Fragment$userInfo$todos(
    this._instance,
    this._then,
  );

  final Fragment$userInfo$todos _instance;

  final TRes Function(Fragment$userInfo$todos) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? data = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$userInfo$todos(
        data: data == _undefined
            ? _instance.data
            : (data as List<Fragment$todoInfo?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes data(
          Iterable<Fragment$todoInfo?>? Function(
                  Iterable<CopyWith$Fragment$todoInfo<Fragment$todoInfo>?>?)
              _fn) =>
      call(
          data: _fn(_instance.data?.map((e) => e == null
              ? null
              : CopyWith$Fragment$todoInfo(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Fragment$userInfo$todos<TRes>
    implements CopyWith$Fragment$userInfo$todos<TRes> {
  _CopyWithStubImpl$Fragment$userInfo$todos(this._res);

  TRes _res;

  call({
    List<Fragment$todoInfo?>? data,
    String? $__typename,
  }) =>
      _res;

  data(_fn) => _res;
}
