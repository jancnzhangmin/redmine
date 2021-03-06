# encoding: UTF-8

# Copyright © Emilio González Montaña
# Licence: Attribution & no derivates
#   * Attribution to the plugin web page URL should be done if you want to use it.
#     https://redmine.ociotec.com/projects/advanced-roadmap
#   * No derivates of this plugin (or partial) are allowed.
# Take a look to licence.txt file at plugin root folder for further details.

require_dependency 'projects_helper'

module AdvancedRoadmap
  module ProjectsHelperPatch
    def self.included(base)
      base.class_eval do
        def project_settings_tabs_with_more_tabs
          tabs = project_settings_tabs_without_more_tabs
          index = tabs.index({:name => 'versions', :action => :manage_versions,
                              :partial => 'projects/settings/versions', :label => :label_version_plural})
          if index
            tabs.insert(index, {:name => 'milestones', :action => :manage_milestones,
                                :partial => 'projects/settings/milestones', :label => :label_milestone_plural})
            tabs.select {|tab| User.current.allowed_to?(tab[:action], @project)}
          end
          return(tabs)
        end
        alias_method_chain :project_settings_tabs, :more_tabs
      end
    end
  end
end
