require "spec_helper"

RSpec.describe Numpy do
  it "has a version number" do
    expect(Numpy::VERSION).not_to be nil
  end

  specify do
    expect(Numpy.asarray([1])).to be_a(Numpy::NDArray)
  end

  specify 'scalar types conversion' do
    expect(Numpy.asarray([1])[0]).to be_a(Integer)
    expect(Numpy.asarray([1.3])[0]).to be_a(Float)
    expect(Numpy.asarray([1.3 + 1i])[0]).to be_a(Complex)
    expect(Numpy.asarray([true])[0]).to be_a(TrueClass)
    expect(Numpy.asarray([false])[0]).to be_a(FalseClass)
  end

  describe '.asscalar' do
    specify do
      expect(Numpy.asscalar(Numpy.asarray([1]))).to be_a(Integer)
      expect(Numpy.asscalar(Numpy.asarray([1.3]))).to be_a(Float)
      expect(Numpy.asscalar(Numpy.asarray([1.3 + 1i]))).to be_a(Complex)
      expect(Numpy.asscalar(Numpy.asarray([true]))).to be_a(TrueClass)
    end
  end
end
