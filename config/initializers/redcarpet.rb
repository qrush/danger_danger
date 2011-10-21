# https://gist.github.com/1177847

class ActionView::Template
  class Redcarpet < Handler
    include Handlers::Compilable

    def compile template
      ::Redcarpet.new(template.source).to_html.inspect
    end
  end

  register_template_handler :md, Redcarpet
end
