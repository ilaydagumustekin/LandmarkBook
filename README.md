# LandmarkBook

LandmarkBook is a SwiftUI-based iOS application that allows users to explore iconic landmarks from different cities around the world. The application presents landmarks in a clean list interface and provides a dedicated detail view with location information and a short historical description.

The project was developed as a practical study of modern iOS interface development using SwiftUI, reusable view components, model-driven data, and navigation structures.

## Features

- Browse iconic landmarks in a structured list
- View landmark images with city and country information
- Navigate between list and detail screens
- Read short historical descriptions for each landmark
- Reusable information card components
- Consistent responsive layout across landmark detail pages
- Native SwiftUI navigation experience

## Technologies

- Swift
- SwiftUI
- NavigationStack
- NavigationLink
- List
- ScrollView
- GeometryReader
- SF Symbols
- Xcode

## Architecture

The application uses a simple model-driven structure. Landmark data is represented through a dedicated `Landmark` model and displayed dynamically across reusable SwiftUI views.

Each landmark contains:

- Name
- City
- Country
- Image asset
- Description

The main interface is responsible for listing available landmarks, while the detail screen presents the selected landmark through a reusable layout.

## Screenshots

<p align="center">
  <img src="landmark-list.png" width="300" alt="Landmark List Screen">
  &nbsp;&nbsp;&nbsp;&nbsp;
  <img src="landmark-detail.png" width="300" alt="Landmark Detail Screen">
</p>

## Project Structure

```text
LandmarkBook
├── LandmarkBookApp.swift
├── ContentView.swift
├── DetaySayfa.swift
├── Landmark.swift
└── Assets.xcassets
