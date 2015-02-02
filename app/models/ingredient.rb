class Ingredient
  attr_accessor :recipe_id, :measurement, :measurement_unit, :ingredient, :notes

# id?

  def initialize(args)
    @recipe_id = args[:recipe_id]
    @measurement = args[:measurement]
    @measurement_unit = args[:measurement_unit]
    @ingredient = args[:ingredient] 
    @notes = args[:notes]
  end
  
  def quarter?
    measurement.include?(".25")
  end  

  def third?
    measurement.include?(".66")
  end  

  def half?
    measurement.include?(".5")  
  end

  def whole?
    measurement.include?(".00")
  end

  def plural?
    measurement != nil && measurement > 1.0
  end

  def to_s
    formatted_measurement = case
      when measurement.to_s.include?(".0") then measurement.to_s.sub(".0", "")
      when measurement.to_s.include?(".25") then measurement.to_s.sub(".25", " 1/4")
      when measurement.to_s.include?(".33") then measurement.to_s.sub(".33", " 1/3")
      when measurement.to_s.include?(".5") then measurement.to_s.sub(".5", " 1/2")
      when measurement.to_s.include?(".66") then measurement.to_s.sub(".66", " 2/3")
      when measurement.to_s.include?(".75") then measurement.to_s.sub(".75", " 3/4") 
    end    
    if formatted_measurement != nil && formatted_measurement.start_with?("0") then formatted_measurement.delete!("0") end
    if formatted_measurement != nil then formatted_measurement.lstrip! end
    m_suffix = plural? && !@measurement_unit.nil? ? "s" : "" 
    i_suffix = plural? && @measurement_unit.nil? ? "s" : ""    
    "#{formatted_measurement} #{@measurement_unit}#{m_suffix} #{@ingredient}#{i_suffix}"
  end
  
end
