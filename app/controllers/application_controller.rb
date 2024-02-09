class ApplicationController < ActionController::Base
    def home
        render html: 'Hello World!Hola Mundo!'
    end

end
