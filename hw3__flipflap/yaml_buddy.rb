# Module that can be included (mixin) to take and output Yaml data
module YamlBuddy
  require 'yaml'
  # take_yaml: converts a String with YAML data into @data
  # parameter: yaml - a String in yaml format
  def take_yaml(yaml)
    @data = YAML.load(yaml)
  end

  # to_yaml: converts @data into yaml string
  # returns: String in yaml format
  def to_yaml
    # converts any data in @data into a yaml string.
    @data.to_yaml
  end
end
