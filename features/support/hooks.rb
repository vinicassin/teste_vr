require 'report_builder'

ReportBuilder.configure do |config|
  config.json_path = 'data/reports/report.json'
  config.report_path = "data/reports/report"
  config.report_types = [:html]
  config.report_title = "Projeto exemplo API - #{$report_title}"
  config.color = "blue"
end

at_exit do
  ReportBuilder.build_report
end


# After do |scenario|
#   if scenario.failed?
#     binding.pry
#   end
# end
