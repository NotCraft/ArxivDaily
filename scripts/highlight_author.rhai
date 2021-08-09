import "scripts/config" as cfg;
let authors = params[0];

let authors_rg = Regex(`(?P<key>(${cfg::authors_rg}))`);
authors.map(|v|authors_rg.replace_all(v,"<span class=\"highlight_author\">$key</span>"))
