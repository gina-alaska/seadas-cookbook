
#basicly, needs to do this:
# curl -s http://oceandata.sci.gsfc.nasa.gov/ocssw/install_ocssw.py | python /dev/stdin  --avhrr --aqua --terra --osmi --direct-broadcast -i /opt/seadas
default['seadas']['components'].each do |name, bits|
	system("curl -s #{bits["url"]} | #{driver} /dev/stdin #{bits["args"].join(" ")} -i #{default['seadas']['path']}")
end
