# Countries Information Portal

A Ruby on Rails web application that displays country information fetched from the REST Countries API.

[![Deployed on Heroku](https://img.shields.io/badge/Deployed%20on-Heroku-6762a6?style=flat-square&logo=heroku)](https://rails-countries-app-ff96bebe13c3.herokuapp.com)

## Features
### Core Functionality
🌍 **Country Data Browser**
- Fetches real-time data from [REST Countries API](https://restcountries.com)
- Displays comprehensive country information including:
  - National flags
  - Official names
  - Geographical regions
  - Population data
  - Currency details
  - Timezones

🔍 **Smart Search**
- Instant search by country name
- Dynamic filtering of results
- Case-insensitive matching

📑 **Responsive Table Display**
- Clean tabular presentation of country data

📄 **Detail View**
- Country profile pages
- Extended information display

### Technical Implementation
⚙️ **Architecture**
- MVC pattern implementation
- Single controller (`CountriesController`)
- Modular data handling (`Country` model)

🎨 **Frontend**
- Custom CSS styling (`app/assets/stylesheets/countries.scss`)

🚀 **Deployment**
- Heroku cloud platform hosting, visit the website to this link [Open app](https://rails-countries-app-ff96bebe13c3.herokuapp.com)

## Development Setup

### Requirements
- Ruby 3.4.1
- Rails 8.0.1
- Bundler 2.6.2

### Installation
```bash
# Clone repository
git clone https://github.com/bibigan/Rails-App.git
cd Rails-App

# Install dependencies
bundle install

# Start development server
rails server
