# frozen_string_literal: true

module Aspisec
  class Config
    module Configs
      FILEZILLA = {
        'enabled' => true,
        'location' => {
          'base' => '$XDG_CONFIG_HOME/filezilla', # ~/.config/filezilla
          'connexions' => {
            'path' => '<base>/sitemanager.xml',
            'description' => 'Saved connexions settings including passwords.'
          },
          'config' => {
            'enabled' => false,
            'path' => '<base>/filezilla.xml',
            'description' => 'Global configuration, contains site names.'
          },
          'queue' => {
            'enabled' => false,
            'path' => '<base>/queue.sqlite3',
            'description' => 'Queue of files not downloaded/uploaded yet.'
          }
        }
      }.freeze
    end
  end
end
