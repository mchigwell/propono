module Propono
  module Sqs
    private

    def sqs
      @sqs ||= AWS::SQS.new(Propono.aws_options)
    end
  end
end
