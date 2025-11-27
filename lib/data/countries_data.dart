import '../models/country.dart';

class CountriesData {
  static List<Country> getAllCountries() {
    return [
      Country(
        nom: "France",
        capitale: "Paris",
        population: 67000000,
        superficie: 643801,
        langue: "Français",
        drapeau: "images/flags/france.png",
      ),
      Country(
        nom: "Tunisie",
        capitale: "Tunis",
        population: 12000000,
        superficie: 163610,
        langue: "Arabe",
        drapeau: "images/flags/tunisia.png",
        imageDetail: "images/flags/Tunisia_Big.png",
      ),
      Country(
        nom: "Brésil",
        capitale: "Brasília",
        population: 215000000,
        superficie: 8515767,
        langue: "Portugais",
        drapeau: "images/flags/brazil.png",
      ),
      Country(
        nom: "Italie",
        capitale: "Rome",
        population: 59000000,
        superficie: 301340,
        langue: "Italien",
        drapeau: "images/flags/italy.png",
      ),
      Country(
        nom: "Canada",
        capitale: "Ottawa",
        population: 39000000,
        superficie: 9984670,
        langue: "Anglais",
        drapeau: "images/flags/canada.png",
      ),
      Country(
        nom: "Australie",
        capitale: "Canberra",
        population: 26000000,
        superficie: 7692024,
        langue: "Anglais",
        drapeau: "images/flags/australia.jpg",
      ),
      Country(
        nom: "Allemagne",
        capitale: "Berlin",
        population: 84000000,
        superficie: 357022,
        langue: "Allemand",
        drapeau: "images/flags/germany.png",
      ),
      Country(
        nom: "Espagne",
        capitale: "Madrid",
        population: 47000000,
        superficie: 505990,
        langue: "Espagnol",
        drapeau: "images/flags/spain.png",
      ),
      Country(
        nom: "Afrique du Sud",
        capitale: "Pretoria",
        population: 60000000,
        superficie: 1219090,
        langue: "Afrikaans, Anglais",
        drapeau: "images/flags/south_africa.png",
      ),
    ];
  }
}