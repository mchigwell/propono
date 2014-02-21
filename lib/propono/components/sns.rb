module Propono
  module Sns
    private

    def sns
      @sns ||= AWS::SNS.new(Propono.aws_options)
    end
  end
end
