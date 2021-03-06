class CreateParsingDataSequenceFiles < ActiveRecord::Migration
  def change
    create_table(:parsing_data_sequence_files, :id => false) do |t|
      t.primary_key :pdsf_id
      t.string :file
      t.string :season_info, default: "1"
      t.float :null_ratio, default: 0.5
      t.string :period_info, default: "1-1"
      t.integer :estimate_state, default: 0
      t.integer :total_tuple_num, default: 0
      t.integer :dup_tuple_num, default: 0
      t.timestamps null: false
    end
  end
end
