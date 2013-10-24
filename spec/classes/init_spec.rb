require 'spec_helper'

describe 'cleanup' do

  let(:hiera_data) {{
    'cleanup::target' => 'tmp'
  }}
  it { should contain_class('cleanup').create_resource('cleanup::target')
  }
end

