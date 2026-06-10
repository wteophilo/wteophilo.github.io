# Monkeypatch Object#tainted? for Ruby 3.2+ compatibility with Liquid 4.0.3
class Object
  unless respond_to?(:tainted?)
    def tainted?
      false
    end
  end
end
