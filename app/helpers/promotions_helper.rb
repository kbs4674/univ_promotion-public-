module PromotionsHelper
    def render_with_hashtags(univ_hashtag)
        univ_hashtag.gsub(/[#＃][a-z|A-Z|가-힣|0-9|\w]+/){|word| link_to word, "/promotions/hashtag/#{word.delete("#")}"}.html_safe
    end
end