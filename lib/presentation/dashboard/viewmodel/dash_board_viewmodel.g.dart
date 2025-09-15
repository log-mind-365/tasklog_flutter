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
    extends $AsyncNotifierProvider<DashBoardViewModel, DashBoardState> {
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
}

String _$dashBoardViewModelHash() =>
    r'86afffcd26ec471ce7245544a0c51af614db8497';

abstract class _$DashBoardViewModel extends $AsyncNotifier<DashBoardState> {
  FutureOr<DashBoardState> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<DashBoardState>, DashBoardState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<DashBoardState>, DashBoardState>,
              AsyncValue<DashBoardState>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
