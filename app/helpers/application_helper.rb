module ApplicationHelper
  def sensor_links
    links = { 
              "LCD Control" => "/pages/lcd",
              "Integrity (doors & windows)" => "/pages/integrity",
              "Motion" => "/pages/motion",
              "Thermal" => "/pages/thermal"
            }
  end
  
  def config_links
    links = { "Configure RPi" => "/pages/configuration",
              "Backups & .img files" => "/pages/backups_and_images",
            }
  end
  
  def equipment_links
    links = {"Electronics Lab Essentials & Suggestions" => "/pages/electronics_lab"}
  end
  
  def lab_links
    links = {
      "Camera and Vid Streaming" => "/pages/camera",
      "Check Pin States" => "/pages/check_pin_state",
      "Infra-Red Signal Detection" => "/pages/ir",
      "Chicken Coop Door" => "/pages/coop",
      "Motors" => "/pages/motors",
      "Screen" => "/pages/screen",
      "Audio Playback" => "/pages/audio_playback",
      "Audio Signal Sensing" => "/pages/audio_signal_sensing",
      "Logic Analyzer" => "/pages/logic_analyzer",
      "Avr ethernet Satalites" => "/pages/avr"
    }
  end
  
  def activitie_links
    links = {
      "Semi-Virtual Laser Dungeon" => "/pages/laser_dungeon"
      }
  end
  
  def mark_active?(k,v)
    mark_active_conditions(k,v) ? "active" : ""
  end
  
  def mark_active_conditions(k,v)
    return true if "/#{params[:controller]}/#{params[:action]}" == v
    return true if "/#{params[:controller]}" == v and params[:action] == "index"
    return false
  end
  
  def hostname
    if ENV['HEROKU_DEPLOYMENT'].nil?
      return `hostname`.strip
    else
      return "heroku"
    end
  end
end
