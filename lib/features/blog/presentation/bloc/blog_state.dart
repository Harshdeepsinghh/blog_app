part of 'blog_bloc.dart';

@immutable
sealed class BlogState {}

final class BlogInitial extends BlogState {}

final class BlogLoading extends BlogState {}

final class BlogFailure extends BlogState {
  final String error;
  BlogFailure(this.error);
}

final class BlogFetchSuccess extends BlogState {
  final List<Blog> blogs;
  BlogFetchSuccess(this.blogs);
}
final class BlogFetchByUserIdSuccess extends BlogState {
  final List<Blog> blogs;
  BlogFetchByUserIdSuccess(this.blogs);
}

final class BlogUploadSuccess extends BlogState {}
