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
  
  puts "MOS_COPY_URL: #{MOS_COPY_URL}"
  if "#{MOS_COPY_URL}" == "true" 
    case "#{OS_CONST}"
    when "macosx", "linux"
      command = "echo #{url} | pbcopy"
    when "windows"
      command = "echo #{url} | clip"
    end
    do_cmd(command)
  end

  puts "MOS_OPEN_URL: #{MOS_OPEN_URL}"
  if "#{MOS_OPEN_URL}" == "true"
    case "#{OS_CONST}"
    when "macosx"
      command = "open #{url}"
    when "windows"
      command = "start #{url}"
    end
    do_cmd(command)
  end
end

def do_cmd(command)
  out = `#{command}`
end