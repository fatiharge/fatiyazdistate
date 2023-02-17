import 'package:flutter/widgets.dart';

/*
 * Copyright (c) 2023.
 * Tüm hakları saklıdır.
 *
 * Bu eklenti  Fatih Çetin tarafından yayınlanmıştır ve aittir.
 *
 * Bu içeriğin kopyalanması, dağıtılması veya değiştirilmesi yasaktır.
 *
 * Ancak, izin alınarak ve atıfta bulunularak alıntı yapılabilir.
 *
 *
 * fatih@fatiharge.com
 *
 * --- Fatih Çetin
 *
 * nullsafety
 *
 */

///
///  How to use it?
///
/// main.dart
///
///  wrap MyApp() in runApp
///
/// [FatiYazdiState] runApp(const FatihState(child: MyApp()));
///
/// Import it
/// Now in your Dart code, you can use:
///
/// [import '../fati_yazdi_state.dart';]
///
/// Usage
///
/// call from anywhere
/// [FatiYazdiState.fatihStateCreateAgain] FatihState.fatihStateCreateAgain(context);
///
/// Some Useful Tips --
///
/// Error: Don't use 'BuildContext's across async gaps.
///
/// solution:
///
/// SchedulerBinding.instance.addPostFrameCallback((_) {
///   FatihState.fatihStateCreateAgain(context);
/// });
///
///  NOTE :::: Calling this method is relatively expensive (O(N) in the depth of the
///
/// Use Only When Necessary
///



class FatiYazdiState extends StatefulWidget {
  final Widget child;

  const FatiYazdiState({Key? key, required this.child}) : super(key: key);


  ///
  /// Returns the [State] object of the nearest ancestor [StatefulWidget] widget
  /// that is an instance of the given type `T`.
  ///
  /// This should not be used from build methods, because the build context will
  /// not be rebuilt if the value that would be returned by this method changes.
  /// In general, [dependOnInheritedWidgetOfExactType] is more appropriate for such
  /// cases. This method is useful for changing the state of an ancestor widget in
  /// a one-off manner, for example, to cause an ancestor scrolling list to
  /// scroll this build context's widget into view, or to move the focus in
  /// response to user interaction.
  ///
  /// In general, though, consider using a callback that triggers a stateful
  /// change in the ancestor rather than using the imperative style implied by
  /// this method. This will usually lead to more maintainable and reusable code
  /// since it decouples widgets from each other.
  ///
  /// Calling this method is relatively expensive (O(N) in the depth of the
  /// tree). Only call this method if the distance from this widget to the
  /// desired ancestor is known to be small and bounded.
  ///
  /// This method should not be called from [State.deactivate] or [State.dispose]
  /// because the widget tree is no longer stable at that time. To refer to
  /// an ancestor from one of those methods, save a reference to the ancestor
  /// by calling [findAncestorStateOfType] in [State.didChangeDependencies].
  ///
  static fatihStateCreateAgain(BuildContext c) {

    c.findAncestorStateOfType<_FatiYazdiStateState>()?.restartApp();
  }

  @override
  State<FatiYazdiState> createState() => _FatiYazdiStateState();
}

class _FatiYazdiStateState extends State<FatiYazdiState> {

  ///
  /// Creates a key that is equal only to itself.
  ///
  /// The key cannot be created with a const constructor because that implies
  /// that all instantiated keys would be the same instance and therefore not
  /// be unique.
  ///
  Key _key = UniqueKey();

  ///
  /// Whenever you change the internal state of a [State] object, make the
  /// change in a function that you pass to [setState]:
  ///
  void restartApp() {

    setState(() {
      _key = UniqueKey();
    });
  }

  @override
  Widget build(BuildContext context) {
    ///
    /// A widget that builds its child.
    ///
    /// Useful for attaching a key to an existing widget.
    /// Creates a widget that builds its child.
    ///
    return KeyedSubtree(
      key: _key,
      child: widget.child,
    );
  }
}


// Copyright (c) 2023.
// Tüm hakları saklıdır.
