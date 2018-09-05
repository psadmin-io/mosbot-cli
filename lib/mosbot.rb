#!/usr/bin/env ruby

require 'rbconfig'

def os
  @os ||= (
      host_os = RbConfig::CONFIG['host_os']
          case host_os
          when /mswin|msys|mingw|cygwin|bccwin|wince|emc/
              :windows
          when /darwin|mac os/
              :macosx
          when /linux/
              :linux
          when /solaris|bsd/
              :unix
          else
              raise Error::WebDriverError, "unknown os: #{host_os.inspect}"
          end
   )
end

def handle_output(url)
  puts url
  if "#{MOS_COPY_URL}" == "true" 
    case "#{OS_CONST}"
    when "macosx", "linux"
      out = `echo "#{url}" | pbcopy`
    when "windows"
      out = `echo "#{url}" | clip`
    end
  end
  if "#{MOS_OPEN_URL}" == "true"
    case "#{OS_CONST}"
    when "macosx"
      out = `open #{url}`
    when "windows"
      out = `start #{url}`
    end
  end
end