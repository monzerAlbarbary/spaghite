
import 'package:clean_demo/core/res/state.dart';
import 'package:clean_demo/feature/data/models/post_model.dart';

import 'package:dartz/dartz.dart';

abstract class PostRepository {
  Future<Either<ErrorModel, List<PostModel>>> getPosts();
}