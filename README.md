# rails template

<a name="readme-top"></a>

# 📗 Table of Contents

- [Doctor\_appointment\_reservation\_back\_end](#doctor_appointment_reservation_back_end)
- [📗 Table of Contents](#-table-of-contents)
- [📖 \[Appointment\_booker\_back\_end\] ](#-appointment_booker_back_end-)
  - [Link to the front-end repo](#link-to-the-front-end-repo)
  - [🛠 Built With ](#-built-with-)
    - [Tech Stack ](#tech-stack-)
    - [Key Features ](#key-features-)
  - [💻 Getting Started ](#-getting-started-)
    - [Prerequisites](#prerequisites)
    - [Setup](#setup)
    - [Install](#install)
    - [Usage](#usage)
    - [Run tests](#run-tests)
  - [👥 Authors ](#-authors-)
  - [🔭 Future Features ](#-future-features-)
  - [🤝 Contributing ](#-contributing-)
  - [⭐ Show your support ](#-show-your-support-)
  - [🙏Acknowledgments ](#acknowledgments-)
  - [📝 License ](#-license-)

# 📖 Loan Application Backend Repository <a name="about-project"></a>

> This repository houses the backend code for the Loan Application web application. It's developed in Ruby on Rails and handles database management, user authentication, and serving data to the frontend. The README provides details on setting up the backend, running migrations, and contributing to the project's development. 


##### [Link to the front-end repo](https://github.com/oguntayomicheal/Loan-App-Front-end)

## 🛠 Built With <a name="built-with"></a>

### Tech Stack <a name="tech-stack"></a>

<details>
  <summary>Back-end Server</summary>
  <ul>
    <li><a href="https://rubyonrails.org/">Ruby on Rails</a></li>
  </ul>
</details>

<details>
<summary>Database</summary>
  <ul>
    <li><a href="https://www.postgresql.org/">PostgreSQL</a></li>
  </ul>
</details>

### Key Features <a name="key-features"></a>

##### **Loan Officer (Staff)**
- Permit Staff Login with unique ID
- Renders all Loan applications for Staff dashboard
- Renders each Loan applications 
- Permit Update of loan application for staff alone

##### **Customer**
- Permit customer account registration 
- Permit Login to an existing customer account
- Permit creating of new loan application 
- Renders all applied loans to customer 
- Renders each loan applicaitons with its status and details

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 💻 Getting Started <a name="getting-started"></a>

To get a local copy up and running, follow these steps.

### Prerequisites

In order to run this project you need:

- Install Ruby
- Install Rails
- Install Postgresql

### Setup

Clone this repository to your desired folder:

```sh
  git clone git@github.com:oguntayomicheal/Loan-App-Backend.git
  cd Loan-App-Backend
```

### Install

Install this project with:

```sh
  bundle install
```

```sh
  gem install --no-document rubocop -v '>= 1.0, < 2.0'
```

### Usage

To run the project, execute the following command:

```sh
  rails db:create
  rails db:migrate
  rails server -p 3100
```
### Run tests

To run tests, run the following command:

```sh
  rspec spec
```

## 👥 Author <a name="authors"></a>

👤 **Micheal Oguntayo**

- GitHub: [@oguntayomicheal](https://github.com/oguntayomicheal)
- Twitter: [@OguntayoMicheal](https://twitter.com/Oguns_micky)
- LinkedIn: [@OguntayoMicheal](https://www.linkedin.com/in/ogunsmicky/)

## 🔭 Future Features <a name="future-features"></a>

- **Allow customer to delete rejected loan applications**


## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!
Feel free to check the [issues page](https://github.com/oguntayomicheal/Loan-App-Backend/issues).


## ⭐ Show your support <a name="support"></a>

If you like this project please show support by staring :star:️.


## 🙏Acknowledgments <a name="acknowledgements"></a>

- 

## 📝 License <a name="license"></a>

This project is [MIT](./LICENSE) licensed.

<p align="right">(<a href="#readme-top">back to top</a>)</p>
