import 'package:meta/meta.dart';

/// Defines a View accessible by path
///
/// ```dart
/// @ViewPath("/product/:id")
/// class ProductDetailsView extends StatelessWidget {
///     const ProductDetailsView(this.id);
///
///     final int id;
///
///     @override
///      Widget build(BuildContext context) {
///         return const EmptyView();
///      }
/// }
/// ```
@immutable
class ViewPath {
  final String value;
  const ViewPath(this.value);

  @override
  String toString() {
    return this.value;
  }
}

/// TO BE IMPLEMENTED
@immutable
class ViewTransition {}

/// TO BE IMPLEMENTED
@immutable
class ViewAuthorization {}
