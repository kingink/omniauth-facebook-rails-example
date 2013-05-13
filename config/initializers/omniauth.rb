Rails.application.config.middleware.use OmniAuth::Builder do
    # provider :facebook, ENV[YOUR_APP_ID], ENV[YOUR_APP_SECRET]
    # OS X mouantain lion work around 
    provider :facebook, ENV[YOUR_APP_ID], ENV[YOUR_APP_SECRET], {:scope => 'email,user_birthday', :client_options => {:ssl => {:ca_file => '/usr/local/Cellar/curl-ca-bundle/1.87/share/ca-bundle.crt'}}}
end
