namespace :flash_player do
  
  PLUGIN_ROOT = File.dirname(__FILE__) + '/../'
  
  desc 'Installs required swf & javascript files to the public/javascripts directory.'
  task :install do
    FileUtils.cp_r Dir[PLUGIN_ROOT + '/assets/swf'], RAILS_ROOT + '/public'
    FileUtils.cp Dir[PLUGIN_ROOT + '/assets/javascripts/*.js'], RAILS_ROOT + '/public/javascripts'
  end

  desc 'Removes the swf & javascripts for the plugin.'
  task :remove do
    FileUtils.rm %{ufo.js}.collect { |f| RAILS_ROOT + "/public/javascripts/" + f  }
    FileUtils.rmtree %{swf}.collect { |f| RAILS_ROOT + "/public/" + f } #trees to rm
  end
  
  desc 'Updates application with the flash movies (SWFs) and javascripts for the plugin.'
  task :update_assets => [:download_assets, :install] do
  end     

  desc 'Downloads latest flash movies (SWFs) from jeroenwijering.com'
  task :download_assets do
    tmp_dir = "#{PLUGIN_ROOT}/tmp"
    FileUtils.mkdir tmp_dir
    begin
      FileUtils.cd tmp_dir do
	{ 
	  :flv_player    =>  'flvplayer.swf',  
	  :mp3_player    =>  'mp3player.swf',
	  :image_rotator =>  'imagerotator.swf',
	  :media_player  =>  'mediaplayer.swf' 
	}.each do |player_type, file|
	  `wget http://www.jeroenwijering.com/upload/jw_#{player_type}.zip`
	  `unzip jw_#{player_type}.zip`
	  FileUtils.cp "jw_#{player_type}/#{file}", '../assets/swf/'
	  puts "------ Successfully downloaded latest #{player_type} -----"
	end
      end
    ensure
      FileUtils.rm_rf tmp_dir
    end
  end

end
