import 'package:guardian/data/network/model/response_dto.dart';
import 'package:json_annotation/json_annotation.dart';

part 'response_wrapper_dto.g.dart';

@JsonSerializable()
class ResponseWrapperDto {
    final ResponseDto response;

    ResponseWrapperDto(this.response);

    static const fromJsonFactory = _$ResponseWrapperDtoFromJson;

    factory ResponseWrapperDto.fromJson(Map<String, dynamic> json) =>
        _$ResponseWrapperDtoFromJson(json);

    Map<String, dynamic> toJson() => _$ResponseWrapperDtoToJson(this);
}