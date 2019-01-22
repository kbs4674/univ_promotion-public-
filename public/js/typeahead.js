var source = new Bloodhound({
    datumTokenizer: Bloodhound.tokenizers.obj.whitespace('id', 'univ_name_kor', 'univ_name_eng', 'univ_nickname', 'content'),
    queryTokenizer: Bloodhound.tokenizers.whitespace,
    /* local: links */
    prefetch: {
      url: '/univs.json',
      ttl: 0
    }    
});
source.initialize();

$('#scrollable-dropdown-menu .typeahead').typeahead(null, {
    displayKey: 'univ_name_kor',
    limit: 5,
    source: source.ttAdapter(),
    templates: {
        empty: [
          '<div class="empty-message">',
          '해당 혜택은 없습니다.',
          '</div>'
        ].join('\n'),
        suggestion: Handlebars.compile
        (
            '<li class="search-univ">' +
            '<a href="/univs/{{id}}" style="text-decoration: none;">' +
            '<div>' +
            '<div class="etc"><span style="font-size: 30px;">{{univ_name_kor}}</span><span style="margin-left: 5px; font-size: 15px;">{{univ_name_eng}}</span></div>' +
            '<div class="etc">{{content}}</div>' +
            '</div>' +
            '</a>' +
            '<hr/>' +
            '</li>'
        )
    }
});