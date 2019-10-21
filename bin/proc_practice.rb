# abandoned attempt because it depended on this gem which is too database dependent
# I don't want to use a database at all at this point
# http://tobi.github.com/delayed_job
class ProcPractice
  def self.run
    @@times = 0
    handle_asynchronously :deactivate, :run_at => Proc.new { 2.seconds.from_now }
  end

  def deactivate
    puts 'running'
    @@times += 1
    if @@times < 3
      puts "again #{@@times}"
      handle_asynchronously :deactivate, :run_at => Proc.new { 2.seconds.from_now }
    end
   end
end