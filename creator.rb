require 'open-uri'
require 'nokogiri'

content = [
    {
        url: "http://ruby.railstutorial.org/chapters/beginning",
        slides: [
            {
                title: "Tools",
                content: "spending time learning tools is normal"
            },
            {
                title: "GIT",
                content: "<a href='http://try.github.com'>http://try.github.com</a>"
            },
            {
                title: "first slide",
                selector: ":nth-child(259) .highlight"
            },
            {
                title: "image slide",
                selector: ":nth-child(165) img"
            }
        ]
    },
    {
        url: "http://ruby.railstutorial.org/chapters/a-demo-app",
        slides: [
        ]
    },
    {
        url: "http://ruby.railstutorial.org/chapters/static-pages",
        slides: [
        ]
    },
    {
        url: "http://ruby.railstutorial.org/chapters/rails-flavored-ruby",
        slides: [
        ]
    },
    {
        url: "http://ruby.railstutorial.org/chapters/filling-in-the-layout",
        slides: [
        ]
    },
    {
        url: "http://ruby.railstutorial.org/chapters/modeling-users",
        slides: [
        ]
    },
    {
        url: "http://ruby.railstutorial.org/chapters/sign-up",
        slides: [
        ]
    },
    {
        url: "http://ruby.railstutorial.org/chapters/sign-in-sign-out",
        slides: [
        ]
    },
    {
        url: "http://ruby.railstutorial.org/chapters/updating-showing-and-deleting-users",
        slides: [
        ]
    },
    {
        url: "http://ruby.railstutorial.org/chapters/user-microposts",
        slides: [
        ]
    },
    {
        url: "http://ruby.railstutorial.org/chapters/following-users",
        slides: [
        ]
    }
]

result = ''

content.each_with_index do |chapter, index|
  document = Nokogiri::HTML( open( chapter[:url] ) )

  for slide in chapter[:slides]
    if slide.has_key?(:selector)
        if document.css( slide[:selector] ).first.name == "img"
            base_url = "http://ruby.railstutorial.org"
            image_path = document.css( slide[:selector] ).first.attributes["src"].to_s
            new_image_path = "images/#{ index }_#{ image_path.split('/').last }"
            open(new_image_path, 'wb') do |file|
              file << open( base_url + image_path ).read
            end
            html_content = "<img src=\"#{ new_image_path }\">\n"
        else
            html_content = document.css( slide[:selector] ).first
        end
    elsif slide.has_key?(:content)
        html_content = slide[:content]
    end


    result += "<!-- Slide content for chapter #{ chapter[:url] } -->\n"
    result += "<div class=\"slide\">\n\n"
    result += "<h1>#{ slide[:title] }<span style='float:right; font-size:0.5em'>chapter #{ index + 1 }</span></h1>\n\n"
    result += "<div>#{ html_content }</div>\n"
    result += "</div>\n\n\n\n"
  end
end

template = File.open( "blank.html" ).read
File.open( 'index.html', 'w' ) do |file|
  file.write( template.gsub( "###-content-goes-here-###", result ) )
end

`open index.html`
