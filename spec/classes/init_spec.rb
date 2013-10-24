require 'spec_helper'

describe 'cleanup' do

  let(:hiera_data) {{
    'cleanup::target' => 'tmp'
  }}
  it { should include_class('cleanup').with('cleanup::target')
  }
end

