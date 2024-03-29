#import "chicv.typ": *;

#let Chinese = 0
#let EnglishFull = 1
#let Simplified = 2
#let runReader(mode) = {
  let translate(zh: [], en: []) = {
    if mode == Chinese {
      zh
    } else {
      en
    }
  }
  let noSimple(simple: [], content) = {
    if mode == Simplified {
      simple
    } else {
      content
    }
  }
  let months = (
    "Jan",
    "Feb",
    "Mar",
    "Apr",
    "May",
    "Jun",
    "Jul",
    "Aug",
    "Sep",
    "Oct",
    "Nov",
    "Dec",
  )
  let translate-date(month, year) = translate(zh: [#year 年 #month 月], en: [#months.at(month - 1), #year])
  let current = translate(zh: [至今], en: [Present])

  let edu = {
    translate(en: [== Education], zh: [== 教育经历])
    let whut-date = [#translate-date(9, 2008) -- #translate-date(6, 2012)]
    translate(
      en: cventry(
        tl: [B.S. in Electronic Information Engineering at *Wuhan University of Technology*,
          Hubei, CN],
        tr: whut-date,
      )[],
      zh: cventry(tl: [武汉理工大学, 电子信息工程, 本科, 武汉, 中国], tr: whut-date)[],
    )
  }

  let appium = link("https://appium.io/", "Appium")
  let black = link("https://black.readthedocs.io/en/stable/", "black")
  let bootstrap = link("https://getbootstrap.com/", "Bootstrap")
  let boto3 = link("https://boto3.readthedocs.io", "boto3")
  let fabric = link("https://www.fabfile.org/", "fabric")
  let flake8 = link("https://flake8.pycqa.org/en/latest/", "flake8")
  let flask = link("https://flask.palletsprojects.com/", "flask")
  let flask_restx = link("https://github.com/python-restx/flask-restx", "flask-restx")
  let gat = link("https://github.com/KageyamaRuka/#gat", "GAT")
  let gevent = link("http://www.gevent.org/", "gevent")
  let jmeter = link("https://jmeter.apache.org", "jmeter")
  let jquery = link("https://jquery.com/", "jQuery")
  let junit5 = link("https://github.com/junit-team/junit5", "junit5")
  let kotlin = link("https://kotlinlang.org", "Koltin")
  let libusb1 = link("https://github.com/vpelletier/python-libusb1", "python-libusb1")
  let mitmproxy = link("https://github.com/mitmproxy/mitmproxy", "mitmproxy")
  let mongodb = link("https://www.mongodb.com/", "MongoDB")
  let paramiko = link("https://www.paramiko.org/", "paramiko")
  let precommit = link("https://pre-commit.com/", "pre-commit")
  let protobuf = link("https://developers.google.com/protocol-buffers/", "protobuf")
  let pymongo = link("https://pymongo.readthedocs.io/en/stable/", "pymongo")
  let pymysql = link("https://pymysql.readthedocs.io/en/latest/", "PyMySQL")
  let pyserial = link("https://pythonhosted.org/pyserial/", "pySerial")
  let requests = link("https://docs.python-requests.org", "requests")
  let redis = link("https://github.com/redis/redis-py", "redis")
  let spanner = link(
    "https://googleapis.dev/python/spanner/latest/index.html",
    "google-cloud-spanner",
  )
  let threading = link("https://docs.python.org/3/library/threading.html", "threading")
  let uiautomator2 = link(
    "https://appium.io/docs/en/drivers/android-uiautomator2/",
    "UiAutomator2",
  )
  let winappdriver = link("https://github.com/Microsoft/WinAppDriver", "WinAppDriver")
  let xcuitest = link(
    "https://appium.io/docs/en/drivers/ios-xcuitest-real-devices/",
    "XCUITest",
  )
  let jinja = link("https://jinja.palletsprojects.com/en/3.1.x/", "Jinja")

  let dyson = {
    let dyson-date = [#translate-date(2, 2024) -- #current]
    translate(
      en: cventry(
        tl: [*Dyson Operation Pte. Ltd.* Singapore],
        tr: dyson-date,
        bl: [RDD Software, Senior Software Test Engineer],
      )[
        - Responsible for test framework development and code review, test case design, execution and automation.
      ],
      zh: cventry(
        tl: [*Dyson Operation Pte. Ltd.* 新加坡],
        tr: dyson-date,
        bl: [软件研发部, 资深软件测试工程师],
      )[
        - 负责测试用例设计, 执行与自动化, 测试框架开发以及代码review
      ],
    )
  }

  let shopee = {
    let shopee-date = [#translate-date(06, 2022) -- #translate-date(02, 2024)]
    let app = link(
      "https://play.google.com/store/apps/details?id=com.shopee.sg",
      "Shopp App",
    )
    let shopee = link("https://shopee.sg/", "Shopee")
    translate(
      en: cventry(
        tl: [*Shopee Pte. Ltd.* Singapore],
        tr: shopee-date,
        bl: [Traffic Infra, Expert Engineer],
      )[
        - Responsible for test framework design and development for Android Tracking SDK in #app, test case design, execution and automation, code review for tester and developer.
        #noSimple[
          - Created a MITM(Man In The Middle) service based on #mitmproxy/#redis/#flask_restx to cache the tracking data for validation.
          - Created a sample app test structure based on #junit5/#kotlin for tracking test automation.
        ]
      ],
      zh: cventry(
        tl: [*Shopee Pte. Ltd.* 新加坡],
        tr: shopee-date,
        bl: [流量基础架构, 测试专家],
      )[
        - 负责 #shopee Traffic Infra 团队 Android SDK 侧自动化框架设计与实现, 开发与测试的代码review, 测试用例设计与自动化实现。
        - 负责 #app 用户行为跟踪系统的版本测试工作。
        - 设计与开发了基于 #mitmproxy/#redis/#flask_restx 的MITM(中间人)服务用于缓存用户行为, 性能以及埋点数据以验证。
        - 设计与开发了基于 #junit5/#kotlin 的sample app 测试架构以支持埋点测试自动化。
      ],
    )
  }

  let michaels = {
    let michaels-date = [#translate-date(4, 2021) -- #translate-date(4, 2022)]
    let b2b = link("https://enterprise.michaels.com/", "Michaels Pro Enterprise")
    let mik = link("https://www.michaels.com/", "Michaels Store")
    translate(
      en: cventry(
        tl: [*Michaels Stores, Inc.* Shenzhen, Guangdong, China],
        tr: michaels-date,
        bl: [Automation Lead],
      )[
        - Responsible for test framework design and development, test code review and branch management, continuous integration and automation team management.
        - Responsible for backend API automation test and data validation for #b2b, #mik, Recommendation and Order service.
        #noSimple[
          - Create a #gat HTTP API test extension based on #requests/#spanner/#pymongo/#pymysql/#redis to support backend API combination test and data validation.
          - Add #gat support for #precommit/#black/#flake8 for code style standardization.
          - Update #gat dependency from #threading to #gevent, reducing the overhead for thread switching to improve concurrency performance.
        ]
      ],
      zh: cventry(
        tl: [*Michaels Stores, Inc.* 深圳, 中国],
        tr: michaels-date,
        bl: [自动化负责人],
      )[
        - 负责自动化团队管理, 自动化测试流程规范设计落实, 测试代码review与分支管理, 持续集成接入, 测试框架设计开发与维护。
        - 负责#b2b, #mik 电商平台、推荐系统、订单系统的后端接口测试与数据验证。
        - 给 #gat 编写了一个基于 #requests/#spanner/#pymongo/#pymysql/#redis 的 HTTP 接口测试拓展模块,
          以支持后端接口的测试与数据验证。
        - 给 #gat 新增了 #precommit/#black/#flake8 的支持, 规范了测试代码的提交流程与格式化统一。
        - 将 #gat 的线程并发依赖由 #threading 切换到 #gevent, 以降低线程切换开销提高并发性能。
      ],
    )
  }

  let insta360 = {
    let insta360_url = link("https://www.insta360.com/cn/", "Insta360 camers")
    let insta360-date = [#translate-date(12, 2019) -- #translate-date(3, 2021)]
    translate(
      en: cventry(
        tl: [*Insta360*, Shenzhen, Guangdong, China],
        tr: insta360-date,
        bl: [Software Test Development Engineer],
      )[
        - Responsible for test framework design and development for #insta360_url.
        - Created a Generic Automation Toolkit(#gat) to support UI/RPC/Stability and other test scenarios.
        #noSimple[
          - Created #gat UI test extensions based on #appium/#uiautomator2/#xcuitest/#winappdriver to support UI automation for Insta360 iOS/Android app and Insta360 Studio on Windows desktop.
          - Created a #gat RPC API test extension based on #protobuf/#libusb1 to support remote control the insta camera through Wifi or USB for the RPC interface validation.
          - Created a #gat firmware test extension based on #pyserial to support firmware automation test with sending serial port commands to #insta360_url.
        ]
      ],
      zh: cventry(
        tl: [*影石创新科技有限公司*, 深圳, 中国],
        tr: insta360-date,
        bl: [测试开发工程师],
      )[
        - 负责测试框架的设计与开发, 以及测试组的自动化建设。
        - 编写了一个通用自动化测试框架GAT, 支持 UI/RPC/Stability 等多种测试场景的需求。
        #noSimple[          
          - 给 #gat 编写了一个基于 #appium/#uiautomator2/#xcuitest/#winappdriver 的 UI 测试拓展模块, 以支持 Insta360 iOS/Android App 以及 Insta360 Studio Windows 的 UI 自动化测试。
          - 给 #gat 编写了一个基于 #protobuf/#libusb1 的 RPC 测试拓展模块, 以支持通过Wifi或 USB 远程控制 insta360 相机从而实现 RPC 接口验证。
          - 给 #gat 编写了一个基于 #pyserial 的串口测试拓展模块, 以支持通过发送串口指令控制 insta360 相机的固件测试。
        ]
      ],
    )
  }

  let transsion = {
    let transsion-date = [#translate-date(1, 2019) -- #translate-date(8, 2019)]
    let palmcredit = link("https://play.google.com/store/apps/details?id=com.transsnetfinancial.palmcredit&hl=en_SG&gl=NG", "Palmcredit")
    translate(
      en: cventry(
        tl: [*Transsion Holdings*, Shenzhen, Guangdong, China],
        tr: transsion-date,
        bl: [Transsnet Financial, Software Test Development Engineer],
      )[
        - Responsible for test tools development, test case design, execution and risk-control rules validation for #palmcredit.
        #noSimple[
          - Created a tool to automate risk-control rule validation based on #requests/#boto3, including credit report parsing, credit data mocking and injection.
          - Created a tool based on #jmeter, which can auto scale based on the performance test result to get the highest throughput.
        ]
      ],
      zh: cventry(
        tl: [*深圳传音控股股份有限公司*, 深圳, 中国],
        tr: transsion-date,
        bl: [传易金服, 测试开发工程师],
      )[#noSimple[
          - 负责 Palmcredit 项目相关测试工具开发以及风控规则验证。
          - 编写了一个基于 #requests/#boto3 的风控规则字段验证工具, 涵盖征信报告解析以及征信数据构造与注入。
          - 编写了一个基于 #jmeter 的性能测试工具, 能够根据响应延时以及请求错误率自动调度测试执行, 同时自动伸缩并发线程数获取最大吞吐量。
        ]],
    )
  }

  let pingan = {
    let pingan-date = [#translate-date(8, 2018) -- #translate-date(1, 2019)]
    translate(
      en: cventry(
        tl: [*PingAn Technology*, Shenzhen, Guangdong, China],
        tr: pingan-date,
        bl: [PingAn Cloud Portal, Software Test Development Engineer],
      )[
        - Responsible for PingAn Cloud Portal's backend API test automation, test tool desgin and development.
        #noSimple[
          - Created a remote command service based on #paramiko and #flask to test virtual machine template building on PingAn Cloud.
          - Created a exception data scrapper based #pymysql/#requests, which will scrap the fault business log periodically and commit it to the job management system by create ticket.
        ]
      ],
      zh: cventry(
        tl: [*平安科技（深圳）有限公司*, 深圳],
        tr: pingan-date,
        bl: [平安云门户, 测试开发工程师],
      )[#noSimple[
          - 负责平安云门户的后端接口测试以及自动化工具开发。
          - 编写了一个基于 #paramiko/#flask 的指令转发服务, 以支持云平台模版部署VM功能的测试验证。
          - 编写了一个基于 #pymysql/#requests 异常数据提交工具, 能够定时触发查询后端异常栈数据, 同时将异常数据通过接口提交到项目管理平台并创建工单。
        ]],
    )
  }

  let cienet = {
    let cienet-date = [#translate-date(11, 2016) -- #translate-date(3, 2018)]
    translate(
      en: cventry(
        tl: [*Ericsson(Contractor)* Shenzhen, Guangdong, China],
        tr: cienet-date,
        bl: [Continuous Integration Team, Software Engineer, ],
      )[
        - Responsible for CI project development on Jenkins, co-worked on the test framework development and maintain.
        #noSimple[
          - Created a remote deployer based on #fabric and #paramiko, to deploy the test environments simultaneously.
          - Co-worked on a distributed test framework development, shorten the execution time for a full regression with scalable test cluster.
        ]
      ],
      zh: cventry(tl: [*爱立信(外包)*, 深圳], tr: cienet-date, bl: [持续集成组, 软件工程师])[
        #noSimple[
          - 负责 Jenkins 平台 CI 工程开发, 协助开发自动化测试框架。
          - 编写了一个基于 #fabric/#paramiko 的多线程远程部署工具, 支持同时部署数十台环境。
          - 合作编写了一个分布式测试框架, 将全量回归测试的 3000+ 条用例执行时间由 12 小时缩短至不到 2 小时。
        ]],
    )
  }

  let transport = {
    let transport-date = [#translate-date(7, 2012) -- #translate-date(3, 2016)]
    translate(en: cventry(
      tl: [*Air Transport Group*, Xiaogan, Hubei, China],
      tr: transport-date,
      bl: [Quality Control Center, Operation Maintenance Engineer],
    )[
      #noSimple[
        - Responsible for Linux/Windows server operation and maintenance..
      ]
    ], zh: cventry(
      tl: [*孝感市航空运输团*, 孝感, 湖北, 中国],
      tr: transport-date,
      bl: [质控中心, 运维工程师],
    )[#noSimple[
        - 负责 Linux/Windows 服务器运维工作。
      ]])
  }

  let gat = {
    let gat_link = iconlink("https://github.com/KageyamaRuka/gat", icon: github)
    translate(
      en: cventry(
        tl: [#gat_link $space$ *GAT*, Generic Automation Toolkit, a keyword driven test framework for integration test without domain specific language syntax.],
        tr: [],
        bl: [(Rols: Creator)]
      )[
        - Test case template based on YAML config file, keyword driven execution.
        - Parallel execution based on #gevent with thread level log collection.
        - Including a HTTP API test extension based on #requests/#pymysql/#pymongo/#redis/#spanner, to support backend api test and data validation.
        - Including a RPC API test extension based on #protobuf.
        - Including an UI test extension based on #appium/#uiautomator2/#xcuitest/#winappdriver.
        - Including a Serial firmware test extension based on #pyserial.
        - Standardized code-style and formatting based on #precommit/#black/#flake8.
        - Test report rendered based on #bootstrap/#jinja.
      ],
      zh: cventry(
        tl: [*GAT*, 泛用型集成测试自动化框架],
        tr: gat_link,
        bl: [（角色：创建者）]
      )[
        - 测试用例模版基于 YAML 配置文件, 由关键字驱动执行。
        - 基于 #gevent 的用户态线程并发执行模式及日志收集。
        - 包含基于 #requests/#pymysql/#pymongo/#redis/#spanner 的 HTTP 接口测试拓展模块, 以支持后端接口的测试与数据验证。
        - 包含基于 #appium/#uiautomator2/#xcuitest/#winappdriver 的 UI 测试拓展模块。
        - 包含基于 #protobuf 的 RPC 测试拓展模块。
        - 包含基于 #pyserial 的串口固件测试拓展模块。
        - 利用 #precommit/#black/#flake8 规范化 code-style 与 code-formatting。
        - 基于 #bootstrap/#jinja 的测试报告模版。
      ],
    )
  }

  let paramiko_client = {
    let paramiko_link = iconlink("https://github.com/KageyamaRuka/paramiko_client", icon: github)
    translate(
      en: cventry(
        tl: [#paramiko_link $space$ *Paramiko SSH Client*, A SSH client based on #paramiko with SSH jump and log support.],
        tr: []
      )[],
      zh: cventry(
        tl: [#paramiko_link $space$ *Paramiko SSH Client*, 一个基于 #paramiko 的 SSH 客户端, 支持 ssh 跳转以及日志功能。],
        tr: []
      )[],
    )
  }

  let todo = {
    let todo_link = iconlink("https://github.com/KageyamaRuka/todo_app", icon: github)
    translate(
      en: cventry(
        tl: [#todo_link $space$ *Todo App*, A simple Todo App, based on #jquery/#bootstrap/#pymongo/#flask, implemented an ORM module for #mongodb and a decorator for login status check.],
        tr: []
      )[],
      zh: cventry(
        tl: [#todo_link $space$ *Todo App*, 一个简单的 Todo App, 基于 #jquery/#bootstrap/#pymongo/#flask, 实现了一个简单的 ORM 以及登陆态检查。],
        tr: []
      )[],
    )
  }

  let skills = {
    let devTools = {
      let tools = (
        "BitBucket",
        "GitHub",
        "GitLab",
        "Jenkins",
        "Jira",
      )
      translate(
        en: [
          - Tools: editor-agnostic, have experience with team tools like #tools.join(", ") and
            more.
        ],
        zh: [- 开发工具：能适应任何常见编辑器/操作系统, 有使用 #tools.join("、") 等团队协作工具的经验。],
      )
    }
    let progLang = {
      let very = "Python"
      let somehow = "Rust Java Kotlin C"
      translate(
        en: [
          - Programming Languages: multilingual, experienced in #very, comfortable with #somehow.
        ],
        zh: [
          - 编程语言：泛语言, 且尤其熟悉 #very, 较为熟悉 #somehow。
        ],
      )
    }
    progLang
    devTools
  }

  let misc = {
    let onePage = iconlink("https://github.com/KageyamaRuka/resume/releases/download/v0.2024/resume.pdf", icon: github)
    let elab = iconlink("https://github.com/KageyamaRuka/resume/releases/download/v0.2024/resume-elab.pdf", icon: github)
    let cn = iconlink("https://github.com/KageyamaRuka/resume/releases/download/v0.2024/resume-cn.pdf", icon: github)

    translate(
      en: [- Languages: English - fluent, Chinese - native speaker],
      zh: [- 语言：English - 熟练, 汉语 - 母语水平],
    )
    translate(
      en: [
        - Latest revision of this resume: one-page version #onePage, complete version: #elab
        #noSimple[- Get the Chinese version of this resume: #cn]
      ],
      zh: [- 获取此简历的最新更新：中文版本 #cn, 英语版本 #elab, 单页版本（仅英语）：#onePage],
    )
  }

  // Start of the document

  translate(en: [= #smallcaps[Wayne Deng]], zh: [= 邓伟楠])

  [#iconlink("mailto:kageyama.ruka@gmail.com", icon: envelope) $space$ #iconlink(" https://www.linkedin.com/in/wayne-deng-82549499/", icon: linkedin) $space$ #iconlink("https://github.com/KageyamaRuka", icon: github)]

  edu

  translate(en: [== Skills], zh: [== 技能])
  skills

  translate(en: [== Work Experience], zh: [== 工作经历])
  dyson
  shopee
  michaels
  insta360
  transsion
  pingan
  cienet
  transport

  translate(en: [== Related Projects], zh: [== 项目经历])
  gat
  noSimple[
    #paramiko_client
    #todo
  ]

  translate(en: [== Misc], zh: [== 其它])
  misc
}