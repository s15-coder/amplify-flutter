/*
 * Copyright 2020 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

import 'package:amplify_core/amplify_core.dart';

/// A GraphQL response from the server. See https://graphql.org/learn/serving-over-http/#response
class GraphQLResponse<T> {
  /// Response data matching the type of the request.
  ///
  /// This will be `null` if there are any GraphQL errors during execution.
  final T? data;

  /// A list of errors from execution. If no errors, it will be `null`.
  final List<GraphQLResponseError>? errors;

  const GraphQLResponse({
    this.data,
    this.errors,
  });

  static GraphQLResponse<String?> raw({
    required String? data,
    List<GraphQLResponseError>? errors,
  }) {
    return GraphQLResponse(
      data: data,
      errors: errors,
    );
  }

  /// Whether errors are present in the response.
  bool get hasErrors => errors != null && errors!.isNotEmpty;
}
