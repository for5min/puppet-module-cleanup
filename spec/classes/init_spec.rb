require 'spec_helper'

describe 'cleanup' do

  let(:hiera_data) {{
    'target' => { 'tmp' => {
    'age'     => '0s',
    'path'    => '/tmp',
    'matches' => '[ "*.xml", "*.txt" ]',
    'recurse' => 'true',
    }
   }
  }}
  it { should contain_class('cleanup') }
end

