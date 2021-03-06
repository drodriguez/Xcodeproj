require 'rubygems'
require 'bacon'
require 'mocha-on-bacon'
require 'pathname'

ROOT = Pathname.new(File.expand_path('../../', __FILE__))

$:.unshift((ROOT + 'ext').to_s)
$:.unshift((ROOT + 'lib').to_s)
require 'xcodeproj'

$:.unshift((ROOT + 'spec').to_s)
require 'spec_helper/bacon'
require 'spec_helper/project'
require 'spec_helper/temporary_directory'


def fixture_path(path)
  File.join(File.dirname(__FILE__), "fixtures", path)
end
