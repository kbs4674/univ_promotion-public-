module PromotionsHelper
    def render_with_hashtags(univ_hashtag)
        univ_hashtag.gsub(/[#＃][a-z|A-Z|가-힣|0-9|樂|\w]+/){|word| link_to word, "/promotions/hashtag/#{word.delete("#")}", style: "font-family: 'Dovemayo-Bold'"}.html_safe
    end
end