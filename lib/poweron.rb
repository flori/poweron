#!/usr/bin/env ruby

require 'poweron/version'
require 'socket'
require 'ipaddr'

module Poweron
  module_function

  def poweron(interface, opts = {})
    mac =
      if interface =~ /\A[0-9a-f]{2}(:[0-9a-f]{2}){5}\Z/i
        interface
      elsif File.readable?('/etc/ethers')
        File.open('/etc/ethers') do |ethers|
          ethers.find { |line| line =~ /^(\S+)\s+#{interface}/ and break $1 }
        end
      end
    mac or raise ArgumentError, "interface #{interface.inspect} could not be resolved"
    mac = mac.split(/:/).map { |x| x.to_i(16) }
    mac.size == 6 and mac.all? { |x| (0..0xff) === x } or
      raise ArgumentError, "mac address has to be 6 bytes long"
    port = opts[:port] || 9
    (0..0xffff) === port or raise  ArgumentError, "port in invalid range"
    ip = opts[:ip] || '255.255.255.255'
    ip = IPAddr === ip ? ip : IPAddr.new(ip)
    data = [ 0xff ] * 6 + mac * 16
    udp = UDPSocket.new
    udp.setsockopt Socket::SOL_SOCKET, Socket::SO_BROADCAST, 1
    udp.connect ip.to_s, port
    udp.send data.pack('c*'), 0
  end
end
