let titles_area = ["Task-oriented", "Goal-oriented", "Conversation", "Dialogue", "Dialog", "Cross-Modal", "Multi-Modal", "MultiModal", "Vision-and-Language", "Vision and Language", "Vision-Language", "V&L", "Spoken Language Understanding", "SLU", "Language and Vision", "Visual-Linguistic"];
let titles_model = ["BERT", "GPT", "Transformer"];
let titles_method = ["Contrastive Learning", "Contrastive", "Pre-train", "Pretrain", "Prompt", "Self-Supervised", "Distillation"];
let titles = titles_area + titles_model + titles_method;
let authors_array = ["Kaiming He", "Graham Neubig", "Tie-Yan Liu", "Xipeng Qiu", "Yue Zhang", "Zhiyuan Liu", "Christopher D. Manning", "Christopher D Manning", "Christopher Manning", "Noah A. Smith", "Jason Eisner", "Percy Liang", "Bill Yuchen Lin", "Li Dong", "Pengfei Liu", "Peter Anderson", "Samuel R. Bowman", "Li Fei-Fei", "Kang Liu", "Tang Jie", "Michael I. Jordan", "Steven C.H. Hoi", "Hanwang Zhang", "Caiming Xiong", "Dan Roth", "Yankai Lin", "Mikel Artetxe", "Jian Tang", "Duyu Tang", "Christopher D Manning", "Jason Weston", "William Fedus", "Jason C.S. Wu", "Bing Liu", "Jiawei Han", "Kyunghyun Cho", "Yonglong Tian", "Richard Socher", "Andrew Ng", "Jiatao Gu", "Phillip Isola", "Zhongyu Wei", "Zhou Yu", "Juergen Schmidhuber", "Yejin Choi", "Yoshua Bengio", "Sebastian Ruder", "Zhilin Yang", "Tao Gui", "Zachary C. Lipton", "Jure Leskovec", "Wayne Xin Zhao", "Rico Sennrich", "Jeffrey Pennington", "Wanxiang Che", "Tong Xiao", "Noam Shazeer", "Barret Zoph", "Chris Dyer", "Furu Wei", "Jiang Guo", "Danqi Chen", "Jiajun Wu", "Chris Pal", "Bolei Zhou", "Yoav Goldberg", "Yuchen Zhang", "Quoc V. Le", "Jiasen Lu", "Jing Jiang", "Dzmitry Bahdanau", "Dan Jurafsky", "Yoon Kim", "Wenhu Chen", "Justin Johnson", "Andrej Karpathy", "Ming Zhou", "Ian Goodfellow", "Jianfeng Gao", "Tomas Mikolov", "Geoffrey Hinton", "Yann LeCun", "Hai Zhao", "Xu Sun", "Jiwei Li", "Haifeng Wang", "Luke Zettlemoyer", "ChengXiang Zhai", "Zengfeng Huang", "Tianyang Lin", "Yiheng Shu", "Libo Qin", "Rami Al-Rfou", "Xinlei Chen", "Deng Cai", "Jingjing Xu", "Zhe Gan", "Dhruv Batra", "Devi Parikh", "Zhiting Hu", "Eduard Hovy", "Eric Xing", "Xuezhe Ma", "Hao Tan", "Peng Cui", "Qun Liu"];

let start = titles.shift();
let title_rg = titles.reduce(|sum, v| sum + "|" + v, start);

let start = authors_array.shift();
let authors_rg = authors_array.reduce(|sum, v| sum + "|" + v, start);



export title_rg;
export authors_rg;