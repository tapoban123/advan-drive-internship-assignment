// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'requests_websocket_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$requestsStreamHash() => r'9b7b75f0ce70ec1699daa5d02720334e51aefe53';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [requestsStream].
@ProviderFor(requestsStream)
const requestsStreamProvider = RequestsStreamFamily();

/// See also [requestsStream].
class RequestsStreamFamily extends Family<AsyncValue> {
  /// See also [requestsStream].
  const RequestsStreamFamily();

  /// See also [requestsStream].
  RequestsStreamProvider call({required String requestId}) {
    return RequestsStreamProvider(requestId: requestId);
  }

  @override
  RequestsStreamProvider getProviderOverride(
    covariant RequestsStreamProvider provider,
  ) {
    return call(requestId: provider.requestId);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'requestsStreamProvider';
}

/// See also [requestsStream].
class RequestsStreamProvider extends AutoDisposeStreamProvider<Object?> {
  /// See also [requestsStream].
  RequestsStreamProvider({required String requestId})
    : this._internal(
        (ref) => requestsStream(ref as RequestsStreamRef, requestId: requestId),
        from: requestsStreamProvider,
        name: r'requestsStreamProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$requestsStreamHash,
        dependencies: RequestsStreamFamily._dependencies,
        allTransitiveDependencies:
            RequestsStreamFamily._allTransitiveDependencies,
        requestId: requestId,
      );

  RequestsStreamProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.requestId,
  }) : super.internal();

  final String requestId;

  @override
  Override overrideWith(Stream Function(RequestsStreamRef provider) create) {
    return ProviderOverride(
      origin: this,
      override: RequestsStreamProvider._internal(
        (ref) => create(ref as RequestsStreamRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        requestId: requestId,
      ),
    );
  }

  @override
  AutoDisposeStreamProviderElement<Object?> createElement() {
    return _RequestsStreamProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is RequestsStreamProvider && other.requestId == requestId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, requestId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin RequestsStreamRef on AutoDisposeStreamProviderRef<Object?> {
  /// The parameter `requestId` of this provider.
  String get requestId;
}

class _RequestsStreamProviderElement
    extends AutoDisposeStreamProviderElement<Object?>
    with RequestsStreamRef {
  _RequestsStreamProviderElement(super.provider);

  @override
  String get requestId => (origin as RequestsStreamProvider).requestId;
}

String _$requestsWebsocketControllerHash() =>
    r'5476779e2069bbc2e917e7eb6d380b193c054bcb';

/// See also [RequestsWebsocketController].
@ProviderFor(RequestsWebsocketController)
final requestsWebsocketControllerProvider =
    AutoDisposeStreamNotifierProvider<
      RequestsWebsocketController,
      Object?
    >.internal(
      RequestsWebsocketController.new,
      name: r'requestsWebsocketControllerProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$requestsWebsocketControllerHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$RequestsWebsocketController = AutoDisposeStreamNotifier<Object?>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
