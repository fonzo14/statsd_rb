module Statsd
  class Runner

    def self.default_config
      {
        :host            => "0.0.0.0",
        :port            => 8125,
        :debug           => false,
        :purge_interval  => 60,
        :threshold_purge => 30*60,
        :threshold_pct   => 90,
      }
    end

    def self.run!(opts = {})
      config = self.default_config.merge(opts)

      EM::run do
        server = EM::open_datagram_socket(config[:host], config[:port], Server, config)

        EM::add_periodic_timer(config[:purge_interval]) do
          server.purge!
        end

        puts "Now accepting connections on address #{config[:host]}, port #{config[:port]}..."          
      end
    end

  end
end
