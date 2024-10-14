<p align="center">
  <img src="https://crewmeister.com/images/logo_crewmeister_without_text.svg" />
</p>

# 🚀 Crewmeister coding challenge - Frontend (Flutter)

A Flutter project with Clean Architecture using Flutter Bloc State Management with
combination of Repository pattern.

## Product Features

- List of absences including the names of the employees.
- See the first 10 absences, with the ability to paginate.
- See a total number of absences.
- For each absence:
  - Member name
  - Type of absence
  - Period
  - Member note (when available)
  - Status (can be 'Requested', 'Confirmed' or 'Rejected')
  -  Admitter note (when available)
- Filter absences by type.
- Filter absences by date.
- Loading state until the list is available.
- Error state if the list is unavailable.
- Empty state if there are no results.

# Commands
- Test : flutter test test
- Run : flutter run

# Flutter Bootstrap Architecture

## Basic

This is the whole idea of application's architecture.
This architecture is base on clean architecture by separating each layers
into seperated `flutter packages`. In this way different units
in different layers will interact with each other in the most abstract way
and layers are not aware about what is happening inside other layers. By separating layers and units, we will achieve
more `Separation of Concern`.

![architecture](docs/imgs/architecture.png)

### Separating Packages

The most important things in multi package project is, we try to make the most abstract between layers.
So when we want to make a class or unit visible to other modules, we have to export the class. e.g : we want to
export `HomeBloc` inside the `presentation` layer.
inside `presentation.dart` we have to export it:

```
export 'package:crewmeister_coding_challenge/presentation/module/home/bloc/home_bloc.dart';

```

### Naming Convention

base on  [effective dart](https://dart.dev/guides/language/effective-dart/style)

- name types using UpperCamelCase :
  `class SliderMenu { ... }
  `
- name extensions using UpperCamelCase : `extension ContextExtensions on BuildContext`
- name packages, directories, and source files using
  lowercase_with_underscores : `data`, `app_dependency_component.dart`
- name import prefixes using lowercase_with_underscores : `import package:domain/domain.dart as business_logic`
- using lowerCamelCase for constant names : `const defaultTimeout = 1000;`
- using _, __, etc. for unused callback parameters

**note** by using some libraries to create bloc, maybe naming would have different style. conventions below are for
bloc
- `bloc` files name should **not** contain two bloc : `home_bloc_bloc`
- `bloc events` file name should **not** contain bloc word : `home_bloc_event`
- `bloc states` files name should **not** contain bloc word : `home_bloc_state`

### Presentation Module

This module will interact with **User** and will receive any events from user. e.g : Updating text by TextFields,
Clicking button , etc...

Ui logics are located here. e.g: Getting list of absences in this module.

The architectural pattern used for this `bootstrap project` is `BLoC`, but
it can be replaced by any architectural pattern that may be suitable for new project in future that flutter team want to
use.


### Domain Module

The main idea of **Domain** module is handling `Business rules` and connect user interactions with logic of
application.
This module should be as pure as possible and should have the least dependency to any implementation or libraries.
This module consist of use case type:
- SupplierUseCase [return Entity]

we are able to use it according to our requirement or behaviour we need from our use case.

### Data Module

In this layer we should handle data and data flow of application. managing `repositories implemetation` inside that module to make connection or switch connection between remote or
local source according to our requirement.


#### Local Module

Persistence layer of application and database and related files are in this module.


## Data Flow

![data flow](docs/imgs/data_flow.png)

- Any interaction of user with application is known as an `Event` that will be sent to `Bloc`
    - **Notes** :
        - If architectural pattern of application changed from `BLoC` to any other architectural patterns, starting
          of `data flow` should be base on the chosen pattern.
        - Any event can carry a `payload` to the `bloc`, but it is **Optional**
        - Each data coming from widget will be stored in an `immutable` object calling `BlocData` class. (freezed class)
        - after validating data, it will be sent to the use case
        - Use case will call the repository(s) to collect the data.
        - Business rules will apply to the data in use cases
        - Repository will request to data sources.
        - Data sources return `DTO` and `DTO` will map to `Entity` by mappers inside the repository.
        - The `Entity` will be passed to the `Bloc` with `UseCaseResult`
        - `UseCaseResult` contains 3 callback methods:
            - `onSuccess` : will get the data as parameter
            - `onError`: will get `throwable` as parameter
            - `onFinished` : trigger when process finishes.
        - Sometimes when we want to show the data to the user, we have to make some changes. In this situation we make
          some classes called `model` to be passed to widget

## Routing and Dependency Injection

![routing](docs/imgs/routing.png)

Each screen is dependent to a `Bloc`. Each bloc has its own dependencies. Sometimes dependencies are simple classes
e.g: `mapper`. These type of dependencies don't need to be injected to the dependent class.
But sometimes the dependency, itself has some dependencies too and creating the class from scratch is hard or
impossible.
In this Situation we would use `Dependency injection`.


- After providing bloc and adding it to dependency graph, we are able to create the screen.

- Each screen has its own `provider`:

```dart
@RoutePage()
class HomeRouteProvider extends StatefulWidget {
  const HomeRouteProvider({
    super.key,
  });

  @override
  State<HomeRouteProvider> createState() => _HomeRouteProviderState();
}

class _HomeRouteProviderState extends State<HomeRouteProvider> {
  @override
  Widget build(BuildContext context) {
    return const HomeScreen();
  }
}
```

- After creating provider, the provider should be injected to `AppRouter`
- Inside the route factory base on path, the provider should be selected
- The provider will create the `Widget`


# Test

Test folder consist of  unit test [bloc test].


