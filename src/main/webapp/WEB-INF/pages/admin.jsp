<%--
  Created by IntelliJ IDEA.
  User: this
  Date: 2021/12/17
  Time: 19:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
    <head>
        <title>管理员</title>
        <link rel="stylesheet" type="text/css" href="../../static/css/bootstrap.min.css">
    </head>
    <style>
        button > a {
            color: white;
            text-decoration: none;
        }

        a:hover {
            color: black;
            text-decoration: none;
        }

        #head {
            background-color: #34a74e;
            color: white;
        }

        .foot {
            background-color: #1b1e21;
            color: white;
        }

        li {
            list-style: none;
        }

    </style>
    <body>
        <%--头部--%>
        <div id="head" class="text-center card-title">
            <h3>this书城</h3>
        </div>

        <%--管理员功能区--%>
        <div class="card-body">

            <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <div class="col-lg-2">
                        <ul class="navbar-nav mr-auto">
                            <li class="nav-item active">
                                <a class="nav-link" href="#">你好!管理员<span class="sr-only"></span></a>
                            </li>
                        </ul>
                    </div>
                    <%--                    --%>
                    <div class="col-lg-2">
                        <!-- Button trigger modal -->
                        <button type="button" class="btn" data-toggle="modal"
                                data-target="#exampleModalLong">
                            西游记简介
                        </button>

                        <!-- Modal -->
                        <div class="modal fade" id="exampleModalLong" tabindex="-1" role="dialog"
                             aria-labelledby="exampleModalLongTitle" aria-hidden="true">
                            <div class="modal-dialog" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="exampleModalLongTitle">西游记简介</h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <div class="modal-body">
                                        东胜神州傲来国海边有一花果山，山顶一石，秉受日月精华，产下一个石猴。石猴在花果山做了众猴之王，为求长生，出海求仙，在西牛贺州拜菩提祖师为师。祖师为其取法名孙悟空，并授与七十二般变化及翻筋斗云之法。孙悟空回到花果山，占山为王，号为美猴王。苦于无兵刃，遂去东海龙宫求取，龙王及兄弟送他一支如意金箍棒及一身披挂。孙悟空又去幽冥界把自己的名字从生死簿上勾掉。龙王，地藏王上天庭告状，太白金星建议招安孙悟空，玉帝准奏。
                                        玉帝封孙悟空做“弼马温”，着他看管马匹。孙悟空后得知此官职卑微，大怒，打出南天门，回花果山，自封为“齐天大圣”。
                                        托塔天王李靖及哪吒三太子奉旨兴师捉拿孙悟空，被孙悟空打败，回天庭复旨。太白金星奏请玉帝降旨封孙悟空为齐天大圣，但不给他事务与俸禄。玉帝准奏。孙悟空应太白金星之请，再入天宫。玉帝封其为齐天大圣，并赐齐天大圣府。孙悟空在天上无事，每日交朋结义，不论尊卑。玉帝怕他闲中生事，让其看管蟠桃园。孙悟空偷吃蟠桃，又搅了王母娘娘的蟠桃盛会，偷吃了太上老君的仙丹，惧祸，回到花果山。
                                        玉帝派天神捉拿孙悟空，双方相持不下。观音菩萨举荐二郎神制伏孙悟空，孙悟空被二郎神擒获。玉帝令天神将其处死，孙悟空却毫发无损。太上老君将其关入八卦炉，孙悟空不但不死，还炼就一双火眼金睛。如来佛祖应玉帝之请，降伏孙悟空，将其压在五行山下，让他饥食铁丸，渴饮铜汁。
                                        如来因南赡部州之人贪淫乐祸，多杀多争，令观音菩萨去东土觅一人，来西天取经，以普渡众生。
                                        唐太宗开科取士，青年陈光蕊高中状元，又娶相府殷小姐为妻。之后，官拜江州州主。陈光蕊携妻赴任，路上，被贼航刘洪谋害，妻子被占。殷氏产下一子，抛人江中，被金山寺寺僧搭救。此子十八年后受戒，法名玄奘。玄奘终与母亲相见，又求见外祖父，报了血仇。
                                        泾河龙王触犯天条，罪当斩首，求唐太宗搭救。太宗允诺，但未能救起。龙王至阴间，告太宗允诺而食言，太宗魂被迫人阴间对质。还生后，太宗修建“水陆大会”，超度阴间所见孤魂。请玄奘主持法事，开经讲法。这时，南海观音亦至长安，寻找取经人，指化玄奘，令其去西天取经。唐太宗认玄奘为御弟，赐号三藏，送出长安。
                                        唐僧西行，出离大唐边界，便遇魔王寅将军，被太白金星搭救。至五行山下，救出孙悟空，赐号孙行者。路上，孙悟空打死六个强盗，不堪唐僧数落，一怒之下去了龙宫。唐僧接受观音赠送的用来钳制孙悟空的两件东西——嵌金花帽与紧箍咒。悟空听从龙王劝告，回到唐僧身边，无意间戴上花帽，却再也摘取不下。唐僧念咒，悟空头痛。自此，悟空受制于唐僧。
                                        二人至鹰愁涧，收了小白龙，小白龙化作白马，供唐僧骑乘。在观音院，悟空卖弄唐僧的锦褊袈裟，金池长老心生贪念，欲火烧唐僧师徒，却被悟空弄法反烧了禅院。袈裟被黑风怪窃走。孙悟空求助观音，设计让观音化作黑风怪的妖友，自己化作仙丹，诱黑风怪吞下，黑风怪降伏。
                                        师徒继续西行，至高老庄，得知庄主女儿被一妖怪强占，悟空擒拿此妖，追至云栈洞。知妖怪原是天庭的天蓬元帅，因调戏嫦娥，被贬下界，错投猪胎，故形貌像猪。经观音收伏，赐名猪悟能，在此等候取经人。孙悟空引他拜见唐僧，唐僧收其为徒，赐号八戒。
                                        过浮屠山，乌巢禅师传授唐僧《多心经》。
                                        过黄风岭遇黄风怪，悟空请来须弥山灵吉菩萨，收伏此怪。
                                        在流沙河，唐僧收被观音点化的沙悟净为三弟子，赐号沙和尚。师徒四人跋山涉水，往西天取经。
                                        观音欲试四人道心，与黎山老母等化成美女，招四人为婿。唐僧等三人不为所动，只有八戒迷恋女色，被菩萨吊在树上。
                                        到万寿山五庄观，悟空等偷吃人参果，并推倒仙树，被拿获。观音应悟空之请，用甘露救活仙树。
                                        白骨精要吃唐僧，悟空三打白骨精。唐僧不识妖怪，听八戒谗言，错逐悟空，自己又被黄袍怪拿住，并被其变为老虎。沙僧亦被捉。八戒经白龙马劝说，到花果山用激将法请悟空救师傅。悟空救出师傅，师徒言归于好。
                                        平顶山莲花洞金角大王、银角大王捉住唐僧欲食其肉，悟空与之斗智斗勇，骗来妖精的五件宝贝，降伏二妖。
                                        狮精把乌鸡国国王推入井中淹死，自己化为国王。真国王鬼魂求唐僧搭救。悟空从太上老君处讨来金丹，救活国王。
                                        牛魔王之子红孩儿据守火云洞，欲吃唐僧。悟空惧其三昧真火，请观音帮忙。观音降伏红孩儿，收其为善财童子。
                                        孙悟空又请西海龙王太子帮助擒获黑水河鼍龙。在车迟国，悟空与三位妖魔国师——虎力鹿力、羊力大仙斗法，妖魔战败，现了原形。
                                        经通天河，遇观音座前莲花池内成精为妖的金鱼，金鱼作法把唐僧摄入水府。观音赶来，收走金鱼。
                                        太上老君的坐骑青牛偷了老君的金刚镯下界为妖，在金兜洞把唐僧捉住。悟空请来天神助战，不能取胜，找到太上老君处，责其收伏青牛。
                                        唐僧、八戒饮子母河水受孕。悟空取来落胎泉水，解了二人胎气。西梁女国王欲强招唐僧为夫婿，悟空等智赚关文，出关西去。
                                        琵琶洞蝎子精摄走唐僧，悟空请来昴日星官，星官化作大公鸡，使妖怪现原形而死。
                                        六耳猕猴变成悟空模样，又令小妖们化成其他三人模样，欲上西天骗取真经。真假悟空大战，众多神佛不能分辨，直到西天雷音寺，如来说出猕猴本相，悟空打死六耳猕猴。
                                        为过火焰山，悟空向铁扇公主借芭蕉扇灭火。铁扇公主恨悟空收伏其子红孩儿，不肯借。悟空与铁扇公主、牛魔王斗智斗勇，借天兵神力，降伏二怪，扑灭大火。
                                        万圣老龙和九头虫驸马盗走祭赛国镇国之宝舍利子。悟空斗败二人，夺回佛宝。
                                        荆棘岭，唐僧被树精、木怪迷惑联句对诗。
                                        弥勒佛前黄眉童子下界作怪，假幻雷音寺，唐僧上当被擒。弥勒佛收伏为怪的童子。
                                        过小西天，悟空打死蛇精。八戒用嘴拱开稀柿衢。
                                        悟空为朱紫国国王治病，败獬豸洞妖怪金毛统，救回王后。
                                        盘丝洞蜘蛛精缠陷唐僧，悟空打死蜘蛛精。黄花观蜈蚣精又药翻唐僧，紫云山毗蓝婆应悟空之请，消除此怪。
                                        经狮驼山，又有青狮、白象、大鹏作怪，众菩萨罗汉帮助降伏三怪。
                                        比丘国王被寿星坐骑白鹿所化的国丈迷惑，欲用一千一百一十一个小儿心肝做药引，悟空解救婴儿，打退妖怪，寿星赶来收走白鹿怪。
                                        陷空山无底洞老鼠精虏唐僧，欲与之成亲。李天王押走老鼠精。
                                        灭法国王发愿杀一万僧人，悟空施法剃去国王、王后等人头发，国王回心转意，改灭法国为钦法国。
                                        隐雾山连环洞豹子精欲吃唐僧肉，被悟空用瞌睡虫睡倒，八戒将其打死。
                                        凤仙郡大旱，郡侯张榜求雨。悟空劝郡侯向善，天降甘雨。
                                        在玉华州，黄狮精盗走悟空等三人兵器。悟空等夺回兵器，黄狮精投奔九灵元圣，太乙救苦天尊收伏九灵元圣，此怪为天尊坐骑九头狮子所化。
                                        金平府，唐僧被玄英洞妖怪摄去，悟空请天上四位星宿帮忙捉怪，把妖怪斩首示众。
                                        月宫玉兔化为天竺国公主抛绣球给唐僧，欲招之为婿。悟空会合太白星君擒伏玉兔，救回真公主。
                                        镇台府地灵县寇员外家遭劫，员外丧生。唐僧师徒被当作强盗收监，悟空入地府招回寇员外魂，真相大白。
                                        师徒历尽磨难，终至灵山，拜见佛祖如来，因不肯贿赂阿傩、伽叶二尊者，只取得无字经。燃灯古佛指使白雄尊者夺落经卷。四人又返回雷音寺，求有字真经。四人在回东土路上，经通天河，被老鼋连人带经翻人河中，经卷遭水，残缺不全。
                                        佛经送回长安，四人真身重返灵山听封：三奘被封旃檀功德佛；悟空为斗战胜佛；八戒为净坛使者；沙僧为金身罗汉；白龙马为八部天龙，各归本位。

                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary" data-dismiss="modal">关闭
                                        </button>
                                        <button type="button" class="btn btn-success">保存修改</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <%--                    --%>
                    <div class="dropdown show col-lg-4">
                        <a class="btn btn-secondary dropdown-toggle btn-success" href="#" role="button"
                           id="dropdownMenuLink"
                           data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            菜单
                        </a>
                        <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                            <a class="dropdown-item" href="#">茄子</a>
                            <a class="dropdown-item" href="#">辣椒</a>
                            <a class="dropdown-item" href="#">土豆</a>
                        </div>
                    </div>

                    <form action="${pageContext.request.contextPath}/admin/toAddPage" class="form-inline my-2 my-lg-0">
                        <button class="btn btn-outline-success my-2 my-sm-0" type="submit">添加书籍</button>
                    </form>
                    <form action="${pageContext.request.contextPath}/admin/adminToSearch"
                          class="form-inline my-2 my-lg-0">
                        <input class="form-control mr-sm-2" name="name" type="search" placeholder="请输入要查找的书名"
                               aria-label="Search" required>
                        <button class="btn btn-outline-success my-2 my-sm-0" type="submit">查找</button>
                    </form>
                </div>
            </nav>
            <div>
                <img class="img-fluid" src="../../static/images/shuqi.png" alt="#">
            </div>
            <div class="container">
                <hr>
                <%--图书馆数据展示区--%>
                <div class="row">
                    <div class="col-lg-3 text-primary text-center">
                        <img src="../../static/images/zuqiu.png" alt="#">
                        <br>
                        <div class="text-dark">
                            一个传奇，从小小的高中联赛开始起步。间接的带动了青少年足球的风靡，推动了整个中国足球的发展。当若干年后，孟秋回首往事的时候，他深深的感觉到，十六岁那年，跟随父母回到中国，实在是他人生中最大的一个转折点。传奇之路，从现在开始。
                        </div>
                        <br>
                        <div class="row">
                            <div class="col-lg-6">
                                <button class="btn-success">
                                    章节目录
                                </button>
                            </div>
                            <div class="col-lg-6">
                                <button class="btn-success">
                                    立即阅读
                                </button>
                            </div>
                        </div>
                        <br>
                        <br>
                    </div>
                    <div class="row col-lg-6 text-dark">

                        <div class="col-lg-6">
                            <br><br><br>
                            <ul>
                                <li>语文书</li>
                                <li>数学书</li>
                                <li>英语书</li>
                                <li>物理书</li>
                            </ul>
                        </div>
                        <div class="col-lg-6">
                            <br><br><br>
                            <ul>
                                <li>语文书</li>
                                <li>数学书</li>
                                <li>英语书</li>
                                <li>物理书</li>
                            </ul>
                        </div>
                        <div class="w-100"></div>
                        <div id="carouselExampleFade" class="carousel slide carousel-fade" data-ride="carousel">
                            <div class="carousel-inner">
                                <div class="carousel-item active">
                                    <img src="../../static/images/wallpaper.png" class="d-block w-100" alt="...">
                                </div>
                                <div class="carousel-item">
                                    <img src="../../static/images/coding.png" class="d-block w-100" alt="...">
                                </div>
                                <div class="carousel-item">
                                    <img src="../../static/images/life.jpg" class="d-block w-100" alt="...">
                                </div>
                            </div>
                            <a class="carousel-control-prev" href="#carouselExampleFade" role="button"
                               data-slide="prev">
                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                <span class="sr-only">上一张</span>
                            </a>
                            <a class="carousel-control-next" href="#carouselExampleFade" role="button"
                               data-slide="next">
                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                <span class="sr-only">下一张</span>
                            </a>
                        </div>
                    </div>
                    <div class="col-lg-3 text-info text-center">
                        <img src="../../static/images/gongdeyin.png" alt="#">
                        <br>
                        <br>
                        <div class="text-dark">
                            千年之后，曾经的女魔头背上功德印，走上引人向善攒功德获新生之路，哪晓得遇到的第一个人，就坏得人神共愤呢，引他向善？算了，我还是再死一回。
                        </div>
                        <br>
                        <br>
                        <div class="row">
                            <div class="col-lg-6">
                                <button class="btn-success">
                                    章节目录
                                </button>
                            </div>
                            <div class="col-lg-6">
                                <button class="btn-success">
                                    立即阅读
                                </button>
                            </div>
                        </div>
                        <br>
                        <br>
                    </div>
                </div>
                <hr>


                <div class="row">
                    <div class="card col-lg-4" style="width: 18rem;">
                        <img class="card-img-top" src="../../static/images/hongloumeng.png" alt="Card image cap">
                        <div class="card-body">
                            <h5 class="card-title">红楼梦</h5>
                            <p class="card-text">
                                《红楼梦》是一部章回体长篇小说。早期仅有前八十回抄本流传，八十回后部分未完成且原稿佚失。原名《脂砚斋重评石头记》。程伟元邀请高鹗协同整理出版百二十回全本，定名《红楼梦》。亦有版本作《金玉缘》。</p>
                            <br>
                            <br>
                            <a href="#" class="btn btn-success">去看看</a>
                        </div>
                    </div>
                    <div class="card col-lg-4" style="width: 18rem;">
                        <img class="card-img-top" src="../../static/images/shuihu.png" alt="Card image cap">
                        <div class="card-body">
                            <h5 class="card-title">水浒传</h5>
                            <p class="card-text">
                                《水浒传》的故事源起于北宋宣和年间，出现了话本《大宋宣和遗事》描述了宋江、吴加亮（吴用）、晁盖等36人起义造反的故事，成为《水浒传》的蓝本。</p>
                            <br>
                            <br>
                            <br>
                            <br>
                            <a href="#" class="btn btn-success">去看看</a>
                        </div>
                    </div>
                    <div class="card col-lg-4" style="width: 18rem;">
                        <img class="card-img-top" src="../../static/images/sanguo.png" alt="Card image cap">
                        <div class="card-body">
                            <h5 class="card-title">三国演义</h5>
                            <p class="card-text">
                                《三国演义》是综合民间传说和戏曲、话本，结合陈寿的《三国志》、范晔《后汉书》、元代《三国志平话》、和裴松之注的史料，以及作者个人对社会人生的体悟写成。现所见刊本以明嘉靖本最早，分24卷，240则。清初毛宗岗父子又做了一些修改，并成为现在最常见的120回本。《三国演义》是中国第一部长篇章回体小说。
                                <br>
                                <br>
                                <a href="#" class="btn btn-success">去看看</a>
                        </div>
                    </div>
                </div>
            </div>
            <hr>
            <div id="admin_data" class="text-center form-group-lg">
                <table class="table table-striped border-danger table-hover">
                    <thead class="table-success">
                        <tr>
                            <td>id</td>
                            <td>书名</td>
                            <td>作者</td>
                            <td>类型</td>
                            <td>简介</td>
                            <td>价格</td>
                            <td>数量</td>
                            <td>操作</td>
                        </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${books}" var="book">
                        <tr>
                            <td>${book.id}</td>
                            <td>${book.name}</td>
                            <td>${book.author}</td>
                            <td>${book.type}</td>
                            <td>${book.detial}</td>
                            <td>${book.price}</td>
                            <td>${book.total}</td>
                            <td>
                                <a class="text-success"
                                   href="${pageContext.request.contextPath}/admin/toEditPage?id=${book.id}">编辑</a>
                                <br>
                                <a class="text-success"
                                   href="${pageContext.request.contextPath}/admin/adminDelete?id=${book.id}">删除</a>
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
            <hr>
            <%----%>

            <div class="accordion text-center" id="accordionExample">
                <div class="card">
                    <div class="card-header" id="headingOne">
                        <h2 class="mb-0">
                            <button class="text-success btn btn-link" type="button" data-toggle="collapse" data-target="#collapseOne"
                                    aria-expanded="true" aria-controls="collapseOne">
                                西游记
                            </button>
                        </h2>
                    </div>

                    <div id="collapseOne" class="collapse show" aria-labelledby="headingOne"
                         data-parent="#accordionExample">
                        <div class="card-body">
                            《西游记》前七回叙述孙悟空出世，有大闹天宫等故事。此后写孙悟空随唐僧西天取经，沿途除妖降魔、战胜困难的故事。书中唐僧、孙悟空、猪八戒、沙僧等形象刻画生动，规模宏大，结构完整，并且《西游记》富有浓厚的佛教色彩，其隐含意义非常深远，众说纷纭，见仁见智。可以从佛、道、俗等多个角度欣赏，是中国古典小说中伟大的浪漫主义文学作品。
                        </div>
                    </div>
                </div>
                <div class="card">
                    <div class="card-header" id="headingTwo">
                        <h2 class="mb-0">
                            <button class="text-success btn btn-link collapsed" type="button" data-toggle="collapse"
                                    data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                三国演义
                            </button>
                        </h2>
                    </div>
                    <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionExample">
                        <div class="card-body">
                            《三国演义》故事开始黄巾兵起义，结束于司马氏灭吴开晋，以描写战争为主，反映了魏、蜀汉、吴三个政治集团之间的
                            政治和军事斗争，展现了从东汉末年到西晋初年之间近一百年的历史风云，并成功塑造了一批叱咤风云的英雄人物。
                        </div>
                    </div>
                </div>
                <div class="card">
                    <div class="card-header" id="headingThree">
                        <h2 class="mb-0">
                            <button class="text-success btn btn-link collapsed" type="button" data-toggle="collapse"
                                    data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                水浒传
                            </button>
                        </h2>
                    </div>
                    <div id="collapseThree" class="collapse" aria-labelledby="headingThree"
                         data-parent="#accordionExample">
                        <div class="card-body">
                            《水浒传》是中国历史上第一部用古白话文写成的歌颂农民起义的长篇章回体版块结构小说，以宋江领导的起义军为主要
                            题材，通过一系列梁山英雄反抗压迫、英勇斗争的生动故事，暴露了北宋末年统治阶级的腐朽和残暴，揭露了当时尖锐对
                            立的社会矛盾和“官逼民反”的残酷现实。
                        </div>
                    </div>
                </div>
            </div>
            <br>

            <%--            --%>
            <div class="row">
                <div class="col-lg-5">
                    <button class="btn btn-success">
                        <a href="${pageContext.request.contextPath}/admin/returnLogin">返回上一页</a>
                    </button>
                </div>
                <%--分页--%>
                <div class="text-center col-lg-7">
                    <nav aria-label="Page navigation example">
                        <ul class="pagination">
                            <li class="page-item"><a id="thisPage" class="page-link text-success" href="#">1</a></li>
                            <li class="page-item"><a class="page-link text-success" href="#">2</a></li>
                            <li class="page-item"><a class="page-link text-success" href="#">3</a></li>
                            <li class="page-item"><a class="page-link text-success" href="#">下一个</a></li>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
        <div class="card-footer foot">
            <div class="row">
                <div class="col-lg-4">
                    <ul>
                        <li>数学书</li>
                        <li>语文书</li>
                        <li>英语书</li>
                        <li>物理书</li>
                        <li>化学书</li>
                    </ul>
                </div>
                <div class="col-lg-4">
                    <ul>
                        <li>水浒传</li>
                        <li>西游记</li>
                        <li>三国演义</li>
                        <li>红楼梦</li>
                    </ul>
                </div>
                <div class="col-lg-4">
                    <ul>
                        <li>百度</li>
                        <li>京东</li>
                        <li>淘宝</li>
                    </ul>
                </div>

            </div>
        </div>


        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
                integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
                crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
                integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
                crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
                integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
                crossorigin="anonymous"></script>
    </body>
</html>
