Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2,"754432322474-7gt94fqf3oqk7s4he3bjur5mm57hdv6r.apps.googleusercontent.com" ,"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",
          { 
            redirect_uri: 'http://localhost:3000/auth/google_oauth2/callback'
          }
end