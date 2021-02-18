class TestimonialsController < ApplicationController
    def index
        testimonials = Testimonial.all
        render json: testimonials
    end
end