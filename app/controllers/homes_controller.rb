require "browser"

class HomesController < ApplicationController
  impressionist actions: [:index], unique: [:ip_address]
  
  def index
    # 방문자수 체크
    # 반드시 rake db:seed 할 것.
    @visit_count = Home.find(1)
    abc = @visit_count.visit_count += 1
    @visit_count.update_attribute "visit_count", abc
    
    @visit_count_total = Impression.all.where(controller_name: "homes").count
      
    render do |x|
      x.html
      x.js
    end
  end
end
