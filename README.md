Book Lending Library

A simple book lending library application built with Ruby on Rails 8 that allows users to browse books, borrow and return them, and track their borrowed books.

Features

User Authentication: Users can register, log in, and manage their sessions using Rails 8's default authentication.

Book Management: List available books, view book details, and check availability.

Borrowing System: Users can borrow books, which creates a borrowing record with a due date (2 weeks from the borrowing date).

Return Books: Users can return books they have borrowed.

User Profile: Displays a list of books a user has currently borrowed.

Model Validations & Error Handling: Ensures proper data integrity and prevents duplicate or invalid entries.

Test Coverage: Includes tests for models, controllers, and views using the default Rails testing framework.

Installation

Prerequisites

Ensure you have the following installed:

Ruby 3.x

Rails 8

PostgreSQL (or SQLite)

Node.js & Yarn 

Setup

Clone the repository:

  git clone https://github.com/wizzyke/book-lending-library.git
  cd book-lending-library

Install dependencies:

  bundle install
  yarn install

Set up the database:

  rails db:create db:migrate db:seed

Start the Rails server:

  rails server

Visit http://localhost:3000 in your browser.

Usage

Register & Login

Users can sign up and log in to borrow books.

Browse Books

Navigate to the books listing page to view available books.

Borrow a Book

Click on a book's details and press the "Borrow" button if available.

Return a Book

Go to the user profile page to return books.

Testing

To run tests, ensure the test environment is set up:

  rails db:test:prepare

Run the test suite:

  rails test

Run system tests:

  rails test:system

Deployment

For production deployment, ensure you have PostgreSQL configured and use:

  RAILS_ENV=production rails db:migrate
  rails assets:precompile
  rails assets:clean
  rails server -e production

Contributing

Fork the repository.

Create a new branch: git checkout -b feature-branch-name.

Commit your changes: git commit -m 'Add some feature'.

Push to the branch: git push origin feature-branch-name.

Open a Pull Request.

License

This project is licensed under the MIT License.

Contact

For any issues or contributions, feel free to open an issue or reach out!

GitHub Repository: Book Lending Library

