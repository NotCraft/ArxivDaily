import "scripts/config" as cfg;

let title = params[0];
let authors = params[1];

title.trim();
let title_array = title.split_rev(" (", 2);

let title_rg = Regex(`(?P<key>(${cfg::title_rg}))`);
let authors_rg = Regex(`(?P<key>(${cfg::authors_rg}))`);

let title = title_rg.replace_all(title_array[1],"<span class=\"highlight_title\">$key</span>");

let title = if "UPDATED" in title_array[0] {
    "♻ " + title
} else {
    title
};

let authors = authors.map(|v|authors_rg.is_match(v));
let title = if true in authors {
    "★ " + title
} else {
    "☆ " + title
};

title