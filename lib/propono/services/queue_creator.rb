module Propono
  class QueueCreatorError < ProponoError
  end

  class QueueCreator
    include Sqs

    def self.find_or_create(name)
      new(name).find_or_create
    end

    def initialize(name)
      @name = name
    end

    def find_or_create
      # TODO - Check for queue here.
      sqs.queues.create(@name)
    end
  end
end
