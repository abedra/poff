module Poff
  module Feature
    def self.enabled?(flag)
      if !const_defined?("FeatureFlags")
        puts "FeatureFlags variable was not defined. Please run rails generate poff:initializer"
        return false
      end
      FeatureFlags.has_key?(flag) && FeatureFlags[flag] == :on
    end
  end
end
