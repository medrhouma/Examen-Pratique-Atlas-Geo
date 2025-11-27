# 🌍 Atlas Géographique

Une application Flutter interactive pour explorer les informations géographiques des pays du monde.

![Version](https://img.shields.io/badge/version-1.0.0-blue.svg)
![Flutter](https://img.shields.io/badge/Flutter-3.9.2+-02569B?logo=flutter)
![Dart](https://img.shields.io/badge/Dart-3.9.2+-0175C2?logo=dart)

## 📋 Table des Matières

- [Description](#description)
- [Fonctionnalités](#fonctionnalités)
- [Captures d'écran](#captures-décran)
- [Architecture](#architecture)
- [Installation](#installation)
- [Structure du Projet](#structure-du-projet)
- [Technologies Utilisées](#technologies-utilisées)
- [Utilisation](#utilisation)
- [Ajouter un Nouveau Pays](#ajouter-un-nouveau-pays)
- [Développement](#développement)
- [Auteur](#auteur)

---

## 📖 Description

**Atlas Géographique** est une application mobile développée avec Flutter qui permet aux utilisateurs d'explorer et de découvrir des informations détaillées sur différents pays du monde. L'application offre une interface intuitive et élégante pour consulter les données géographiques, démographiques et culturelles de 9 pays.

## ✨ Fonctionnalités

### 🏠 Page d'Accueil
- Image de bienvenue avec un globe terrestre animé
- Interface accueillante avec présentation de l'application
- Bouton d'exploration pour accéder à la liste des pays

### 📜 Liste des Pays
- Affichage de 9 pays avec leurs drapeaux
- Informations rapides (nom et capitale)
- Interface de liste scrollable et optimisée
- Menu latéral (Drawer) avec navigation

### 🔍 Page de Détails
- Image détaillée du pays (ou drapeau en grand format)
- Informations complètes :
  - 🏛️ Capitale
  - 👥 Population (formatée en millions)
  - 🗺️ Superficie (formatée en km²)
  - 🗣️ Langue officielle
- Cartes d'information élégantes avec icônes

### 🎯 Fonctionnalités Supplémentaires
- **Menu Latéral** avec :
  - Retour à l'accueil
  - Informations "À propos"
  - Option de quitter avec confirmation
- **Navigation fluide** entre les écrans
- **Gestion d'erreurs** pour les images manquantes
- **Interface responsive** adaptée à différentes tailles d'écran

---

## 📱 Captures d'écran

```
┌─────────────────┐  ┌─────────────────┐  ┌─────────────────┐
│  Page d'Accueil │  │  Liste des Pays │  │ Détails du Pays │
│                 │  │                 │  │                 │
│    🌍 Globe     │  │  🇫🇷 France     │  │  🇹🇳 Tunisia    │
│                 │  │  🇹🇳 Tunisie    │  │   [Image Big]   │
│  "Découvrez..." │  │  🇧🇷 Brésil     │  │                 │
│                 │  │  🇮🇹 Italie     │  │  Capital: Tunis │
│  [Explorer]     │  │  🇨🇦 Canada     │  │  Population: 12M│
│                 │  │  🇦🇺 Australie  │  │  Superficie:... │
└─────────────────┘  └─────────────────┘  └─────────────────┘
```

---

## 🏗️ Architecture

L'application suit une architecture **MVC simplifiée** (Model-View-Controller) :

```
lib/
├── main.dart                    # Point d'entrée de l'application
├── models/                      # Modèles de données
│   └── country.dart             # Classe Country avec propriétés et getters
├── data/                        # Source de données
│   └── countries_data.dart      # Données statiques des 9 pays
└── screens/                     # Interfaces utilisateur
    ├── welcome_page.dart        # Page d'accueil avec globe
    ├── countries_page.dart      # Liste des pays avec drawer
    └── country_detail_page.dart # Détails complets d'un pays
```

### 📊 Flux de Données

```
CountriesData.getAllCountries()
        ↓
   List<Country>
        ↓
   CountriesPage → ListView
        ↓
   Clic sur un pays
        ↓
   CountryDetailPage(country: selectedCountry)
        ↓
   Affichage des détails
```

---

## 🚀 Installation

### Prérequis

- **Flutter SDK** : Version 3.9.2 ou supérieure
- **Dart SDK** : Version 3.9.2 ou supérieure
- Un éditeur de code (VS Code, Android Studio, etc.)
- Un émulateur ou un appareil physique

### Étapes d'Installation

1. **Cloner le projet** :
   ```bash
   git clone https://github.com/votre-username/atlas_geo_mohamed.git
   cd atlas_geo_mohamed
   ```

2. **Installer les dépendances** :
   ```bash
   flutter pub get
   ```

3. **Vérifier l'installation Flutter** :
   ```bash
   flutter doctor
   ```

4. **Lancer l'application** :
   
   - **Sur Chrome (Web)** :
     ```bash
     flutter run -d chrome
     ```
   
   - **Sur un émulateur Android** :
     ```bash
     flutter run -d emulator-5554
     ```
   
   - **Sur un appareil iOS** :
     ```bash
     flutter run -d iphone
     ```

5. **Build pour production** :
   
   - **Android (APK)** :
     ```bash
     flutter build apk --release
     ```
   
   - **iOS** :
     ```bash
     flutter build ios --release
     ```
   
   - **Web** :
     ```bash
     flutter build web --release
     ```

---

## 📂 Structure du Projet

```
atlas_geo_mohamed/
│
├── android/                    # Configuration Android
├── ios/                        # Configuration iOS
├── web/                        # Configuration Web
├── windows/                    # Configuration Windows
├── linux/                      # Configuration Linux
├── macos/                      # Configuration macOS
│
├── assets/                     # Ressources de l'application
│   └── images/
│       ├── globe.png           # Image de la page d'accueil
│       └── flags/              # Drapeaux des pays
│           ├── france.png
│           ├── tunisia.png
│           ├── Tunisia_Big.png # Image détaillée Tunisie
│           ├── brazil.png
│           ├── italy.png
│           ├── canada.png
│           ├── australia.jpg
│           ├── germany.png
│           ├── spain.png
│           └── south_africa.png
│
├── lib/                        # Code source Dart
│   ├── main.dart               # Point d'entrée
│   ├── models/
│   │   └── country.dart        # Modèle de données Country
│   ├── data/
│   │   └── countries_data.dart # Données des pays
│   └── screens/
│       ├── welcome_page.dart
│       ├── countries_page.dart
│       └── country_detail_page.dart
│
├── test/                       # Tests unitaires
├── pubspec.yaml                # Configuration du projet et dépendances
├── analysis_options.yaml       # Configuration du linter
└── README.md                   # Ce fichier
```

---

## 🛠️ Technologies Utilisées

### Framework & Langage
- **Flutter** `3.9.2+` - Framework UI cross-platform
- **Dart** `3.9.2+` - Langage de programmation

### Packages
- `cupertino_icons: ^1.0.8` - Icônes iOS-style
- `flutter_lints: ^5.0.0` - Règles de linting

### Widgets Principaux
- `Scaffold` - Structure de base des pages
- `AppBar` - Barre supérieure
- `Drawer` - Menu latéral
- `ListView.builder` - Liste optimisée
- `Navigator` - Navigation entre écrans
- `Card` - Cartes d'information
- `AlertDialog` - Boîtes de dialogue
- `Image.asset` - Gestion des images locales

---

## 📖 Utilisation

### Navigation dans l'Application

1. **Lancement** : L'application démarre sur la page d'accueil avec le globe
2. **Explorer** : Cliquer sur le bouton "Explorer" pour voir la liste des pays
3. **Sélection** : Cliquer sur un pays pour voir ses détails
4. **Menu** : Ouvrir le menu latéral (☰) pour accéder aux options
5. **Retour** : Utiliser le bouton retour (←) pour revenir en arrière

### Menu Latéral

- **🏠 Accueil** : Retour à la page d'accueil
- **ℹ️ À propos** : Informations sur l'application
- **🚪 Quitter** : Fermer l'application (avec confirmation)

---

## ➕ Ajouter un Nouveau Pays

Pour ajouter un nouveau pays à l'application :

### 1. Ajouter l'Image du Drapeau

Placez l'image dans `assets/images/flags/` :
```
assets/images/flags/nouveau_pays.png
```

### 2. Modifier `countries_data.dart`

Ajoutez un nouvel objet `Country` dans la liste :

```dart
Country(
  nom: "Maroc",
  capitale: "Rabat",
  population: 37000000,
  superficie: 446550,
  langue: "Arabe",
  drapeau: "images/flags/morocco.png",
  imageDetail: "images/flags/Morocco_Big.png", // Optionnel
),
```

### 3. Exécuter `flutter pub get`

```bash
flutter pub get
```

### 4. Hot Reload

Appuyez sur `r` dans le terminal ou utilisez le bouton Hot Reload de votre IDE.

Le nouveau pays apparaîtra automatiquement dans la liste ! 🎉

---

## 👨‍💻 Développement

### Commandes Utiles

```bash
# Analyser le code
flutter analyze

# Formater le code
flutter format lib/

# Exécuter les tests
flutter test

# Nettoyer le projet
flutter clean

# Mettre à jour les dépendances
flutter pub upgrade
```

### Mode Debug

Pour activer le mode debug avec hot reload :

```bash
flutter run
```

Ensuite :
- `r` : Hot reload
- `R` : Hot restart
- `q` : Quitter

### Bonnes Pratiques

- ✅ Utiliser `const` pour les widgets immutables
- ✅ Séparer les responsabilités (MVC)
- ✅ Nommer les variables en camelCase
- ✅ Ajouter des commentaires explicatifs
- ✅ Gérer les erreurs avec `errorBuilder`
- ✅ Utiliser des widgets réutilisables

---

## 📦 Déploiement

### Android

```bash
# Générer un APK
flutter build apk --release

# Générer un App Bundle (recommandé pour Play Store)
flutter build appbundle --release
```

Les fichiers générés se trouvent dans `build/app/outputs/`

### iOS

```bash
flutter build ios --release
```

Ouvrir ensuite le projet dans Xcode pour la signature et la soumission à l'App Store.

### Web

```bash
flutter build web --release
```

Les fichiers statiques se trouvent dans `build/web/` et peuvent être déployés sur n'importe quel serveur web.

---

## 🐛 Résolution de Problèmes

### Les images ne s'affichent pas

1. Vérifiez que les chemins dans `pubspec.yaml` sont corrects :
   ```yaml
   assets:
     - assets/images/
     - assets/images/flags/
   ```

2. Assurez-vous que les images existent dans le dossier `assets/`

3. Relancez l'application après modification de `pubspec.yaml` :
   ```bash
   flutter pub get
   flutter run
   ```

### Erreurs de compilation

```bash
flutter clean
flutter pub get
flutter run
```

### Problèmes de navigation

Vérifiez que vous utilisez le bon contexte :
```dart
Navigator.push(context, MaterialPageRoute(...));
```

---

## 🔮 Améliorations Futures

- [ ] Ajouter plus de pays (50+)
- [ ] Intégration d'une API REST pour données dynamiques
- [ ] Recherche et filtrage des pays
- [ ] Favoris et pays récemment consultés
- [ ] Mode sombre
- [ ] Support multilingue (EN, FR, AR)
- [ ] Cartes interactives avec Google Maps
- [ ] Graphiques de données démographiques
- [ ] Export des informations en PDF
- [ ] Quiz géographique

---

## 📄 Licence

Ce projet est développé à des fins éducatives.

---

## 👤 Auteur

**Rhouma Mohamed**

Application développée dans le cadre d'un projet de formation Flutter.

---

## 🙏 Remerciements

- Flutter Team pour le framework exceptionnel
- Material Design pour les guidelines
- La communauté Flutter pour les ressources

---

## 📞 Contact & Support

Pour toute question ou suggestion :
- 📧 Email : medrhouma1234.com
- 🐙 GitHub : [votre-username](https://github.com/medrhouma)

---

**Made with ❤️ using Flutter**
