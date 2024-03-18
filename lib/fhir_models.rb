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

# disable the blind loading of every file in the fhir_models/fhir subdirectory as these
# require extra memory that can cause problems on staging environments and only require
# what is necessary for the FCM FHIR implementation
#
# Dir.glob(File.join(root, 'lib', 'fhir_models', 'fhir', '*.rb')).sort.each do |file|
#   require file
# end
require File.join(root, 'lib', 'fhir_models', 'fhir', 'metadata.rb')

# The following line would need to be changed whenever more than just the basic Patient
# FHIR model is in use
require File.join(root, 'lib', 'fhir_models', 'fhir', 'resources', 'Patient.rb')

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
