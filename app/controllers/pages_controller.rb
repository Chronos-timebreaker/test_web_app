class PagesController < ApplicationController
    def home
        render html: 'Hello World!  Hola Mundo!'
    end
end