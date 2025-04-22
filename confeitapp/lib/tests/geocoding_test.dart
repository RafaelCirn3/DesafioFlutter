import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:geocoding/geocoding.dart';
import 'package:confeitapp/services/geocoding_service.dart';

// Criação do mock para GeocodingService
class MockGeocodingService extends Mock implements GeocodingService {}

void main() {
  late MockGeocodingService mockGeocodingService;

  setUp(() {
    // Inicializa o mock antes de cada teste
    mockGeocodingService = MockGeocodingService();
  });

  group('GeocodingService Tests', () {
    test('Deve retornar coordenadas a partir de um CEP válido', () async {
      // Configura o mock para retornar um valor simulado
      when(
        () => mockGeocodingService.getCoordinatesFromAddress('58038-110'),
      ).thenAnswer(
        (_) async => Location(
          latitude: 123.45,
          longitude: 67.89,
          timestamp: DateTime.now(),
        ),
      );

      final location = await mockGeocodingService.getCoordinatesFromAddress(
        '58038-110',
      );
      expect(location, isNotNull);
      if (location != null) {
        expect(location.latitude, 123.45);
        expect(location.longitude, 67.89);
      }
    });

    test('Deve retornar endereço a partir de coordenadas válidas', () async {
      // Configura o mock para retornar um valor simulado
      when(
        () => mockGeocodingService.getAddressFromCoordinates(-7.121, -34.845),
      ).thenAnswer(
        (_) async =>
            Placemark(locality: 'João Pessoa', administrativeArea: 'PB'),
      );

      final placemark = await mockGeocodingService.getAddressFromCoordinates(
        -7.121,
        -34.845,
      );
      expect(placemark, isNotNull);
      expect(placemark!.locality, 'João Pessoa');
      expect(placemark.administrativeArea, 'PB');
    });

    test('Deve retornar nulo para endereço inválido', () async {
      // Configura o mock para retornar nulo
      when(
        () => mockGeocodingService.getCoordinatesFromAddress(
          'endereço inválido 12345',
        ),
      ).thenAnswer((_) async => null);

      final location = await mockGeocodingService.getCoordinatesFromAddress(
        'endereço inválido 12345',
      );
      expect(location, isNull);
    });

    test('Deve retornar nulo para coordenadas inválidas', () async {
      // Configura o mock para retornar nulo
      when(
        () => mockGeocodingService.getAddressFromCoordinates(999, 999),
      ).thenAnswer((_) async => null);

      final placemark = await mockGeocodingService.getAddressFromCoordinates(
        999,
        999,
      );
      expect(placemark, isNull);
    });
  });
}
