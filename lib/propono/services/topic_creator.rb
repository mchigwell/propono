module Propono
  class TopicCreatorError < ProponoError
  end

  class TopicCreator
    include Sns

    def self.find_or_create(topic_id)
      new(topic_id).find_or_create
    end

    def initialize(topic_id)
      @topic_id = topic_id
    end

    def find_or_create
      # TODO - Check for topic here.
      sns.topics.create(@topic_id)
    end
  end
end
