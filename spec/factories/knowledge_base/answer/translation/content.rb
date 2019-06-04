FactoryBot.define do
  factory 'knowledge_base/answer/translation/content', aliases: %i[knowledge_base_answer_translation_content] do
    translation { nil }
    body        { Faker::Lorem.paragraph(3) }

    before(:create) do |content|
      if content.translation.nil?
        content.translation = create(:knowledge_base_answer_translation)
      end
    end
  end
end
