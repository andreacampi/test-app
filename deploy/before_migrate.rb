log " *** BEFORE MIGRATE *** "

#in order for migrations to run your entire environment is loaded
#so: if you have any symlinks that need to be created in order for the application to start properly,
#put them in before_migrate.rb instead of before_symlink.rb, because before_symlink.rb runs after the migration!

log "#{node.chef_environment}"
log "#{@new_resource.environment_name}"
log "#{@new_resource.shared_path}"
log "#{@new_resource.release_path}"
