# == Schema Information
#
# Table name: poke_moves
#
#  id         :bigint           not null, primary key
#  pokemon_id :bigint           not null
#  move_id    :bigint           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class PokeMove < ApplicationRecord
    validates :move_id, uniqueness: {scope: :pokemon_id, message: "Cannot have the same move more than once"}

    belongs_to :pokemon 
    belongs_to :move
end
