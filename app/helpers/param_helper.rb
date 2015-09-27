module ParamHelper
  def self.value_of hash_item, key
    if (!hash_item.nil?)
      hash_item[key.to_sym]
    else
      nil
    end
  end
end
