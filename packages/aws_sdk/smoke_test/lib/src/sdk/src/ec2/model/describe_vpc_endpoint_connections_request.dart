// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_vpc_endpoint_connections_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/filter.dart';

part 'describe_vpc_endpoint_connections_request.g.dart';

abstract class DescribeVpcEndpointConnectionsRequest
    with
        _i1.HttpInput<DescribeVpcEndpointConnectionsRequest>,
        _i2.AWSEquatable<DescribeVpcEndpointConnectionsRequest>
    implements
        Built<DescribeVpcEndpointConnectionsRequest,
            DescribeVpcEndpointConnectionsRequestBuilder> {
  factory DescribeVpcEndpointConnectionsRequest({
    bool? dryRun,
    List<Filter>? filters,
    int? maxResults,
    String? nextToken,
  }) {
    dryRun ??= false;
    maxResults ??= 0;
    return _$DescribeVpcEndpointConnectionsRequest._(
      dryRun: dryRun,
      filters: filters == null ? null : _i3.BuiltList(filters),
      maxResults: maxResults,
      nextToken: nextToken,
    );
  }

  factory DescribeVpcEndpointConnectionsRequest.build(
      [void Function(DescribeVpcEndpointConnectionsRequestBuilder)
          updates]) = _$DescribeVpcEndpointConnectionsRequest;

  const DescribeVpcEndpointConnectionsRequest._();

  factory DescribeVpcEndpointConnectionsRequest.fromRequest(
    DescribeVpcEndpointConnectionsRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DescribeVpcEndpointConnectionsRequest>>
      serializers = [DescribeVpcEndpointConnectionsRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeVpcEndpointConnectionsRequestBuilder b) {
    b
      ..dryRun = false
      ..maxResults = 0;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The filters.
  ///
  /// *   `ip-address-type` \- The IP address type (`ipv4` | `ipv6`).
  ///
  /// *   `service-id` \- The ID of the service.
  ///
  /// *   `vpc-endpoint-owner` \- The ID of the Amazon Web Services account ID that owns the endpoint.
  ///
  /// *   `vpc-endpoint-state` \- The state of the endpoint (`pendingAcceptance` | `pending` | `available` | `deleting` | `deleted` | `rejected` | `failed`).
  ///
  /// *   `vpc-endpoint-id` \- The ID of the endpoint.
  _i3.BuiltList<Filter>? get filters;

  /// The maximum number of results to return for the request in a single page. The remaining results of the initial request can be seen by sending another request with the returned `NextToken` value. This value can be between 5 and 1,000; if `MaxResults` is given a value larger than 1,000, only 1,000 results are returned.
  int get maxResults;

  /// The token to retrieve the next page of results.
  String? get nextToken;
  @override
  DescribeVpcEndpointConnectionsRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        filters,
        maxResults,
        nextToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeVpcEndpointConnectionsRequest')
          ..add(
            'dryRun',
            dryRun,
          )
          ..add(
            'filters',
            filters,
          )
          ..add(
            'maxResults',
            maxResults,
          )
          ..add(
            'nextToken',
            nextToken,
          );
    return helper.toString();
  }
}

class DescribeVpcEndpointConnectionsRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<DescribeVpcEndpointConnectionsRequest> {
  const DescribeVpcEndpointConnectionsRequestEc2QuerySerializer()
      : super('DescribeVpcEndpointConnectionsRequest');

  @override
  Iterable<Type> get types => const [
        DescribeVpcEndpointConnectionsRequest,
        _$DescribeVpcEndpointConnectionsRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeVpcEndpointConnectionsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeVpcEndpointConnectionsRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'Filter':
          result.filters.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'Filter',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(Filter)],
            ),
          ) as _i3.BuiltList<Filter>));
        case 'MaxResults':
          result.maxResults = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'NextToken':
          result.nextToken = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DescribeVpcEndpointConnectionsRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DescribeVpcEndpointConnectionsRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeVpcEndpointConnectionsRequest(
      :dryRun,
      :filters,
      :maxResults,
      :nextToken
    ) = object;
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    if (filters != null) {
      result$
        ..add(const _i1.XmlElementName('Filter'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'Filter',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          filters,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(Filter)],
          ),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('MaxResults'))
      ..add(serializers.serialize(
        maxResults,
        specifiedType: const FullType(int),
      ));
    if (nextToken != null) {
      result$
        ..add(const _i1.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          nextToken,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}