Object.class_eval do
  WTF_OPTIONS = [:time,                 # prefix
    :pp, :yaml, :json, :text, :line,    # format
    :page, :file, :raise, :redis, :log] # output

  def WTF?(*args)
    options = {}
    while WTF_OPTIONS.include?(args.last)
      options[args.pop] = true
    end

    data = ""
    data << "[%s] " % Time.now if options[:time]
    data << if args[0].is_a?(Symbol)
      args.shift.to_s.upcase
    else
      "WTF (%s/%s:%s)" % caller[0].match(%r{([^/]+?)(?:\.rb)?:(\d+):in `(.*)'$}).values_at(1,3,2) # '
    end

    data << ": " <<
    case
    when options[:pp]
      args.pretty_inspect.gsub(/^\[|\]$/,'') # remove array marks
    when options[:yaml]
      YAML.dump(args)
    when options[:json]
      JSON::pretty_generate(args)
    when options[:text]
      args.map(&:to_s).join("\n")
    when options[:line]
      args.map(&:inspect).join("\n")
    else
      args.inspect.gsub(/^\[|\]$/,'')
    end

    case
    when options[:page]
      (Thread.current[:wtf] ||= []) << data
    when options[:file]
      File.write("#{Rails.root}/tmp/wtf_#{Time.now.strftime('%m%d_%H%M%S')}_#{rand(10000)}.txt", data)
    when options[:raise]
      raise data
    when options[:redis]
      RS.rpush  'wtf', data
      RS.expire 'wtf', 30*60
    when options[:log]
      Rails.logger.info data
    else
      APPLOG.info data
    end
  end
end
