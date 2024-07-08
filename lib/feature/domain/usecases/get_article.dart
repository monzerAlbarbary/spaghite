
import 'package:clean_demo/core/res/state.dart';
import 'package:clean_demo/core/usecase/usecase.dart';
import 'package:clean_demo/feature/domain/entities/post.dart';
import 'package:clean_demo/feature/domain/repository/post_repos.dart';

import 'package:dartz/dartz.dart';

class GetPostsUseCase
    implements UseCase<Either<ErrorModel, List<PostEntity>>, void> {
  final PostRepository _postRepository;

  GetPostsUseCase({required PostRepository postRepository})
      : _postRepository = postRepository;
  @override
  Future<Either<ErrorModel, List<PostEntity>>> call({void params}) {
    return _postRepository.getPosts.call();
  }
}
