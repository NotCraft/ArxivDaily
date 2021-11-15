import "scripts/config" as cfg;

let title = params[0];
let authors = params[1];

title.trim();
let title_array = title.split_rev(" (", 2);
let title_raw = title_array[1];
let title_escaped = title_raw.latex_escape();

let title_rg = Regex(`(?P<key>(${cfg::title_rg}))`);
let authors_rg = Regex(`(?P<key>(${cfg::authors_rg}))`);

let title = title_rg.replace_all(title_escaped, "\\textcolor{red}{$key}");

let title = if "UPDATED" in title_array[0] {
    "\\faIcon{recycle} " + title
} else {
    title
};

let authors = authors.map(|v|authors_rg.is_match(v));
let title = if true in authors {
    "\\textcolor{red}{\\faIcon[regular]{heart}} " + title
} else {
    title
};

title