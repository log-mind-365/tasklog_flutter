// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dash_board_viewmodel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DashBoardState {

 List<TaskEntity> get tasks; DashBoardTabMenu get currentTabMenu;
/// Create a copy of DashBoardState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DashBoardStateCopyWith<DashBoardState> get copyWith => _$DashBoardStateCopyWithImpl<DashBoardState>(this as DashBoardState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DashBoardState&&const DeepCollectionEquality().equals(other.tasks, tasks)&&(identical(other.currentTabMenu, currentTabMenu) || other.currentTabMenu == currentTabMenu));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(tasks),currentTabMenu);

@override
String toString() {
  return 'DashBoardState(tasks: $tasks, currentTabMenu: $currentTabMenu)';
}


}

/// @nodoc
abstract mixin class $DashBoardStateCopyWith<$Res>  {
  factory $DashBoardStateCopyWith(DashBoardState value, $Res Function(DashBoardState) _then) = _$DashBoardStateCopyWithImpl;
@useResult
$Res call({
 List<TaskEntity> tasks, DashBoardTabMenu currentTabMenu
});




}
/// @nodoc
class _$DashBoardStateCopyWithImpl<$Res>
    implements $DashBoardStateCopyWith<$Res> {
  _$DashBoardStateCopyWithImpl(this._self, this._then);

  final DashBoardState _self;
  final $Res Function(DashBoardState) _then;

/// Create a copy of DashBoardState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? tasks = null,Object? currentTabMenu = null,}) {
  return _then(_self.copyWith(
tasks: null == tasks ? _self.tasks : tasks // ignore: cast_nullable_to_non_nullable
as List<TaskEntity>,currentTabMenu: null == currentTabMenu ? _self.currentTabMenu : currentTabMenu // ignore: cast_nullable_to_non_nullable
as DashBoardTabMenu,
  ));
}

}


/// Adds pattern-matching-related methods to [DashBoardState].
extension DashBoardStatePatterns on DashBoardState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DashBoardState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DashBoardState() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DashBoardState value)  $default,){
final _that = this;
switch (_that) {
case _DashBoardState():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DashBoardState value)?  $default,){
final _that = this;
switch (_that) {
case _DashBoardState() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<TaskEntity> tasks,  DashBoardTabMenu currentTabMenu)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DashBoardState() when $default != null:
return $default(_that.tasks,_that.currentTabMenu);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<TaskEntity> tasks,  DashBoardTabMenu currentTabMenu)  $default,) {final _that = this;
switch (_that) {
case _DashBoardState():
return $default(_that.tasks,_that.currentTabMenu);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<TaskEntity> tasks,  DashBoardTabMenu currentTabMenu)?  $default,) {final _that = this;
switch (_that) {
case _DashBoardState() when $default != null:
return $default(_that.tasks,_that.currentTabMenu);case _:
  return null;

}
}

}

/// @nodoc


class _DashBoardState implements DashBoardState {
  const _DashBoardState({required final  List<TaskEntity> tasks, this.currentTabMenu = DashBoardTabMenu.progress}): _tasks = tasks;
  

 final  List<TaskEntity> _tasks;
@override List<TaskEntity> get tasks {
  if (_tasks is EqualUnmodifiableListView) return _tasks;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tasks);
}

@override@JsonKey() final  DashBoardTabMenu currentTabMenu;

/// Create a copy of DashBoardState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DashBoardStateCopyWith<_DashBoardState> get copyWith => __$DashBoardStateCopyWithImpl<_DashBoardState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DashBoardState&&const DeepCollectionEquality().equals(other._tasks, _tasks)&&(identical(other.currentTabMenu, currentTabMenu) || other.currentTabMenu == currentTabMenu));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_tasks),currentTabMenu);

@override
String toString() {
  return 'DashBoardState(tasks: $tasks, currentTabMenu: $currentTabMenu)';
}


}

/// @nodoc
abstract mixin class _$DashBoardStateCopyWith<$Res> implements $DashBoardStateCopyWith<$Res> {
  factory _$DashBoardStateCopyWith(_DashBoardState value, $Res Function(_DashBoardState) _then) = __$DashBoardStateCopyWithImpl;
@override @useResult
$Res call({
 List<TaskEntity> tasks, DashBoardTabMenu currentTabMenu
});




}
/// @nodoc
class __$DashBoardStateCopyWithImpl<$Res>
    implements _$DashBoardStateCopyWith<$Res> {
  __$DashBoardStateCopyWithImpl(this._self, this._then);

  final _DashBoardState _self;
  final $Res Function(_DashBoardState) _then;

/// Create a copy of DashBoardState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? tasks = null,Object? currentTabMenu = null,}) {
  return _then(_DashBoardState(
tasks: null == tasks ? _self._tasks : tasks // ignore: cast_nullable_to_non_nullable
as List<TaskEntity>,currentTabMenu: null == currentTabMenu ? _self.currentTabMenu : currentTabMenu // ignore: cast_nullable_to_non_nullable
as DashBoardTabMenu,
  ));
}


}

// dart format on
