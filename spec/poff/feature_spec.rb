require 'spec_helper'

describe Poff::Feature do
  context ".enabled?" do
    FeatureFlags = {
      :enabled_feature => :on,
      :disabled_feature => :off
    }

    it "returns false when the feature is not defined in FeatureFlags" do
      Poff::Feature.enabled?(:test_feature).should be_false
    end

    it "returns false when the feature is set to :off in FeatureFlags" do
      Poff::Feature.enabled?(:disabled_feature).should be_false
    end

    it "returns true when the feature is set to :on in FeatureFlags" do
      Poff::Feature.enabled?(:enabled_feature).should be_true
    end

    it "returns false when FeatureFlags is not defined" do
      Object.send(:remove_const, "FeatureFlags")
      Module.const_defined?("FeatureFlags").should be_false
      Poff::Feature.enabled?(:test_feature).should be_false
    end
  end
end
