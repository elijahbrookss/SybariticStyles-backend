class MerchandiseSerializer
  def initialize(merchandise_obj)
    @merchandise = merchandise_obj
  end

  def serialize
    options = {}
    @merchandise.to_json(options)
  end
end
