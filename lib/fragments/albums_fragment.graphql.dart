import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Fragment$albumInfo {
  Fragment$albumInfo({
    this.title,
    this.photos,
    this.$__typename = 'Album',
  });

  factory Fragment$albumInfo.fromJson(Map<String, dynamic> json) {
    final l$title = json['title'];
    final l$photos = json['photos'];
    final l$$__typename = json['__typename'];
    return Fragment$albumInfo(
      title: (l$title as String?),
      photos: l$photos == null
          ? null
          : Fragment$albumInfo$photos.fromJson(
              (l$photos as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String? title;

  final Fragment$albumInfo$photos? photos;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$title = title;
    _resultData['title'] = l$title;
    final l$photos = photos;
    _resultData['photos'] = l$photos?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$title = title;
    final l$photos = photos;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$title,
      l$photos,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$albumInfo) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    final l$photos = photos;
    final lOther$photos = other.photos;
    if (l$photos != lOther$photos) {
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

extension UtilityExtension$Fragment$albumInfo on Fragment$albumInfo {
  CopyWith$Fragment$albumInfo<Fragment$albumInfo> get copyWith =>
      CopyWith$Fragment$albumInfo(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$albumInfo<TRes> {
  factory CopyWith$Fragment$albumInfo(
    Fragment$albumInfo instance,
    TRes Function(Fragment$albumInfo) then,
  ) = _CopyWithImpl$Fragment$albumInfo;

  factory CopyWith$Fragment$albumInfo.stub(TRes res) =
      _CopyWithStubImpl$Fragment$albumInfo;

  TRes call({
    String? title,
    Fragment$albumInfo$photos? photos,
    String? $__typename,
  });
  CopyWith$Fragment$albumInfo$photos<TRes> get photos;
}

class _CopyWithImpl$Fragment$albumInfo<TRes>
    implements CopyWith$Fragment$albumInfo<TRes> {
  _CopyWithImpl$Fragment$albumInfo(
    this._instance,
    this._then,
  );

  final Fragment$albumInfo _instance;

  final TRes Function(Fragment$albumInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? title = _undefined,
    Object? photos = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$albumInfo(
        title: title == _undefined ? _instance.title : (title as String?),
        photos: photos == _undefined
            ? _instance.photos
            : (photos as Fragment$albumInfo$photos?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$albumInfo$photos<TRes> get photos {
    final local$photos = _instance.photos;
    return local$photos == null
        ? CopyWith$Fragment$albumInfo$photos.stub(_then(_instance))
        : CopyWith$Fragment$albumInfo$photos(
            local$photos, (e) => call(photos: e));
  }
}

class _CopyWithStubImpl$Fragment$albumInfo<TRes>
    implements CopyWith$Fragment$albumInfo<TRes> {
  _CopyWithStubImpl$Fragment$albumInfo(this._res);

  TRes _res;

  call({
    String? title,
    Fragment$albumInfo$photos? photos,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$albumInfo$photos<TRes> get photos =>
      CopyWith$Fragment$albumInfo$photos.stub(_res);
}

const fragmentDefinitionalbumInfo = FragmentDefinitionNode(
  name: NameNode(value: 'albumInfo'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Album'),
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
      name: NameNode(value: 'photos'),
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
            FieldNode(
              name: NameNode(value: 'title'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'url'),
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
const documentNodeFragmentalbumInfo = DocumentNode(definitions: [
  fragmentDefinitionalbumInfo,
]);

extension ClientExtension$Fragment$albumInfo on graphql.GraphQLClient {
  void writeFragment$albumInfo({
    required Fragment$albumInfo data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'albumInfo',
            document: documentNodeFragmentalbumInfo,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$albumInfo? readFragment$albumInfo({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'albumInfo',
          document: documentNodeFragmentalbumInfo,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$albumInfo.fromJson(result);
  }
}

class Fragment$albumInfo$photos {
  Fragment$albumInfo$photos({
    this.data,
    this.$__typename = 'PhotosPage',
  });

  factory Fragment$albumInfo$photos.fromJson(Map<String, dynamic> json) {
    final l$data = json['data'];
    final l$$__typename = json['__typename'];
    return Fragment$albumInfo$photos(
      data: (l$data as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$albumInfo$photos$data.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$albumInfo$photos$data?>? data;

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
    if (!(other is Fragment$albumInfo$photos) ||
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

extension UtilityExtension$Fragment$albumInfo$photos
    on Fragment$albumInfo$photos {
  CopyWith$Fragment$albumInfo$photos<Fragment$albumInfo$photos> get copyWith =>
      CopyWith$Fragment$albumInfo$photos(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$albumInfo$photos<TRes> {
  factory CopyWith$Fragment$albumInfo$photos(
    Fragment$albumInfo$photos instance,
    TRes Function(Fragment$albumInfo$photos) then,
  ) = _CopyWithImpl$Fragment$albumInfo$photos;

  factory CopyWith$Fragment$albumInfo$photos.stub(TRes res) =
      _CopyWithStubImpl$Fragment$albumInfo$photos;

  TRes call({
    List<Fragment$albumInfo$photos$data?>? data,
    String? $__typename,
  });
  TRes data(
      Iterable<Fragment$albumInfo$photos$data?>? Function(
              Iterable<
                  CopyWith$Fragment$albumInfo$photos$data<
                      Fragment$albumInfo$photos$data>?>?)
          _fn);
}

class _CopyWithImpl$Fragment$albumInfo$photos<TRes>
    implements CopyWith$Fragment$albumInfo$photos<TRes> {
  _CopyWithImpl$Fragment$albumInfo$photos(
    this._instance,
    this._then,
  );

  final Fragment$albumInfo$photos _instance;

  final TRes Function(Fragment$albumInfo$photos) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? data = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$albumInfo$photos(
        data: data == _undefined
            ? _instance.data
            : (data as List<Fragment$albumInfo$photos$data?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes data(
          Iterable<Fragment$albumInfo$photos$data?>? Function(
                  Iterable<
                      CopyWith$Fragment$albumInfo$photos$data<
                          Fragment$albumInfo$photos$data>?>?)
              _fn) =>
      call(
          data: _fn(_instance.data?.map((e) => e == null
              ? null
              : CopyWith$Fragment$albumInfo$photos$data(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Fragment$albumInfo$photos<TRes>
    implements CopyWith$Fragment$albumInfo$photos<TRes> {
  _CopyWithStubImpl$Fragment$albumInfo$photos(this._res);

  TRes _res;

  call({
    List<Fragment$albumInfo$photos$data?>? data,
    String? $__typename,
  }) =>
      _res;

  data(_fn) => _res;
}

class Fragment$albumInfo$photos$data {
  Fragment$albumInfo$photos$data({
    this.title,
    this.url,
    this.$__typename = 'Photo',
  });

  factory Fragment$albumInfo$photos$data.fromJson(Map<String, dynamic> json) {
    final l$title = json['title'];
    final l$url = json['url'];
    final l$$__typename = json['__typename'];
    return Fragment$albumInfo$photos$data(
      title: (l$title as String?),
      url: (l$url as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? title;

  final String? url;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$title = title;
    _resultData['title'] = l$title;
    final l$url = url;
    _resultData['url'] = l$url;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$title = title;
    final l$url = url;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$title,
      l$url,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$albumInfo$photos$data) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    final l$url = url;
    final lOther$url = other.url;
    if (l$url != lOther$url) {
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

extension UtilityExtension$Fragment$albumInfo$photos$data
    on Fragment$albumInfo$photos$data {
  CopyWith$Fragment$albumInfo$photos$data<Fragment$albumInfo$photos$data>
      get copyWith => CopyWith$Fragment$albumInfo$photos$data(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$albumInfo$photos$data<TRes> {
  factory CopyWith$Fragment$albumInfo$photos$data(
    Fragment$albumInfo$photos$data instance,
    TRes Function(Fragment$albumInfo$photos$data) then,
  ) = _CopyWithImpl$Fragment$albumInfo$photos$data;

  factory CopyWith$Fragment$albumInfo$photos$data.stub(TRes res) =
      _CopyWithStubImpl$Fragment$albumInfo$photos$data;

  TRes call({
    String? title,
    String? url,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$albumInfo$photos$data<TRes>
    implements CopyWith$Fragment$albumInfo$photos$data<TRes> {
  _CopyWithImpl$Fragment$albumInfo$photos$data(
    this._instance,
    this._then,
  );

  final Fragment$albumInfo$photos$data _instance;

  final TRes Function(Fragment$albumInfo$photos$data) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? title = _undefined,
    Object? url = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$albumInfo$photos$data(
        title: title == _undefined ? _instance.title : (title as String?),
        url: url == _undefined ? _instance.url : (url as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$albumInfo$photos$data<TRes>
    implements CopyWith$Fragment$albumInfo$photos$data<TRes> {
  _CopyWithStubImpl$Fragment$albumInfo$photos$data(this._res);

  TRes _res;

  call({
    String? title,
    String? url,
    String? $__typename,
  }) =>
      _res;
}
