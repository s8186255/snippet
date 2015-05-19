def positions
  @positions = Position.where(:time => {"$gt" => "#{15.seconds.ago}"})
  target = Target.first.point.values
  sysconf = SysConf.first.value
  @arrs = []
  @positions.each { |position|
    @arrs << [position.lat, position.lng] if (SysConf.distance(target, [position.lat, position.lng]).to_i < sysconf.to_i)
    break if @arrs.size > 100
  }

  render json: @arrs
end
