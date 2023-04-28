// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.iam.operation.update_login_profile_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i13;

import 'package:aws_common/aws_common.dart' as _i6;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i4;
import 'package:smoke_test/src/sdk/src/iam/common/endpoint_resolver.dart'
    as _i7;
import 'package:smoke_test/src/sdk/src/iam/common/serializers.dart' as _i5;
import 'package:smoke_test/src/sdk/src/iam/model/entity_temporarily_unmodifiable_exception.dart'
    as _i8;
import 'package:smoke_test/src/sdk/src/iam/model/limit_exceeded_exception.dart'
    as _i9;
import 'package:smoke_test/src/sdk/src/iam/model/no_such_entity_exception.dart'
    as _i10;
import 'package:smoke_test/src/sdk/src/iam/model/password_policy_violation_exception.dart'
    as _i11;
import 'package:smoke_test/src/sdk/src/iam/model/service_failure_exception.dart'
    as _i12;
import 'package:smoke_test/src/sdk/src/iam/model/update_login_profile_request.dart'
    as _i2;

/// Changes the password for the specified IAM user. You can use the CLI, the Amazon Web Services API, or the **Users** page in the IAM console to change the password for any IAM user. Use ChangePassword to change your own password in the **My Security Credentials** page in the Amazon Web Services Management Console.
///
/// For more information about modifying passwords, see [Managing passwords](https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_ManagingLogins.html) in the _IAM User Guide_.
class UpdateLoginProfileOperation extends _i1.HttpOperation<
    _i2.UpdateLoginProfileRequest,
    _i2.UpdateLoginProfileRequest,
    _i1.Unit,
    _i1.Unit> {
  /// Changes the password for the specified IAM user. You can use the CLI, the Amazon Web Services API, or the **Users** page in the IAM console to change the password for any IAM user. Use ChangePassword to change your own password in the **My Security Credentials** page in the Amazon Web Services Management Console.
  ///
  /// For more information about modifying passwords, see [Managing passwords](https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_ManagingLogins.html) in the _IAM User Guide_.
  UpdateLoginProfileOperation({
    required String region,
    Uri? baseUri,
    _i3.AWSCredentialsProvider credentialsProvider =
        const _i3.AWSCredentialsProvider.environment(),
    List<_i1.HttpRequestInterceptor> requestInterceptors = const [],
    List<_i1.HttpResponseInterceptor> responseInterceptors = const [],
  })  : _region = region,
        _baseUri = baseUri,
        _credentialsProvider = credentialsProvider,
        _requestInterceptors = requestInterceptors,
        _responseInterceptors = responseInterceptors;

  @override
  late final List<
      _i1.HttpProtocol<_i2.UpdateLoginProfileRequest,
          _i2.UpdateLoginProfileRequest, _i1.Unit, _i1.Unit>> protocols = [
    _i4.AwsQueryProtocol(
      serializers: _i5.serializers,
      builderFactories: _i5.builderFactories,
      requestInterceptors: <_i1.HttpRequestInterceptor>[
            const _i1.WithHost(),
            const _i1.WithContentLength(),
            _i4.WithSigV4(
              region: _region,
              service: _i6.AWSService.iam,
              credentialsProvider: _credentialsProvider,
            ),
            const _i1.WithUserAgent('aws-sdk-dart/0.3.1'),
            const _i4.WithSdkInvocationId(),
            const _i4.WithSdkRequest(),
          ] +
          _requestInterceptors,
      responseInterceptors:
          <_i1.HttpResponseInterceptor>[] + _responseInterceptors,
      action: 'UpdateLoginProfile',
      version: '2010-05-08',
      awsQueryErrors: const [
        _i4.AwsQueryError(
          shape: 'EntityTemporarilyUnmodifiableException',
          code: 'EntityTemporarilyUnmodifiable',
          httpResponseCode: 409,
        ),
        _i4.AwsQueryError(
          shape: 'LimitExceededException',
          code: 'LimitExceeded',
          httpResponseCode: 409,
        ),
        _i4.AwsQueryError(
          shape: 'NoSuchEntityException',
          code: 'NoSuchEntity',
          httpResponseCode: 404,
        ),
        _i4.AwsQueryError(
          shape: 'PasswordPolicyViolationException',
          code: 'PasswordPolicyViolation',
          httpResponseCode: 400,
        ),
        _i4.AwsQueryError(
          shape: 'ServiceFailureException',
          code: 'ServiceFailure',
          httpResponseCode: 500,
        ),
      ],
    )
  ];

  late final _i4.AWSEndpoint _awsEndpoint = _i7.endpointResolver.resolve(
    _i7.sdkId,
    _region,
  );

  final String _region;

  final Uri? _baseUri;

  final _i3.AWSCredentialsProvider _credentialsProvider;

  final List<_i1.HttpRequestInterceptor> _requestInterceptors;

  final List<_i1.HttpResponseInterceptor> _responseInterceptors;

  @override
  _i1.HttpRequest buildRequest(_i2.UpdateLoginProfileRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([_i1.Unit? output]) => 200;
  @override
  _i1.Unit buildOutput(
    _i1.Unit payload,
    _i6.AWSBaseHttpResponse response,
  ) =>
      payload;
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.iam',
            shape: 'EntityTemporarilyUnmodifiableException',
          ),
          _i1.ErrorKind.client,
          _i8.EntityTemporarilyUnmodifiableException,
          statusCode: 409,
          builder: _i8.EntityTemporarilyUnmodifiableException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.iam',
            shape: 'LimitExceededException',
          ),
          _i1.ErrorKind.client,
          _i9.LimitExceededException,
          statusCode: 409,
          builder: _i9.LimitExceededException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.iam',
            shape: 'NoSuchEntityException',
          ),
          _i1.ErrorKind.client,
          _i10.NoSuchEntityException,
          statusCode: 404,
          builder: _i10.NoSuchEntityException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.iam',
            shape: 'PasswordPolicyViolationException',
          ),
          _i1.ErrorKind.client,
          _i11.PasswordPolicyViolationException,
          statusCode: 400,
          builder: _i11.PasswordPolicyViolationException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.iam',
            shape: 'ServiceFailureException',
          ),
          _i1.ErrorKind.server,
          _i12.ServiceFailureException,
          statusCode: 500,
          builder: _i12.ServiceFailureException.fromResponse,
        ),
      ];
  @override
  String get runtimeTypeName => 'UpdateLoginProfile';
  @override
  _i4.AWSRetryer get retryer => _i4.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<_i1.Unit> run(
    _i2.UpdateLoginProfileRequest input, {
    _i6.AWSHttpClient? client,
    _i1.ShapeId? useProtocol,
  }) {
    return _i13.runZoned(
      () => super.run(
        input,
        client: client,
        useProtocol: useProtocol,
      ),
      zoneValues: {
        ...?_awsEndpoint.credentialScope?.zoneValues,
        ...{_i6.AWSHeaders.sdkInvocationId: _i6.uuid(secure: true)}
      },
    );
  }
}