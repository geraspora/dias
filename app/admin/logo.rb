ActiveAdmin.register Logo do
  index do
    column :title
    column :start_date
    column :end_date
    column :published
    default_actions
  end

  filter :start_date
  filter :end_date
  filter :published, :as => :select

  form do |f|
    f.inputs 'General' do
      f.input :title
      f.input :start_date, :as => :date
      f.input :end_date, :as => :date
      f.input :published
    end

    f.inputs 'Files' do
      f.input :image
    end

    f.inputs 'Texts' do
      f.input :description
      f.input :credits
    end

    f.buttons
  end
end
