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

for chapter in content
  document = Nokogiri::HTML( open( chapter[:url] ) )

  for slide in chapter[:slides]
    if slide.has_key?(:selector)
        html_content = document.css( slide[:selector] ).first
    elsif slide.has_key?(:content)
        html_content = slide[:content]
    end


    result += "<!-- Slide content for chapter #{ chapter[:url] } -->\n"
    result += "<div class=\"slide\">\n\n"
    result += "<h1>#{ slide[:title] }</h1>\n\n"
    result += "<div>#{ html_content }</div>\n"
    result += "</div>\n\n\n\n"
  end
end

template = File.open( "blank.html" ).read
File.open( 'index.html', 'w' ) do |file|
  file.write( template.gsub( "###-content-goes-here-###", result ) )
end

`open index.html`
