const tags_container = document.querySelector(".tags");
const contents_container = document.querySelector("#contents");

tags = []
uniq_tags = []
selected_tags = []
contents = Array.from(contents_container.children);

$(document).ready(function() {
    jQuery.ajax({
        type:"GET",
        url:"/promotions.json",
        dataType:"JSON", // 옵션이므로 JSON으로 받을게 아니면 안써도 됨
        success : function(data) {
            for (var i = 0; i < JSON.stringify(data.length); i++) {
                tags = tags.concat(data[i].univ_hashtag.split(' '));
            }
            console.log(tags);
            
            uniq_tags = tags.reduce(function(a, b) {
                if (a.indexOf(b) < 0) a.push(b);
                return a;
            }, []);
            
            tags_str = "";
            uniq_tags.forEach(t => {
                tags_str += '<span class="tag">'+ t +'</span>';
            });
            tags_container.insertAdjacentHTML('afterbegin', tags_str);
            
            tags_container.addEventListener('click', e => {
                t = e.target;
            
            if (t.classList.contains("tag")) {
                if (t.classList.contains("select")) { 
                    i = selected_tags.indexOf(t.textContent);
                    if (i > -1) {
                        selected_tags.splice(i, 1);
                    }
                } else { selected_tags.push(t.textContent); }
                t.classList.toggle("select");
            
                if (selected_tags.length) {
                    contents.forEach(c => {
                        c.classList.add("select");
                        c_tags = c.getAttribute("tags").split(' ');
            
                        selected_tags.forEach(s_tag => {
                            if (!c_tags.includes(s_tag)) {
                                c.classList.remove("select");
                            } 
                        });
                    })
                } else {
                    contents.forEach(c => {
                        c.classList.remove("select");
                    })
                }
            }
        });
        tags_container.children[0].click();
        },
        error : function(xhr, status, error) {
            alert("에러발생");
        }
    });
});