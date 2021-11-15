import "scripts/config" as cfg;
let authors = params[0];

// <a href="http://arxiv.org/find/cs/xxx">Qing Lyu</a>
// <a.*?href="(.*?)".*?>(.*?)</a>
let authors = authors.map(|v|v.html_unescape());

let authors_rg = Regex(`(?P<key>(${cfg::authors_rg}))`);
let authors = authors.map(|v|authors_rg.replace_all(v,"\\textcolor{blue}{$key}"));

let authors_rg = Regex("<a.*?href=\"(?P<url>(.*?))\".*?>(?P<author>([\\s\\S]*?))</a>");
let authors = authors.map(|v|authors_rg.replace_all(v,"\\href{$url}{$author}"));

let start = authors.shift();
authors.reduce(|sum, v| sum + ", " + v, start)
