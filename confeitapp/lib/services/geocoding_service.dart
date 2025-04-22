import 'package:geocoding/geocoding.dart';

class GeocodingService {
  /// Obtém endereço completo (rua, bairro, cidade, estado) a partir da latitude e longitude
  Future<Placemark?> getAddressFromCoordinates(
    double latitude,
    double longitude,
  ) async {
    try {
      List<Placemark> placemarks = await placemarkFromCoordinates(
        latitude,
        longitude,
      );
      return placemarks.isNotEmpty ? placemarks.first : null;
    } catch (e) {
      print('Erro ao obter endereço: $e');
      return null;
    }
  }

  Future<Location?> getCoordinatesFromAddress(String addressOrCEP) async {
    try {
      List<Location> locations = await locationFromAddress(addressOrCEP);
      return locations.isNotEmpty ? locations.first : null;
    } catch (e) {
      print('Erro ao obter coordenadas: $e');
      return null;
    }
  }
}
