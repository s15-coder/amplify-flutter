// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library rest_xml_v1.rest_xml_protocol.operation.http_payload_with_xml_name_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i8;

import 'package:aws_common/aws_common.dart' as _i7;
import 'package:rest_xml_v1/src/rest_xml_protocol/common/endpoint_resolver.dart'
    as _i6;
import 'package:rest_xml_v1/src/rest_xml_protocol/common/serializers.dart'
    as _i5;
import 'package:rest_xml_v1/src/rest_xml_protocol/model/http_payload_with_xml_name_input_output.dart'
    as _i3;
import 'package:rest_xml_v1/src/rest_xml_protocol/model/payload_with_xml_name.dart'
    as _i2;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i4;

/// The following example serializes a payload that uses an XML name, changing the wrapper name.
class HttpPayloadWithXmlNameOperation extends _i1.HttpOperation<
    _i2.PayloadWithXmlName,
    _i3.HttpPayloadWithXmlNameInputOutput,
    _i2.PayloadWithXmlName,
    _i3.HttpPayloadWithXmlNameInputOutput> {
  /// The following example serializes a payload that uses an XML name, changing the wrapper name.
  HttpPayloadWithXmlNameOperation({
    required String region,
    Uri? baseUri,
  })  : _region = region,
        _baseUri = baseUri;

  @override
  late final List<
      _i1.HttpProtocol<
          _i2.PayloadWithXmlName,
          _i3.HttpPayloadWithXmlNameInputOutput,
          _i2.PayloadWithXmlName,
          _i3.HttpPayloadWithXmlNameInputOutput>> protocols = [
    _i4.RestXmlProtocol(
      serializers: _i5.serializers,
      builderFactories: _i5.builderFactories,
      requestInterceptors: [
        const _i1.WithHost(),
        const _i1.WithContentLength(),
        const _i1.WithUserAgent('aws-sdk-dart/0.1.1'),
        const _i4.WithSdkInvocationId(),
        const _i4.WithSdkRequest(),
      ],
      responseInterceptors: [],
      noErrorWrapping: false,
    )
  ];

  late final _i4.AWSEndpoint _awsEndpoint = _i6.endpointResolver.resolve(
    _i6.sdkId,
    _region,
  );

  final String _region;

  final Uri? _baseUri;

  @override
  _i1.HttpRequest buildRequest(_i3.HttpPayloadWithXmlNameInputOutput input) =>
      _i1.HttpRequest((b) {
        b.method = 'PUT';
        b.path = r'/HttpPayloadWithXmlName';
      });
  @override
  int successCode([_i3.HttpPayloadWithXmlNameInputOutput? output]) => 200;
  @override
  _i3.HttpPayloadWithXmlNameInputOutput buildOutput(
    _i2.PayloadWithXmlName? payload,
    _i7.AWSBaseHttpResponse response,
  ) =>
      _i3.HttpPayloadWithXmlNameInputOutput.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [];
  @override
  _i4.AWSRetryer get retryer => _i4.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i8.Future<_i3.HttpPayloadWithXmlNameInputOutput> run(
    _i3.HttpPayloadWithXmlNameInputOutput input, {
    _i1.HttpClient? client,
    _i1.ShapeId? useProtocol,
  }) {
    return _i8.runZoned(
      () => super.run(
        input,
        client: client,
        useProtocol: useProtocol,
      ),
      zoneValues: {
        ...?_awsEndpoint.credentialScope?.zoneValues,
        ...{_i7.AWSHeaders.sdkInvocationId: _i7.uuid(secure: true)}
      },
    );
  }
}
