#encoding: utf-8
class MasterQuestion < ActiveRecord::Base
  has_many :master_exams, :through => :exam_definition
  has_many :questions
  has_many :exam_definition
  has_one :language

  validates :concept,	:presence => true
  validates :inquiry,	:presence => true
  validates :language,	:presence => true
  validates :randomizer, :presence => true
  validates :solver,	:presence => true
  validates :subconcept, :presence => true

  attr_accessible :concept, :inquiry, :randomizer, :solver, :subconcept

  before_save :capitalizeAttributes

  def self.all_languages
    select("DISTINCT language")
  end

  def capitalizeAttributes
    self.concept = self.concept.capitalize
    self.subconcept = self.subconcept.capitalize
  end

end
