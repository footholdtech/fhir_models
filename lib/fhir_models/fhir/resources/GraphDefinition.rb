module FHIR
  class GraphDefinition < FHIR::Model
    include FHIR::Hashable
    include FHIR::Json
    include FHIR::Xml

    SEARCH_PARAMS = ['context', 'context-quantity', 'context-type', 'date', 'description', 'jurisdiction', 'name', 'publisher', 'status', 'url', 'version', 'start']
    METADATA = {
      'id' => {'type'=>'id', 'path'=>'GraphDefinition.id', 'min'=>0, 'max'=>1},
      'meta' => {'type'=>'Meta', 'path'=>'GraphDefinition.meta', 'min'=>0, 'max'=>1},
      'implicitRules' => {'type'=>'uri', 'path'=>'GraphDefinition.implicitRules', 'min'=>0, 'max'=>1},
      'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'type'=>'code', 'path'=>'GraphDefinition.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
      'text' => {'type'=>'Narrative', 'path'=>'GraphDefinition.text', 'min'=>0, 'max'=>1},
      'contained' => {'type'=>'Resource', 'path'=>'GraphDefinition.contained', 'min'=>0, 'max'=>Float::INFINITY},
      'extension' => {'type'=>'Extension', 'path'=>'GraphDefinition.extension', 'min'=>0, 'max'=>Float::INFINITY},
      'modifierExtension' => {'type'=>'Extension', 'path'=>'GraphDefinition.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
      'url' => {'type'=>'uri', 'path'=>'GraphDefinition.url', 'min'=>0, 'max'=>1},
      'version' => {'type'=>'string', 'path'=>'GraphDefinition.version', 'min'=>0, 'max'=>1},
      'name' => {'type'=>'string', 'path'=>'GraphDefinition.name', 'min'=>1, 'max'=>1},
      'status' => {'type'=>'code', 'path'=>'GraphDefinition.status', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/publication-status|4.0.0'}},
      'experimental' => {'type'=>'boolean', 'path'=>'GraphDefinition.experimental', 'min'=>0, 'max'=>1},
      'date' => {'type'=>'dateTime', 'path'=>'GraphDefinition.date', 'min'=>0, 'max'=>1},
      'publisher' => {'type'=>'string', 'path'=>'GraphDefinition.publisher', 'min'=>0, 'max'=>1},
      'contact' => {'type'=>'ContactDetail', 'path'=>'GraphDefinition.contact', 'min'=>0, 'max'=>Float::INFINITY},
      'description' => {'type'=>'markdown', 'path'=>'GraphDefinition.description', 'min'=>0, 'max'=>1},
      'useContext' => {'type'=>'UsageContext', 'path'=>'GraphDefinition.useContext', 'min'=>0, 'max'=>Float::INFINITY},
      'jurisdiction' => {'valid_codes'=>{'urn:iso:std:iso:3166'=>[], 'urn:iso:std:iso:3166:-2'=>[], 'http://unstats.un.org/unsd/methods/m49/m49.htm'=>[]}, 'type'=>'CodeableConcept', 'path'=>'GraphDefinition.jurisdiction', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/jurisdiction'}},
      'purpose' => {'type'=>'markdown', 'path'=>'GraphDefinition.purpose', 'min'=>0, 'max'=>1},
      'start' => {'type'=>'code', 'path'=>'GraphDefinition.start', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/resource-types|4.0.0'}},
      'profile' => {'type'=>'canonical', 'path'=>'GraphDefinition.profile', 'min'=>0, 'max'=>1},
      'link' => {'type'=>'GraphDefinition::Link', 'path'=>'GraphDefinition.link', 'min'=>0, 'max'=>Float::INFINITY}
    }

    class Link < FHIR::Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      METADATA = {
        'id' => {'type'=>'string', 'path'=>'Link.id', 'min'=>0, 'max'=>1},
        'extension' => {'type'=>'Extension', 'path'=>'Link.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'Link.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'path' => {'type'=>'string', 'path'=>'Link.path', 'min'=>0, 'max'=>1},
        'sliceName' => {'type'=>'string', 'path'=>'Link.sliceName', 'min'=>0, 'max'=>1},
        'min' => {'type'=>'integer', 'path'=>'Link.min', 'min'=>0, 'max'=>1},
        'max' => {'type'=>'string', 'path'=>'Link.max', 'min'=>0, 'max'=>1},
        'description' => {'type'=>'string', 'path'=>'Link.description', 'min'=>0, 'max'=>1},
        'target' => {'type'=>'GraphDefinition::Link::Target', 'path'=>'Link.target', 'min'=>0, 'max'=>Float::INFINITY}
      }

      class Target < FHIR::Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'type'=>'string', 'path'=>'Target.id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Target.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Target.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'type' => {'type'=>'code', 'path'=>'Target.type', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/resource-types|4.0.0'}},
          'params' => {'type'=>'string', 'path'=>'Target.params', 'min'=>0, 'max'=>1},
          'profile' => {'type'=>'canonical', 'path'=>'Target.profile', 'min'=>0, 'max'=>1},
          'compartment' => {'type'=>'GraphDefinition::Link::Target::Compartment', 'path'=>'Target.compartment', 'min'=>0, 'max'=>Float::INFINITY},
          'link' => {'type'=>'GraphDefinition::Link', 'path'=>'Target.link', 'min'=>0, 'max'=>Float::INFINITY}
        }

        class Compartment < FHIR::Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          METADATA = {
            'id' => {'type'=>'string', 'path'=>'Compartment.id', 'min'=>0, 'max'=>1},
            'extension' => {'type'=>'Extension', 'path'=>'Compartment.extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'type'=>'Extension', 'path'=>'Compartment.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
            'use' => {'type'=>'code', 'path'=>'Compartment.use', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/graph-compartment-use|4.0.0'}},
            'code' => {'type'=>'code', 'path'=>'Compartment.code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/compartment-type|4.0.0'}},
            'rule' => {'type'=>'code', 'path'=>'Compartment.rule', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/graph-compartment-rule|4.0.0'}},
            'expression' => {'type'=>'string', 'path'=>'Compartment.expression', 'min'=>0, 'max'=>1},
            'description' => {'type'=>'string', 'path'=>'Compartment.description', 'min'=>0, 'max'=>1}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :use               # 1-1 code
          attr_accessor :code              # 1-1 code
          attr_accessor :rule              # 1-1 code
          attr_accessor :expression        # 0-1 string
          attr_accessor :description       # 0-1 string
        end

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :type              # 1-1 code
        attr_accessor :params            # 0-1 string
        attr_accessor :profile           # 0-1 canonical
        attr_accessor :compartment       # 0-* [ GraphDefinition::Link::Target::Compartment ]
        attr_accessor :link              # 0-* [ GraphDefinition::Link ]
      end

      attr_accessor :id                # 0-1 string
      attr_accessor :extension         # 0-* [ Extension ]
      attr_accessor :modifierExtension # 0-* [ Extension ]
      attr_accessor :path              # 0-1 string
      attr_accessor :sliceName         # 0-1 string
      attr_accessor :min               # 0-1 integer
      attr_accessor :max               # 0-1 string
      attr_accessor :description       # 0-1 string
      attr_accessor :target            # 0-* [ GraphDefinition::Link::Target ]
    end

    attr_accessor :id                # 0-1 id
    attr_accessor :meta              # 0-1 Meta
    attr_accessor :implicitRules     # 0-1 uri
    attr_accessor :language          # 0-1 code
    attr_accessor :text              # 0-1 Narrative
    attr_accessor :contained         # 0-* [ Resource ]
    attr_accessor :extension         # 0-* [ Extension ]
    attr_accessor :modifierExtension # 0-* [ Extension ]
    attr_accessor :url               # 0-1 uri
    attr_accessor :version           # 0-1 string
    attr_accessor :name              # 1-1 string
    attr_accessor :status            # 1-1 code
    attr_accessor :experimental      # 0-1 boolean
    attr_accessor :date              # 0-1 dateTime
    attr_accessor :publisher         # 0-1 string
    attr_accessor :contact           # 0-* [ ContactDetail ]
    attr_accessor :description       # 0-1 markdown
    attr_accessor :useContext        # 0-* [ UsageContext ]
    attr_accessor :jurisdiction      # 0-* [ CodeableConcept ]
    attr_accessor :purpose           # 0-1 markdown
    attr_accessor :start             # 1-1 code
    attr_accessor :profile           # 0-1 canonical
    attr_accessor :link              # 0-* [ GraphDefinition::Link ]

    def resourceType
      'GraphDefinition'
    end
  end
end