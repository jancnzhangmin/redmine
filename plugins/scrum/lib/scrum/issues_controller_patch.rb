# Copyright © Emilio González Montaña
# Licence: Attribution & no derivates
#   * Attribution to the plugin web page URL should be done if you want to use it.
#     https://redmine.ociotec.com/projects/redmine-plugin-scrum
#   * No derivates of this plugin (or partial) are allowed.
# Take a look to licence.txt file at plugin root folder for further details.

require_dependency "issues_controller"

module Scrum
  module IssuesControllerPatch
    def self.included(base)
      base.class_eval do

        after_filter :save_pending_effort, :only => [:create, :update]
        before_filter :add_default_sprint, :only => [:new, :update_form]

      private

        def save_pending_effort
          if @issue.is_task? and @issue.id and params[:issue] and params[:issue][:pending_effort]
            @issue.pending_effort = params[:issue][:pending_effort]
          end
        end

        def add_default_sprint
          if @issue.id.nil?
            if @issue.is_task? and (current_sprint = @project.current_sprint)
              @issue.sprint = current_sprint
            elsif @issue.is_pbi? and (product_backlog = @project.product_backlog)
              @issue.sprint = product_backlog
            else
              @issue.sprint = nil
            end
          end
        end

      end
    end
  end
end
