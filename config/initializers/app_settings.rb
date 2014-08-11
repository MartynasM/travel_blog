APPLOG  = ActiveSupport::Logger.new("#{Rails.root}/log/application.log")
Dir.glob("#{Rails.root}/lib/core_ext/**/*.rb") {|f| require f }
