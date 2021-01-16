require 'report_builder'

Before do
@login = LoginPage.new
@home = HomePage.new
@login.accessWebPage("https://try.discourse.org")
end

After do 
    shot = page.save_screenshot('log/shot.png')
    file = File.open(shot, 'rb').read
    screenshot = Base64.encode64(file)
     embed(screenshot, 'image/png', 'Screenshot') 
end


    
at_exit do
  ReportBuilder.configure do |config|
    config.input_path = 'log/report.json'
    config.report_path = 'log/report'
    report_types = [:html]
    config.report_title = 'Discourse'
    config.color = "indigo"
    config.compress_images = true

  end
  ReportBuilder.build_report
end
