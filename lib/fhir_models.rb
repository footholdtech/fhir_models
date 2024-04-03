# Modifications (C) 2024 Foothold Technology

root = File.expand_path '..', File.dirname(File.absolute_path(__FILE__))

require File.join(root, 'lib', 'fhir_models', 'version')
require File.join(root, 'lib', 'fhir_models', 'deprecate')

# Need to require Hashable first
require File.join(root, 'lib', 'fhir_models', 'bootstrap', 'hashable.rb')
require File.join(root, 'lib', 'fhir_models', 'bootstrap', 'json.rb')

Dir.glob(File.join(root, 'lib', 'fhir_models', 'bootstrap', '*.rb')).sort.each do |file|
  require file
end
Dir.glob(File.join(root, 'lib', 'fhir_models', 'bootstrap', '**', '*.rb')).sort.each do |file|
  require file
end

require File.join(root, 'lib', 'fhir_models', 'fhir.rb')

# Require the generated code

# We need metadata.rb for the TYPES, primarily (things like Address and CodeableConcept)
require File.join(root, 'lib', 'fhir_models', 'fhir', 'metadata.rb')

# Add additional resources to this array as required.
required_resources = ['Patient.rb']

required_resources.each do |resource|
  require File.join(root, 'lib', 'fhir_models', 'fhir', 'resources', resource)
end

Dir.glob(File.join(root, 'lib', 'fhir_models', 'fhir', 'types', '*.rb')).sort.each do |file|
  require file
end

# Require the FHIRPath code
Dir.glob(File.join(root, 'lib', 'fhir_models', 'fhirpath', '*.rb')).sort.each do |file|
  require file
end

# Require the fhir_ext code
Dir.glob(File.join(root, 'lib', 'fhir_models', 'fhir_ext', '*.rb')).sort.each do |file|
  require file
end
