default['seadas']['user'] = 'processing'
default['seadas']['path'] = '/opt/seadas'

default['seadas']['components'] = {
	"seadas"=>{ 
		"args" => ["--avhrr","--aqua","--terra","--osmi","--direct-broadcast"], 
		"url" => "http://oceandata.sci.gsfc.nasa.gov/ocssw/install_ocssw.py",
		"driver" => "python"
	}
}
