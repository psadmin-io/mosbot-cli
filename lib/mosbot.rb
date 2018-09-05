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
      command = "echo #{url} | pbcopy"
    when "windows"
      command = "echo #{url} | clip"
    end
    do_cmd(command)
  end

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

def print_help
  puts "mosbot - a utility to generate Oracle Support URLs"
  puts " "
  puts "Usage:"
  puts "mosbot <type> <id>"
  puts " "
  puts "  <type> is one of:"
  puts "  * doc"
  puts "  * bug" 
  puts "  * patch"
  puts "  * idea"
  puts " "
  puts "  <id> is the document id, bug number, patch number or idea number"
  puts " "
  puts "Options:"
  puts "  -c    Copy the URL to the clipboard"
  puts "  -o    Open the URL in a browser"
  puts " "
  puts "Visit https://github.com/psadmin-io/mosbot-cli to learn how to use configuration file."
end