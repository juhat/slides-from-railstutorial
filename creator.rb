require 'open-uri'
require 'nokogiri'

content = [
    {
        url: "http://ruby.railstutorial.org/chapters/beginning",
        slides: [
            {
                title: "Course overview",
                content: "<ul><li>The famous railstutorial.org book</li><li>Three applications, from bird eye view to the detailed one</li><li>Deploy steps</li><li>New tools and design patterns</li><li>Testing</li></ul>"
            },
            {
                title: "Introduction",
                selector: "p:nth-child(34)"
            },
            {
                title: "Scaling Rails",
                selector: "p:nth-child(53)"
            },
            {
                title: "Development environment",
                selector: ":nth-child(95) img , p:nth-child(53)"
            },
            {
                title: "About the tools",
                selector: "p:nth-child(99)"
            },
            {
                title: "Generating a new rails app",
                selector: ":nth-child(161) pre"
            },
            {
                title: "The Rails app structure",
                selector: ":nth-child(165) img"
            },
            {
                title: "Bundler and Gemfile",
                selector: ":nth-child(174) pre"
            },
            {
                title: "Starting the Rails server",
                selector: ":nth-child(205) pre"
            },
            {
                title: "Up and running",
                selector: ":nth-child(211) img"
            },
            {
                title: "Model View Controller(MVC)",
                selector: "p:nth-child(215)"
            },
            {
                title: "Model View Controller(MVC)",
                selector: ":nth-child(218) img"
            },
            {
                title: "Version control with GIT",
                content: "<a href='http://try.github.com'>http://try.github.com</a>"
            },
            {
                title: "What is Github?",
                selector: ":nth-child(281) img"
            },
            {
                title: "Time to deploy?",
                selector: "p:nth-child(329)"
            },
            {
                title: "Deploy options",
                selector: "p:nth-child(330)"
            },
            {
                title: "Heroku setup",
                selector: ".codelisting pre"
            },
            {
                title: "Creating the app",
                selector: ".codelisting pre"
            },
            {
                title: "Pushing the changes to live",
                selector: ":nth-child(351) pre"
            },
            {
                title: "Heroku configuration",
                selector: ":nth-child(360) img"
            },
        ]
    },
    {
        url: "http://ruby.railstutorial.org/chapters/a-demo-app",
        slides: [
            {
                title: "The demo app",
                selector: "p:nth-child(24)"
            },
            {
                title: "Creating the app",
                selector: ":nth-child(29) pre"
            },
            {
                title: "The Gemfile",
                selector: ".codelisting pre"
            },
            {
                title: "Bundle install",
                selector: ":nth-child(35) pre"
            },
            {
                title: "Initial commit",
                selector: ":nth-child(37) pre"
            },
            {
                title: "Creating repo on Github",
                selector: ":nth-child(39) img"
            },
            {
                title: "Adding remote for",
                selector: ":nth-child(41) pre"
            },
            {
                title: "User resource",
                selector: "p:nth-child(58)"
            },
            {
                title: "Generating the user",
                selector: ":nth-child(60) pre"
            },
            {
                title: "DB migration",
                selector: ":nth-child(63) pre"
            },
            {
                title: "User URLs",
                selector: ":nth-child(74)"
            },
            {
                title: "User URLs",
                selector: ":nth-child(80) img"
            },
            {
                title: "MVC",
                selector: ":nth-child(99) img"
            },
            {
                title: "config/routes.rb",
                selector: ":nth-child(103) pre"
            },
            {
                title: "app/controllers/users_controller.rb",
                selector: ":nth-child(106) pre"
            },
            {
                title: "User REST URLs",
                selector: ":nth-child(109) .center"
            },
            {
                title: "What is REST?",
                selector: ":nth-child(111)"
            },
            {
                title: "User C, app/controllers/users_controller.rb",
                selector: ":nth-child(114) pre"
            },
            {
                title: "User M, app/models/user.rb",
                selector: ":nth-child(117) pre"
            },
            {
                title: "User C, app/views/users/index.html.erb",
                selector: ":nth-child(120) pre"
            },
            {
                title: "Generating the micropost",
                selector: ":nth-child(132) pre"
            },
            {
                title: "config/routes.rb",
                selector: ":nth-child(137) pre"
            },
            {
                title: "Micropost REST URLs",
                selector: ":nth-child(139) .center"
            },
            {
                title: "Adding the micro",
                selector: ":nth-child(153) pre"
            },
            {
                title: "It shows the error",
                selector: ":nth-child(156) img"
            },
            {
                title: "Assotiation User <=> Micropost",
                selector: "p:nth-child(159)"
            },
            {
                title: "DB",
                selector: ":nth-child(166) img"
            },
            {
                title: "app/models/user.rb",
                selector: ":nth-child(161) pre"
            },
            {
                title: "app/models/micropost.rb",
                selector: ":nth-child(163) pre"
            },
            {
                title: "rails console --sandbox",
                selector: ":nth-child(168) pre"
            },
            {
                title: "Where is the ActiveRecord?",
                selector: ":nth-child(179) img"
            },
            {
                title: "Where is the ActionController?",
                selector: ":nth-child(188) img"
            },
            {
                title: "Commit",
                selector: ":nth-child(193) pre"
            },
            {
                title: "Creating a Heroku app",
                selector: ":nth-child(196) pre"
            },
            {
                title: "Migrate in production",
                selector: ":nth-child(198) pre"
            }
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
            html_content.css("sup").each{|s| s.remove }
            # how to safety remove?
            html_content.css("a").select{|a| !a.attributes["href"].value.include?("http") }.each{|a| a.attributes["href"].value = "#" }
        end
    elsif slide.has_key?(:content)
        html_content = slide[:content]
    end


    result += "<!-- Slide content for chapter #{ chapter[:url] } -->\n"
    result += "<div class=\"slide\">\n\n"
    result += "<h1>#{ slide[:title] }<span style='float:right; font-size:0.5em'> chapter #{ index + 1 }</span></h1>\n\n"
    result += "<div>#{ html_content }</div>\n"
    result += "</div>\n\n\n\n"
  end
end

template = File.open( "blank.html" ).read
File.open( 'index.html', 'w' ) do |file|
  file.write( template.gsub( "###-content-goes-here-###", result ) )
end

`open index.html`
