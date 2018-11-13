FactoryGirl.define do
  factory :sys_locale do
    territory { create(:country) }
    key { 'it-IT' }
    host { 'eiresis.com' }
    default { false }
    lang { nil }
  end
end
