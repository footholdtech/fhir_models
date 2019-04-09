module FHIR
  class ContactPoint < FHIR::Model
    include FHIR::Hashable
    include FHIR::Json
    include FHIR::Xml

    SEARCH_PARAMS = []
    METADATA = {
      'id' => {'type'=>'string', 'path'=>'ContactPoint.id', 'min'=>0, 'max'=>1},
      'extension' => {'type'=>'Extension', 'path'=>'ContactPoint.extension', 'min'=>0, 'max'=>Float::INFINITY},
      'system' => {'type'=>'code', 'path'=>'ContactPoint.system', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/contact-point-system|4.0.0'}},
      'value' => {'type'=>'string', 'path'=>'ContactPoint.value', 'min'=>0, 'max'=>1},
      'use' => {'type'=>'code', 'path'=>'ContactPoint.use', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/contact-point-use|4.0.0'}},
      'rank' => {'type'=>'positiveInt', 'path'=>'ContactPoint.rank', 'min'=>0, 'max'=>1},
      'period' => {'type'=>'Period', 'path'=>'ContactPoint.period', 'min'=>0, 'max'=>1}
    }

    attr_accessor :id        # 0-1 string
    attr_accessor :extension # 0-* [ Extension ]
    attr_accessor :system    # 0-1 code
    attr_accessor :value     # 0-1 string
    attr_accessor :use       # 0-1 code
    attr_accessor :rank      # 0-1 positiveInt
    attr_accessor :period    # 0-1 Period
  end
end