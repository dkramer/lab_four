class Parent < ActiveRecord::Base

    has_many :children

    validates :name, :length => { :maximum => 30 },
                     :presence => true
    validates :gender, :inclusion => { :in => %w( male female) },
                       :presence => true
end
