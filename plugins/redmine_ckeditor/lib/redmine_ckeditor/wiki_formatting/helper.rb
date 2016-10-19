module RedmineCkeditor::WikiFormatting
  module Helper
    def replace_editor(field_id)
       "<script type='text/javascript'>var ue = UE.getEditor(#{field_id});</script>".html_safe
    end


    def wikitoolbar_for(field_id)
        replace_editor(field_id)
    end

    def initial_page_content(page)
      "<h1>#{ERB::Util.html_escape page.pretty_title}</h1>"
    end

    def heads_for_wiki_formatter
    end
  end
end
