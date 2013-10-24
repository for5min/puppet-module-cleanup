require 'spec_helper'

describe 'cleanup' do

  let(:hiera_data) {{
    'cleanup::target::tmp' => {
    'age'     => '21d',
    'path'    => '/tmp',
    'matches' => '[ "*.xml", "*.txt" ]',
    'recurse' => 'true',
   }
  }}

it { should include_class('cleanup') }

end

