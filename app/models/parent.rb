class Parent < ActiveRecord::Base
    validates :name, :length => { :maximum => 30 },
                     :presence => true
    validates :gender, :inclusion => { :in => %w( male female) },
                       :presence => true
end
