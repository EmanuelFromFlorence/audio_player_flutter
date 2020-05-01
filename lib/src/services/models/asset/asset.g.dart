// GENERATED CODE - DO NOT MODIFY BY HAND

part of asset;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Asset> _$assetSerializer = new _$AssetSerializer();

class _$AssetSerializer implements StructuredSerializer<Asset> {
  @override
  final Iterable<Type> types = const [Asset, _$Asset];
  @override
  final String wireName = 'Asset';

  @override
  Iterable<Object> serialize(Serializers serializers, Asset object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'bucket',
      serializers.serialize(object.bucket,
          specifiedType: const FullType(String)),
      'contentDisposition',
      serializers.serialize(object.contentDisposition,
          specifiedType: const FullType(String)),
      'contentEncoding',
      serializers.serialize(object.contentEncoding,
          specifiedType: const FullType(String)),
      'contentType',
      serializers.serialize(object.contentType,
          specifiedType: const FullType(String)),
      'crc32c',
      serializers.serialize(object.crc32c,
          specifiedType: const FullType(String)),
      'downloadTokens',
      serializers.serialize(object.downloadTokens,
          specifiedType: const FullType(String)),
      'etag',
      serializers.serialize(object.etag, specifiedType: const FullType(String)),
      'generation',
      serializers.serialize(object.generation,
          specifiedType: const FullType(String)),
      'md5Hash',
      serializers.serialize(object.md5Hash,
          specifiedType: const FullType(String)),
      'metageneration',
      serializers.serialize(object.metageneration,
          specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'size',
      serializers.serialize(object.size, specifiedType: const FullType(String)),
      'storageClass',
      serializers.serialize(object.storageClass,
          specifiedType: const FullType(String)),
      'timeCreated',
      serializers.serialize(object.timeCreated,
          specifiedType: const FullType(String)),
      'updated',
      serializers.serialize(object.updated,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Asset deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AssetBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'bucket':
          result.bucket = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'contentDisposition':
          result.contentDisposition = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'contentEncoding':
          result.contentEncoding = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'contentType':
          result.contentType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'crc32c':
          result.crc32c = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'downloadTokens':
          result.downloadTokens = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'etag':
          result.etag = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'generation':
          result.generation = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'md5Hash':
          result.md5Hash = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'metageneration':
          result.metageneration = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'size':
          result.size = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'storageClass':
          result.storageClass = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'timeCreated':
          result.timeCreated = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'updated':
          result.updated = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Asset extends Asset {
  @override
  final String bucket;
  @override
  final String contentDisposition;
  @override
  final String contentEncoding;
  @override
  final String contentType;
  @override
  final String crc32c;
  @override
  final String downloadTokens;
  @override
  final String etag;
  @override
  final String generation;
  @override
  final String md5Hash;
  @override
  final String metageneration;
  @override
  final String name;
  @override
  final String size;
  @override
  final String storageClass;
  @override
  final String timeCreated;
  @override
  final String updated;

  factory _$Asset([void Function(AssetBuilder) updates]) =>
      (new AssetBuilder()..update(updates)).build();

  _$Asset._(
      {this.bucket,
      this.contentDisposition,
      this.contentEncoding,
      this.contentType,
      this.crc32c,
      this.downloadTokens,
      this.etag,
      this.generation,
      this.md5Hash,
      this.metageneration,
      this.name,
      this.size,
      this.storageClass,
      this.timeCreated,
      this.updated})
      : super._() {
    if (bucket == null) {
      throw new BuiltValueNullFieldError('Asset', 'bucket');
    }
    if (contentDisposition == null) {
      throw new BuiltValueNullFieldError('Asset', 'contentDisposition');
    }
    if (contentEncoding == null) {
      throw new BuiltValueNullFieldError('Asset', 'contentEncoding');
    }
    if (contentType == null) {
      throw new BuiltValueNullFieldError('Asset', 'contentType');
    }
    if (crc32c == null) {
      throw new BuiltValueNullFieldError('Asset', 'crc32c');
    }
    if (downloadTokens == null) {
      throw new BuiltValueNullFieldError('Asset', 'downloadTokens');
    }
    if (etag == null) {
      throw new BuiltValueNullFieldError('Asset', 'etag');
    }
    if (generation == null) {
      throw new BuiltValueNullFieldError('Asset', 'generation');
    }
    if (md5Hash == null) {
      throw new BuiltValueNullFieldError('Asset', 'md5Hash');
    }
    if (metageneration == null) {
      throw new BuiltValueNullFieldError('Asset', 'metageneration');
    }
    if (name == null) {
      throw new BuiltValueNullFieldError('Asset', 'name');
    }
    if (size == null) {
      throw new BuiltValueNullFieldError('Asset', 'size');
    }
    if (storageClass == null) {
      throw new BuiltValueNullFieldError('Asset', 'storageClass');
    }
    if (timeCreated == null) {
      throw new BuiltValueNullFieldError('Asset', 'timeCreated');
    }
    if (updated == null) {
      throw new BuiltValueNullFieldError('Asset', 'updated');
    }
  }

  @override
  Asset rebuild(void Function(AssetBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AssetBuilder toBuilder() => new AssetBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Asset &&
        bucket == other.bucket &&
        contentDisposition == other.contentDisposition &&
        contentEncoding == other.contentEncoding &&
        contentType == other.contentType &&
        crc32c == other.crc32c &&
        downloadTokens == other.downloadTokens &&
        etag == other.etag &&
        generation == other.generation &&
        md5Hash == other.md5Hash &&
        metageneration == other.metageneration &&
        name == other.name &&
        size == other.size &&
        storageClass == other.storageClass &&
        timeCreated == other.timeCreated &&
        updated == other.updated;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                0,
                                                                bucket
                                                                    .hashCode),
                                                            contentDisposition
                                                                .hashCode),
                                                        contentEncoding
                                                            .hashCode),
                                                    contentType.hashCode),
                                                crc32c.hashCode),
                                            downloadTokens.hashCode),
                                        etag.hashCode),
                                    generation.hashCode),
                                md5Hash.hashCode),
                            metageneration.hashCode),
                        name.hashCode),
                    size.hashCode),
                storageClass.hashCode),
            timeCreated.hashCode),
        updated.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Asset')
          ..add('bucket', bucket)
          ..add('contentDisposition', contentDisposition)
          ..add('contentEncoding', contentEncoding)
          ..add('contentType', contentType)
          ..add('crc32c', crc32c)
          ..add('downloadTokens', downloadTokens)
          ..add('etag', etag)
          ..add('generation', generation)
          ..add('md5Hash', md5Hash)
          ..add('metageneration', metageneration)
          ..add('name', name)
          ..add('size', size)
          ..add('storageClass', storageClass)
          ..add('timeCreated', timeCreated)
          ..add('updated', updated))
        .toString();
  }
}

class AssetBuilder implements Builder<Asset, AssetBuilder> {
  _$Asset _$v;

  String _bucket;
  String get bucket => _$this._bucket;
  set bucket(String bucket) => _$this._bucket = bucket;

  String _contentDisposition;
  String get contentDisposition => _$this._contentDisposition;
  set contentDisposition(String contentDisposition) =>
      _$this._contentDisposition = contentDisposition;

  String _contentEncoding;
  String get contentEncoding => _$this._contentEncoding;
  set contentEncoding(String contentEncoding) =>
      _$this._contentEncoding = contentEncoding;

  String _contentType;
  String get contentType => _$this._contentType;
  set contentType(String contentType) => _$this._contentType = contentType;

  String _crc32c;
  String get crc32c => _$this._crc32c;
  set crc32c(String crc32c) => _$this._crc32c = crc32c;

  String _downloadTokens;
  String get downloadTokens => _$this._downloadTokens;
  set downloadTokens(String downloadTokens) =>
      _$this._downloadTokens = downloadTokens;

  String _etag;
  String get etag => _$this._etag;
  set etag(String etag) => _$this._etag = etag;

  String _generation;
  String get generation => _$this._generation;
  set generation(String generation) => _$this._generation = generation;

  String _md5Hash;
  String get md5Hash => _$this._md5Hash;
  set md5Hash(String md5Hash) => _$this._md5Hash = md5Hash;

  String _metageneration;
  String get metageneration => _$this._metageneration;
  set metageneration(String metageneration) =>
      _$this._metageneration = metageneration;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _size;
  String get size => _$this._size;
  set size(String size) => _$this._size = size;

  String _storageClass;
  String get storageClass => _$this._storageClass;
  set storageClass(String storageClass) => _$this._storageClass = storageClass;

  String _timeCreated;
  String get timeCreated => _$this._timeCreated;
  set timeCreated(String timeCreated) => _$this._timeCreated = timeCreated;

  String _updated;
  String get updated => _$this._updated;
  set updated(String updated) => _$this._updated = updated;

  AssetBuilder();

  AssetBuilder get _$this {
    if (_$v != null) {
      _bucket = _$v.bucket;
      _contentDisposition = _$v.contentDisposition;
      _contentEncoding = _$v.contentEncoding;
      _contentType = _$v.contentType;
      _crc32c = _$v.crc32c;
      _downloadTokens = _$v.downloadTokens;
      _etag = _$v.etag;
      _generation = _$v.generation;
      _md5Hash = _$v.md5Hash;
      _metageneration = _$v.metageneration;
      _name = _$v.name;
      _size = _$v.size;
      _storageClass = _$v.storageClass;
      _timeCreated = _$v.timeCreated;
      _updated = _$v.updated;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Asset other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Asset;
  }

  @override
  void update(void Function(AssetBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Asset build() {
    final _$result = _$v ??
        new _$Asset._(
            bucket: bucket,
            contentDisposition: contentDisposition,
            contentEncoding: contentEncoding,
            contentType: contentType,
            crc32c: crc32c,
            downloadTokens: downloadTokens,
            etag: etag,
            generation: generation,
            md5Hash: md5Hash,
            metageneration: metageneration,
            name: name,
            size: size,
            storageClass: storageClass,
            timeCreated: timeCreated,
            updated: updated);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
