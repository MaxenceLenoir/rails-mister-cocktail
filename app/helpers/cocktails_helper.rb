module CocktailsHelper
  def icon_trash(name, size=0.7)
    html = "<i class='fas fa-#{name}' "
    html += "style='font-size:#{size}em' "
    html += "></i>"
    html.html_safe
  end
end
