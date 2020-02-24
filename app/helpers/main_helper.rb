module MainHelper

  def data_diames(date)
    # formatting date: Aug, 31 2007 - 9:55PM
    date.strftime("%d/%m")
  end

  def data_corrido(date)
    # formatting date: Aug, 31 2007 - 9:55PM
    date.strftime("%m %b %Y")
  end

def load_properties(properties_filename)
  #puts "Lendo arquivo"
  properties = {}
  File.open(properties_filename, 'r') do |properties_file|
    properties_file.read.each_line do |line|
      
      line.strip!
      if (line[0] != ?# and line[0] != ?=)
        i = line.index('=')
        if (i)
          properties[line[0..i - 1].strip] = line[i + 1..-1].strip
        else
          properties[line] = ''
        end
      end
    end
  end
  properties
end

def carregar_prop
  load_properties "/opt/suporte.properties"
end

def load_demo
  load_properties "c:\\demo.properties"
end

end
