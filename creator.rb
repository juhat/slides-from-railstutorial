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
                selector: ":nth-child(343) pre"
            },
            {
                title: "Creating the app",
                selector: ":nth-child(346) pre"
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
                title: "Database model for the user",
                selector: ":nth-child(48) img"
            },
            {
                title: "Database model for microposts",
                selector: ":nth-child(54) img"
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
            },
            {
                title: "Summary",
                content: "<p>Good: high level overview, MVC, REST, data modeling, live app in production</p><br/><p>Missing: not custom, no images, no user management, no security, not TDD, missing understanding</p>"
            }
        ]
    },
    {
        url: "http://ruby.railstutorial.org/chapters/static-pages",
        slides: [
            {
                title: "Mostly static pages",
                selector: "p:nth-child(24)"
            },
            {
                title: "Let's start a new app",
                selector: ":nth-child(28) pre"
            },
            {
                title: "The Gemfile",
                selector: ":nth-child(32) pre"
            },
            {
                title: "Rspec Rails gem",
                selector: ":nth-child(40) pre"
            },
            {
                title: "Git init, push",
                selector: ":nth-child(52) pre"
            },
            {
                title: "Heroku app",
                selector: ":nth-child(55) pre"
            },
            {
                title: "Deploy problems?",
                selector: ":nth-child(59) pre"
            },
            {
                title: "Truly static pages",
                selector: ":nth-child(74) img"
            },
            {
                title: "Let's create one!",
                selector: ":nth-child(79) pre"
            },
            {
                title: "New branch",
                selector: ":nth-child(93) pre"
            },
            {
                title: "Rspec install",
                selector: ":nth-child(95) pre"
            },
            {
                title: "StaticPagesController",
                selector: ":nth-child(98) pre"
            },
            {
                title: "Undo is possible",
                content: "<p>$ rails generate controller FooBars baz quux <br/>$ rails destroy  controller FooBars baz quux</p>"
            },
            {
                title: "Even in the DB",
                content: "<p>$ rake db:rollback</p>"
            },
            {
                title: "Till the end",
                content: "<p>$ rake db:migrate VERSION=0</p>"
            },
            {
                title: "Routing for static pages",
                selector: ":nth-child(111) pre"
            },
            {
                title: "And the page",
                selector: ":nth-child(116) img"
            },
            {
                title: "HTTP verbs",
                content: "<p><tt>GET</tt> is the most common HTTP operation, used for <em>reading</em> data on the web; it just means \"get a page\", and every time you visit a site like google.com or wikipedia.org your browser is submitting a <tt>GET</tt> request. <tt>POST</tt> is the next most common operation; it is the request sent by your browser when you submit a form. In Rails applications, <tt>POST</tt> requests are typically used for <em>creating</em> things (although HTTP also allows <tt>POST</tt> to perform updates); for example, the <tt>POST</tt> request sent when you submit a registration form creates a new user on the remote site. The other two verbs, <tt>PUT</tt> and <tt>DELETE</tt>, are designed for <em>updating</em> and <em>destroying</em> things on the remote server. These requests are less common than <tt>GET</tt> and <tt>POST</tt> since browsers are incapable of sending them natively, but some web frameworks (including Ruby on Rails) have clever ways of making it <em>seem</em> like browsers are issuing such requests.</p>"
            },
            {
                title: "Controller",
                selector: ":nth-child(121) pre"
            },
            {
                title: "View",
                selector: ":nth-child(128) pre"
            },
            {
                title: "Commit time",
                selector: ":nth-child(135) pre"
            },
            {
                title: "TDD",
                selector: "p:nth-child(139)"
            },
            {
                title: "Generating a test",
                selector: ":nth-child(146) pre"
            },
            {
                title: "The first test",
                selector: ":nth-child(149) pre"
            },
            {
                title: "Run it!",
                selector: ":nth-child(159) pre"
            },
            {
                title: "The result",
                selector: ":nth-child(162) img"
            },
            {
                title: "How to pass?",
                selector: ":nth-child(165) pre"
            },
            {
                title: "More tests?",
                selector: ":nth-child(175) pre"
            },
            {
                title: "Let's add a page",
                selector: ":nth-child(191) pre"
            },
            {
                title: "New error",
                selector: ":nth-child(198) pre"
            },
            {
                title: "Adding a route",
                selector: ":nth-child(201) pre"
            },
            {
                title: "Another error",
                selector: ":nth-child(205) pre"
            },
            {
                title: "Adding action",
                selector: ":nth-child(208) pre"
            },
            {
                title: "Third error",
                selector: ":nth-child(212) pre"
            },
            {
                title: "View template",
                selector: ":nth-child(215) pre"
            },
            {
                title: "Slightly dynamic pages",
                selector: ".table .center"
            },
            {
                title: "Testing title",
                selector: ":nth-child(250) pre"
            },
            {
                title: "Passing title test",
                selector: ":nth-child(259) pre"
            },
            {
                title: "Refactor",
                selector: ":nth-child(275) pre"
            },
            {
                title: "Use layout!",
                selector: ":nth-child(299) pre"
            },
            {
                title: "Home page now",
                selector: ":nth-child(308) pre"
            },
            {
                title: "Summary",
                selector: "p:nth-child(317)"
            }
        ]
    },
    {
        url: "http://ruby.railstutorial.org/chapters/rails-flavored-ruby",
        slides: [
            {
                title: "Refactor with a helper",
                selector: ":nth-child(44) pre"
            },
            {
                title: "Our new layout",
                selector: ":nth-child(51) pre"
            },
            {
                title: "Don't forget the test",
                selector: ":nth-child(54) pre"
            },
            {
                title: "New home template",
                selector: ":nth-child(60) pre"
            },
            {
                title: "What's going on?",
                selector: ":nth-child(145) pre"
            },
            {
                title: "Time for Ruby",
                content: "<p>Questions?</p>"
            },
            {
                title: "A simple class",
                selector: ":nth-child(311) pre"
            }
        ]
    },
    {
        url: "http://ruby.railstutorial.org/chapters/filling-in-the-layout",
        slides: [
            {
                title: "Our aim",
                selector: ":nth-child(30) img"
            },
            {
                title: "New function?",
                selector: ":nth-child(32) pre"
            },
            {
                title: "Start with links",
                selector: ":nth-child(37) pre"
            },
            {
                title: "Button for sign up",
                selector: ":nth-child(68) pre"
            },
            {
                title: "What we get?",
                selector: ":nth-child(78) img"
            },
            {
                title: "Add Bootstrap!",
                selector: ":nth-child(84) pre"
            },
            {
                title: "Create a custom css!",
                selector: ":nth-child(89) pre"
            },
            {
                title: "Import Bootstrap!",
                selector: ":nth-child(95) pre"
            },
            {
                title: "Watch the result!",
                selector: ":nth-child(98) img"
            },
            {
                title: "Iterating..",
                selector: ":nth-child(101) pre"
            },
            {
                title: "Iterating...",
                selector: ":nth-child(111) pre"
            },
            {
                title: "Iterating...",
                selector: ":nth-child(116) pre"
            },
            {
                title: "Validating",
                selector: ":nth-child(119) img"
            },
            {
                title: "Refactoring into partials",
                selector: ":nth-child(124) pre"
            },
            {
                title: "Let's add footer",
                selector: ":nth-child(136) pre"
            },
            {
                title: "Footer in the layout",
                selector: ":nth-child(140) pre"
            },
            {
                title: "CSS for footer",
                selector: ":nth-child(143) pre"
            },
            {
                title: "What is Asset Pipeline?",
                selector: "p:nth-child(151)"
            },
            {
                title: "SASS",
                selector: ":nth-child(213) pre"
            },
            {
                title: "Named routes",
                selector: ".table .center"
            },
            {
                title: "Let's add a contact page",
                selector: ":nth-child(227) pre"
            },
            {
                title: "Refactor routes",
                selector: ":nth-child(279) pre"
            },
            {
                title: "Refactor header",
                selector: ":nth-child(297) pre"
            },
            {
                title: "Refactor footer",
                selector: ":nth-child(301) pre"
            },
            {
                title: "Refactor rspec",
                selector: ":nth-child(312) pre"
            },
            {
                title: "Refactor rspec",
                selector: ":nth-child(326) pre"
            },
            {
                title: "spec/support/utilities.rb",
                selector: ":nth-child(331) pre"
            },
            {
                title: "Refactor rspec",
                selector: ":nth-child(337) pre"
            },
            {
                title: "User sign up",
                selector: "p:nth-child(343)"
            },
            {
                title: "Generate",
                selector: ":nth-child(348) pre"
            },
            {
                title: "Generate tests",
                selector: ":nth-child(357) pre"
            },
            {
                title: "What to test?",
                selector: ":nth-child(360) pre"
            },
            {
                title: "Sign up routing",
                selector: ":nth-child(372) pre"
            },
            {
                title: "Initial sign up page",
                selector: ":nth-child(376) pre"
            },
            {
                title: "Home page button",
                selector: ":nth-child(379) pre"
            },
            {
                title: "Here we are",
                selector: ":nth-child(382) img"
            },
        ]
    },
    {
        url: "http://ruby.railstutorial.org/chapters/modeling-users",
        slides: [
            {
                title: "Modeling users",
                selector: "p:nth-child(25)"
            },
            {
                title: "Authentication",
                selector: ":nth-child(27)"
            },
            {
                title: "New function?",
                selector: ":nth-child(29) pre"
            },
            {
                title: "Sign up vision",
                selector: ":nth-child(35) img"
            },
            {
                title: "Controller for users",
                selector: ":nth-child(44) pre"
            },
            {
                title: "Annotate models!",
                selector: ":nth-child(77) pre"
            },
            {
                title: "spec/models/user_spec.rb",
                selector: ":nth-child(162) pre"
            },
            {
                title: "Validating name",
                selector: ":nth-child(188) pre"
            },
            {
                title: "Refactoring tests",
                selector: ":nth-child(201) pre"
            },
            {
                title: "Same with email?",
                content: "<p>Let's do it!</p>"
            },
            {
                title: "Tests for name length!",
                selector: ":nth-child(229) pre"
            },
            {
                title: "Test for email format",
                selector: ":nth-child(243) pre"
            },
            {
                title: "Validating email",
                selector: ":nth-child(247) pre"
            },
            {
                title: "Rubular time",
                selector: ":nth-child(256) img"
            },
            {
                title: "Validating uniqueness",
                selector: ":nth-child(275) pre"
            },
            {
                title: "Wait!",
                selector: ":nth-child(288) pre"
            },
            {
                title: "Wait!",
                selector: ":nth-child(296) pre"
            },
            {
                title: "Secure password",
                selector: "p:nth-child(304)"
            },
            {
                title: "How will this work?",
                selector: ":nth-child(310) img"
            },
            {
                title: "Gemfile",
                selector: ":nth-child(313) pre"
            },
            {
                title: "user_spec.rb",
                selector: ":nth-child(336) pre"
            },
            {
                title: "Generating a migration",
                selector: ":nth-child(324) pre"
            },
            {
                title: "Test prepare",
                selector: ":nth-child(330) pre"
            },
            {
                title: "Validating password",
                selector: ":nth-child(354) pre"
            },
            {
                title: "How to authenticate?",
                selector: ":nth-child(361) pre"
            },
            {
                title: "Rspec let",
                selector: ":nth-child(374) p:nth-child(2)"
            },
            {
                title: "Test authentication",
                selector: ":nth-child(379) pre"
            },
            {
                title: "User secure password",
                selector: ":nth-child(400) pre"
            },
            {
                title: "Console user test",
                selector: ":nth-child(407) pre"
            },
            {
                title: "Console authentication test",
                selector: ":nth-child(414) pre"
            }
        ]
    },
    {
        url: "http://ruby.railstutorial.org/chapters/sign-up",
        slides: [
            {
                title: "Final user page",
                selector: ":nth-child(34) img"
            },
            {
                title: "Debugging",
                selector: ":nth-child(39) pre"
            },
            {
                title: "Styles for debugging",
                selector: ":nth-child(42) pre"
            },
            {
                title: "How debug looks like",
                selector: ":nth-child(49) img"
            },
            {
                title: "Loggger?",
                content: "<p>logger.info('')<br/>logger.error('')</p>"
            },
            {
                title: "User resource",
                selector: ":nth-child(68) pre"
            },
            {
                title: "users/show.html.erb",
                selector: ":nth-child(82) pre"
            },
            {
                title: "users_controller.rb",
                selector: ":nth-child(86) pre"
            },
            {
                title: "Initial user page",
                selector: ":nth-child(96) img"
            },
            {
                title: "user_pages_spec.rb",
                selector: ":nth-child(104) pre"
            },
            {
                title: "What about test data?",
                selector: ":nth-child(109) pre"
            },
            {
                title: "spec/factories.rb",
                selector: ":nth-child(114) pre"
            },
            {
                title: "Changes in the spec",
                selector: ":nth-child(120) pre"
            },
            {
                title: "users/show.html.erb title",
                selector: ":nth-child(125) pre"
            },
            {
                title: "Fancy images?",
                selector: ":nth-child(150) img"
            },
            {
                title: "users/show.html.erb",
                selector: ":nth-child(137) pre"
            },
            {
                title: "users_helper.rb",
                selector: ":nth-child(145) pre"
            },
            {
                title: "Another email?",
                selector: ":nth-child(155) img"
            },
            {
                title: "User sidebar",
                selector: ":nth-child(158) pre"
            },
            {
                title: "Styling",
                selector: ":nth-child(161) pre"
            },
            {
                title: "Checkpoint",
                selector: ":nth-child(163) img"
            },
            {
                title: "Sign up form mock up",
                selector: ":nth-child(170) img"
            },
            {
                title: "Db reset",
                selector: ":nth-child(172) pre"
            },
            {
                title: "user_pages_spec.rb",
                selector: ":nth-child(207) pre"
            },
            {
                title: "Sign up form",
                selector: ":nth-child(215) pre"
            },
            {
                title: "Produces this",
                selector: ":nth-child(237) pre"
            },
            {
                title: "@user?",
                selector: ":nth-child(225) pre"
            },
            {
                title: "Styling",
                selector: ":nth-child(230) pre"
            },
            {
                title: "Checkpoint",
                selector: ":nth-child(232) img"
            },
            {
                title: "Sign up failure",
                selector: ":nth-child(260) img"
            },
            {
                title: "users_controller#create",
                selector: ":nth-child(270) pre"
            },
            {
                title: "Data passed",
                selector: ":nth-child(275) img"
            },
            {
                title: "Debug shows it",
                selector: ":nth-child(277) pre"
            },
            {
                title: "Insert error messages",
                selector: ":nth-child(299) pre"
            },
            {
                title: "shared/error_messages.html.erb",
                selector: ":nth-child(302) pre"
            },
            {
                title: "Pluralize :)",
                selector: ":nth-child(309) pre"
            },
            {
                title: "Pluralize :)",
                selector: ":nth-child(311) pre"
            },
            {
                title: "Error styles",
                selector: ":nth-child(317) pre"
            },
            {
                title: "Checkpoint",
                selector: ":nth-child(323) img"
            },
            {
                title: "What about success?",
                selector: ":nth-child(329) img"
            },
            {
                title: "User creation",
                selector: ":nth-child(336) pre"
            },
            {
                title: "Controller variables",
                content: "<ul><li>params</li><li>request</li><li>flash</li><li>session</li></ul>"
            },
            {
                title: "Message for redirect",
                selector: ":nth-child(354) pre"
            },
            {
                title: "Flash shows up",
                selector: ":nth-child(346) pre"
            },
            {
                title: "First sign up",
                selector: ":nth-child(359) img"
            }
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

files = ""

content.each_with_index do |chapter, index|
  result = ''
  current_file = "index_#{ index + 1 }.html"

  unless File.exist?( current_file )
    document = Nokogiri::HTML( open( chapter[:url] ) )

    for slide in chapter[:slides]
      begin
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

        template = File.open( "blank.html" ).read
        File.open( current_file, 'w' ) do |file|
          file.write( template.gsub( "###-content-goes-here-###", result ) )
        end
        files += " " + current_file
      rescue => e
         puts slide
         puts e
      end
    end
  end
end

`open #{ files }`
