require 'spec_helper'

describe 'cleanup' do

  let(:hiera_data) {{
    'target' => 'tmp'
  }}
  it { should include_class('cleanup').with_target('tmp')
  }
end

