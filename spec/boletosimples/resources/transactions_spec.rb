# frozen_string_literal: true

require 'spec_helper'

# Before running this spec again, you need to set environment variable BOLETOSIMPLES_ACCESS_TOKEN
RSpec.describe BoletoSimples::Transaction do
  before do
    BoletoSimples.configure do |c|
      c.application_id = nil
      c.application_secret = nil
    end
  end
  describe 'all', vcr: { cassette_name: 'resources/transaction/all' } do
    subject { BoletoSimples::Transaction.all }
    it { expect(subject.first).to be_a_kind_of(BoletoSimples::Transaction) }
  end
end
