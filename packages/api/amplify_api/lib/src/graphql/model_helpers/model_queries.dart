/*
 * Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License").
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 *
 *  http://aws.amazon.com/apache2.0
 *
 * or in the "license" file accompanying this file. This file is distributed
 * on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

import 'package:amplify_api/src/graphql/factories/model_queries_factory.dart';
import 'package:amplify_core/amplify_core.dart';

/// Static helpers to generate query `GraphQLRequest` instances from models generated by Amplify codegen.

class ModelQueries {
  ModelQueries._(); // only static methods here, prevent calling constructor

  /// Generates a request for a single instance of the `modelType` by `id`.
  ///
  /// ```dart
  /// final request = ModelQueries.get(Todo.classType, 'some-todo-id-123');
  /// ```
  static GraphQLRequest<T> get<T extends Model>(
    ModelType<T> modelType,
    String id,
  ) {
    return ModelQueriesFactory.instance.get<T>(modelType, id);
  }

  /// Generates a request for a list of model instances.
  ///
  /// ```dart
  /// final request = ModelQueries.list(Todo.classType);
  /// ```
  /// or filter the query with some conditions:
  /// ```dart
  /// final request = ModelQueries.list(Todo.classType, where: Todo.NAME.contains('walk the dog'));
  /// ```
  static GraphQLRequest<PaginatedResult<T>> list<T extends Model>(
    ModelType<T> modelType, {
    int? limit,
    QueryPredicate? where,
  }) {
    return ModelQueriesFactory.instance
        .list<T>(modelType, limit: limit, where: where);
  }
}