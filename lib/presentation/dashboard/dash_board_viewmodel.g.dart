// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dash_board_viewmodel.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(DashBoardViewModel)
const dashBoardViewModelProvider = DashBoardViewModelProvider._();

final class DashBoardViewModelProvider
    extends $NotifierProvider<DashBoardViewModel, DashBoardState> {
  const DashBoardViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'dashBoardViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$dashBoardViewModelHash();

  @$internal
  @override
  DashBoardViewModel create() => DashBoardViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(DashBoardState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<DashBoardState>(value),
    );
  }
}

String _$dashBoardViewModelHash() =>
    r'8fa24ade549e51c119036b276cb849cb6df95180';

abstract class _$DashBoardViewModel extends $Notifier<DashBoardState> {
  DashBoardState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<DashBoardState, DashBoardState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<DashBoardState, DashBoardState>,
              DashBoardState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
