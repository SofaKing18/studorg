class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :groups
  has_many :homewords
  has_many :notes
  has_many :subjects
  has_many :teachers
  has_many :timelines
  has_many :schedules
  has_many :chemestries
  has_many :lecture_halls

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
