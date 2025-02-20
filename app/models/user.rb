# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end

class User < ApplicationRecord
  has_many :borrowings, dependent: :destroy
  has_many :borrowed_books, through: :borrowings, source: :book
end
