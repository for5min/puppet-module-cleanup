require 'spec_helper'

describ 'cleanup' do

  let(:hiera_data) {{
    'cleanup::target::tmp' => {
    'age'     => '21d',
    'path'    => '/tmp',
    'matches' => '[ "*.xml", "*.txt" ]',
    'recurse' => 'true',
   }
  }}

it { should contain_class('cleanup') }

end

