class AddTranslationsToTaxRates < ActiveRecord::Migration
  def up
    params = { name: :string }
    Spree::TaxRate.create_translation_table!(params, { migrate_data: true})
  end

  def down
    Spree::TaxRate.drop_translation_table!(migrate_data: true)
  end
end
