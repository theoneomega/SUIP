class Tattoo < ActiveRecord::Base
  attr_accessible :back, :description, :front, :head, :hip, :left_arm, :left_foot, :left_forearm, :left_hand, :left_leg, :left_thigh, :neck, :right_arm, :right_foot, :right_forearm, :right_hand, :right_leg, :right_thigh, :tattoo, :thorax
end
