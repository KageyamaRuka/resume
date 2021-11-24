module Resume (resume) where

import Data.List
import Distribution.Types.LocalBuildInfo (LocalBuildInfo (flagAssignment))
import TeX

basicInfo :: Resume
basicInfo =
  paragraph
    [ pure "\\basicInfo{",
      pure $ "\\email{kageyama.ruka@gmail.com}" ++ period,
      -- , cn $ "\\phone{(+86) 186-7676-4936}" ++ period
      -- , en $ "\\phone{(1) 608-501-1044}" ++ period
      pure $ "\\github[KageyamaRuka]{https://github.com/KageyamaRuka}" ++ period,
      -- , pure $ "\\homepage[KageyamaRuka]{KageyamaRuka.github.io}" ++ period
      pure "\\linkedin[Wayne Deng]{https://www.linkedin.com/in/wayne-deng-82549499/}",
      pure "}"
    ]
  where
    period = "\\textperiodcentered\\"

education :: Resume
education =
  section
    "教育经历"
    "Education"
    [ datedSection (date "2008" "09" ~~ date "2012" "06") $
        paragraph
          [ en "\\textbf{Wuhan University of Technology}, Hubei, CN",
            cn "\\textbf{武汉理工大学}, 湖北, 中国"
          ],
      en "Major: Electronic Information Engineering (Bachelor)",
      cn "专业：电子信息工程（本科）"
    ]

transport :: Resume
transport =
  paragraph
    [ datedSection (date "2012" "07" ~~ date "2016" "03") $
        paragraph
          [ cn "\\textbf{孝感市航空运输团}, 全职",
            en "\\textbf{Air Transport Group (Xiaogan, Hubei)}, Fulltime"
          ],
      paragraph
        [ cn "\\role{质控中心}{运维工程师}",
          en "\\role{Quality Control Center}{Operation Maintenance Engineer}"
        ],
      itemize
        [ cn "\\item 负责 Linux/Windows 服务器运维工作。",
          en "\\item Responsible for Linux/Windows server operation and maintenance."
        ]
    ]

cienet :: Resume
cienet =
  paragraph
    [ datedSection (date "2016" "11" ~~ date "2018" "03") $
        paragraph
          [ cn "\\textbf{瞬联软件科技有限公司}, 爱立信外包",
            en "\\textbf{CIeNET Technologies}, Outsourcing to Ericsson"
          ],
      paragraph
        [ cn "\\role{持续集成组}{软件工程师}",
          en "\\role{Continuous Integration Team}{Software Engineer}"
        ],
      itemize
        [ cn "\\item 负责 Jenkins 平台 CI 工程开发, 协助开发自动化测试框架。",
          en "\\item Responsible for CI project development on Jenkins, co-worked on the test framework development.",
          cn $ "\\item 编写了一个基于 " ++ fabric ++ "/" ++ paramiko ++ "的多线程远程部署工具, 支持同时部署数十台环境。",
          elab $ "\\item Created a multi-threading remote builder based on " ++ fabric ++ " and " ++ paramiko ++ ", which support dozens of test environments parallel building.",
          cn "\\item 合作编写了一个分布式测试框架, 将全量回归测试的 3000+ 条用例执行时间由 12 小时缩短至不到 2 小时。",
          elab "\\item Co-worked on a distributed test framework development, shorten the execution time for a full regression test of 3000+ cases from 12 hours to less than 2 hours."
        ]
    ]
  where
    fabric = "\\href{https://www.fabfile.org/} {fabric}"
    paramiko = "\\href{https://www.paramiko.org/} {paramiko}"

pingan :: Resume
pingan =
  paragraph
    [ datedSection (date "2018" "08" ~~ date "2019" "01") $
        paragraph
          [ cn "\\textbf{平安科技（深圳）有限公司}, 全职",
            en "\\textbf{PingAn Technology}, Fulltime"
          ],
      paragraph
        [ cn "\\role{平安云门户}{测试开发工程师}",
          en "\\role{PingAn Cloud Portal}{Software Development Engineer in Test}"
        ],
      itemize
        [ cn "\\item 负责平安云门户的后端接口测试以及自动化工具开发。",
          en "\\item Responsible for PingAn Cloud Portal's backend api test and test tools development.",
          cn $ "\\item 编写了一个基于 " ++ paramiko ++ "/" ++ flask ++ "的指令转发服务, 以支持云平台模版部署VM功能的测试验证。",
          elab $ "\\item Created a command route service based on " ++ paramiko ++ " and " ++ flask ++ " to test template VM building on PingAn Cloud.",
          cn $ "\\item 编写了一个基于 " ++ pymysql ++ "/" ++ requests ++ " 异常数据提交工具, 能够定时触发查询后端异常栈数据, 同时将异常数据通过接口提交到项目管理平台并创建工单。",
          elab $ "\\item Created a exception data commiter based on " ++ pymysql ++ "/" ++ requests ++ ", which could be trigged by time setting to query the exception data from business database and commit it to the Wizard project management platform and create defect ticket for it."
        ]
    ]
  where
    flask = "\\href{https://flask.palletsprojects.com/} {flask}"
    paramiko = "\\href{https://www.paramiko.org/} {paramiko}"
    pymysql = "\\href{https://pymysql.readthedocs.io/en/latest/} {PyMySQL}"
    requests = "\\href{https://docs.python-requests.org} {requests}"

transsion :: Resume
transsion =
  paragraph
    [ datedSection (date "2019" "01" ~~ date "2019" "08") $
        paragraph
          [ cn "\\textbf{深圳传音控股股份有限公司}, 全职",
            en "\\textbf{Transsion}, Fulltime"
          ],
      paragraph
        [ cn "\\role{传易金服}{测试开发工程师}",
          en "\\role{Transsnet Financial}{Software Development Engineer in Test}"
        ],
      itemize
        [ cn "\\item 负责 Palmcredit 项目相关测试工具开发以及风控规则验证。",
          en "\\item Responsible for test tools development and risk-control rules verification for Palmcredit.",
          cn $ "\\item 编写了一个基于 " ++ requests ++ "/" ++ boto3 ++ " 的风控规则字段验证工具, 涵盖征信报告解析以及征信数据构造与注入。",
          en $ "\\item Created a tool for risk-control rules verification based on " ++ requests ++ "/" ++ boto3 ++ ", including credit report analyzation with credit data creation and injection.",
          cn $ "\\item 编写了一个基于 " ++ jmeter ++ " 的性能测试工具, 能够根据响应延时以及请求错误率自动调度测试执行, 同时自动伸缩并发线程数获取最大吞吐量。",
          en $ "\\item Created a performance test tool based on " ++ jmeter ++ " , which can trigger execution based on the response delay and fail rate, and scale threads automatically on client to get the highest throughput."
        ]
    ]
  where
    requests = "\\href{https://docs.python-requests.org} {requests}"
    boto3 = "\\href{https://boto3.readthedocs.io} {boto3}"
    jmeter = "\\href{https://jmeter.apache.org} {jmeter}"

insta360 :: Resume
insta360 =
  paragraph
    [ datedSection (date "2019" "12" ~~ date "2021" "03") $
        paragraph
          [ cn "\\textbf{影石创新科技有限公司}, 全职",
            en "\\textbf{insta360}, Fulltime"
          ],
      paragraph
        [ cn "\\role{应用软件部 测试组}{测试开发工程师与自动化负责人}",
          en "\\role{Application Software Group QA Team}{Software Development Engineer in Test and Automation Team Lead}"
        ],
      itemize
        [ cn "\\item 负责测试框架的设计与开发, 以及测试组的自动化建设。",
          en "\\item Responsible for test framework design and development, and automation workstream building for the QA team.",
          cn "\\item 编写了一个通用自动化测试框架GAT, 支持 UI/RPC/Stability 等多种测试场景的需求。",
          en "\\item Created a Generic Automation Toolkit(GAT), to support UI/RPC/Stability and many other test scenarios.",
          cn $ "\\item 给 GAT 编写了一个基于 " ++ appium ++ "/" ++ uiautomator2 ++ "/" ++ xcuitest ++ "/" ++ winappdriver ++ " 的 UI 测试拓展模块, 以支持 iOS/Android 的 Insta360 App 以及 Windows 桌面端 Insta360 Studio 的 UI 自动化测试。",
          en $ "\\item Created a UI test extension based on " ++ appium ++ "/" ++ uiautomator2 ++ "/" ++ xcuitest ++ "/" ++ winappdriver ++ " for GAT, to support UI automation for Insta360 app on iOS/Android and Insta360 Studio on Windows desktop.",
          cn $ "\\item 给 GAT 编写了一个基于 " ++ protobuf ++ "/" ++ libusb1 ++ " 的 RPC 测试拓展模块, 以支持通过Wifi或USB远程控制insta360相机从而实现 RPC 接口验证。",
          elab $ "\\item Created a RPC test extension based on " ++ protobuf ++ "/" ++ libusb1 ++ " for GAT, to support remote control the insta360 camera through Wifi or USB for the RPC interface verification.",
          cn $ "\\item 给 GAT 编写了一个基于 " ++ pyserial ++ " 的串口测试拓展模块, 以支持通过发送串口指令控制insta360相机的固件测试。",
          elab $ "\\item Created a serial test extension based on " ++ pyserial ++ " for GAT, to support firmware test by sending serial command to insta360 camera."
        ]
    ]
  where
    appium = "\\href{https://appium.io/} {appium}"
    uiautomator2 = "\\href{https://appium.io/docs/en/drivers/android-uiautomator2/} {UiAutomator2}"
    xcuitest = "\\href{https://appium.io/docs/en/drivers/ios-xcuitest-real-devices/} {XCUITest}"
    winappdriver = "\\href{https://github.com/Microsoft/WinAppDriver} {WinAppDriver}"
    protobuf = "\\href{https://developers.google.com/protocol-buffers/} {protobuf}"
    pyserial = "\\href{https://pythonhosted.org/pyserial/} {pySerial}"
    libusb1 = "\\href{https://github.com/vpelletier/python-libusb1} {python-libusb1}"

michaels :: Resume
michaels =
  paragraph
    [ datedSection (date "2021" "04" ~~ present) $
        paragraph
          [ cn "\\textbf{Michaels Stores, Inc.}, 全职",
            en "\\textbf{Michaels Stores, Inc.}, Fulltime"
          ],
      paragraph
        [ cn "\\role{QA Group}{软件工程师, 自动化负责人}",
          en "\\role{QA Group}{Software Engineer and Automation Team Lead}"
        ],
      itemize
        [ cn "\\item 负责自动化团队管理, 自动化测试流程规范设计落实, 测试代码review与分支管理, 持续集成接入, 测试框架设计开发与维护。",
          en "\\item Responsible for automation team management, workstream desgin and implement, test code review and branch management, Continuous Integration, test framework design, development and maintain.",
          cn $ "\\item 负责电商平台 " ++ b2b ++ " , " ++ mik ++ " 以及推荐系统、订单系统的后端接口测试与数据验证。",
          elab $ "\\item Responsible for backend API automation test and data verification for " ++ b2b ++ " , " ++ mik ++ ", Recommendation Service and Michaels Order History Service.",
          cn $ "\\item 给 GAT 编写了一个基于 " ++ requests ++ "/" ++ spanner ++ "/" ++ pymongo ++ "/" ++ pymysql ++ "/" ++ redis ++ " 的 HTTP 接口测试拓展模块, 以支持后端接口的测试与数据验证。",
          en $ "\\item Create a HTTP api test extension based on " ++ requests ++ "/" ++ spanner ++ "/" ++ pymongo ++ "/" ++ pymysql ++ "/" ++ redis ++ " for GAT, to support backend API test and data verification.",
          cn $ "\\item 给 GAT 新增了 " ++ precommit ++ "/" ++ black ++ "/" ++ flake8 ++ " 的支持, 规范了测试代码的提交流程与格式化统一。",
          elab $ "\\item Add " ++ precommit ++ "/" ++ black ++ "/" ++ flake8 ++ " support for GAT, to standardization code formatting and code style.",
          cn $ "\\item 将 GAT 的线程并发依赖由 " ++ threading ++ " 切换到 " ++ gevent ++ " , 以降低线程切换开销提高并发性能。",
          elab $ "\\item Update dependency from " ++ threading ++ " to " ++ gevent ++ " for GAT, reducing the overhead for thread switching to improve concurrency performance."
        ]
    ]
  where
    spanner = "\\href{https://googleapis.dev/python/spanner/latest/index.html} {google-cloud-spanner}"
    pymongo = "\\href{https://pymongo.readthedocs.io/en/stable/} {pymongo}"
    pymysql = "\\href{https://pymysql.readthedocs.io/en/latest/} {PyMySQL}"
    redis = "\\href{https://github.com/redis/redis-py} {redis}"
    requests = "\\href{https://docs.python-requests.org} {requests}"
    precommit = "\\href{https://pre-commit.com/} {pre-commit}"
    flake8 = "\\href{https://flake8.pycqa.org/en/latest/} {flake8}"
    black = "\\href{https://black.readthedocs.io/en/stable/} {black}"
    gevent = "\\href{http://www.gevent.org/} {gevent}"
    threading = "\\href{https://docs.python.org/3/library/threading.html} {threading}"
    b2b = "\\href{https://enterprise.michaels.com/} {Michaels Enterprise/Education}"
    mik = "\\href{https://www.michaels.com/} {Michaels Stores}"

gat :: Resume
gat =
  paragraph
    [ github "KageyamaRuka/GAT" `datedSection` bold "GAT",
      cn "泛用型集成测试自动化框架",
      en "Generic Automation Toolkit for Integration Test",
      itemize
        [ cn "\\item 测试用例模版基于 YAML 配置文件, 由关键字驱动执行。",
          elab "\\item Test case template based on YAML config file, execution driven by keyword.",
          cn $ "\\item 基于 " ++ gevent ++ " 的线程并发执行模式以及线程级日志收集。",
          en $ "\\item Parallel execution model based on " ++ gevent ++ " with log collection for each thread.",
          cn $ "\\item 包含基于 " ++ requests ++ "/" ++ pymysql ++ "/" ++ pymongo ++ "/" ++ redis ++ "/" ++ spanner ++ " 的 HTTP 接口测试拓展模块, 以支持后端接口的测试与数据验证。",
          en $ "\\item Including a HTTP api test extension based on " ++ requests ++ "/" ++ pymysql ++ "/" ++ pymongo ++ "/" ++ redis ++ "/" ++ spanner ++ ", to support backend api test and data verification.",
          cn $ "\\item 包含基于 " ++ appium ++ "/" ++ uiautomator2 ++ "/" ++ xcuitest ++ "/" ++ winappdriver ++ " 的 UI 测试拓展模块。",
          en $ "\\item Including an UI test extension based on " ++ appium ++ "/" ++ uiautomator2 ++ "/" ++ xcuitest ++ "/" ++ winappdriver ++ ".",
          cn $ "\\item 包含基于 " ++ protobuf ++ " 的 RPC 测试拓展模块。",
          en $ "\\item Including a RPC test extension based on " ++ protobuf ++ ".",
          cn $ "\\item 包含基于 " ++ pyserial ++ " 的串口固件测试拓展模块。",
          en $ "\\item Including a Serial firmware test extension based on " ++ pyserial ++ ".",
          cn $ "\\item 利用 " ++ precommit ++ "/" ++ black ++ "/" ++ flake8 ++ " 规范化 code-style 与 code-formatting。",
          elab $ "\\item Standardized code-style and formatting based on " ++ precommit ++ "/" ++ black ++ "/" ++ flake8 ++ ".",
          cn $ "\\item 基于 " ++ bootstrap ++ " 的测试报告模版。",
          en $ "\\item Including a test report template based on " ++ bootstrap ++ "."
        ]
    ]
  where
    appium = "\\href{https://appium.io/} {appium}"
    uiautomator2 = "\\href{https://appium.io/docs/en/drivers/android-uiautomator2/} {UiAutomator2}"
    xcuitest = "\\href{https://appium.io/docs/en/drivers/ios-xcuitest-real-devices/} {XCUITest}"
    winappdriver = "\\href{https://github.com/Microsoft/WinAppDriver} {WinAppDriver}"
    protobuf = "\\href{https://developers.google.com/protocol-buffers/} {protobuf}"
    pyserial = "\\href{https://pythonhosted.org/pyserial/} {pySerial}"
    gevent = "\\href{http://www.gevent.org/} {gevent}"
    spanner = "\\href{https://googleapis.dev/python/spanner/latest/index.html} {google-cloud-spanner}"
    pymongo = "\\href{https://pymongo.readthedocs.io/en/stable/} {pymongo}"
    pymysql = "\\href{https://pymysql.readthedocs.io/en/latest/} {PyMySQL}"
    redis = "\\href{https://github.com/redis/redis-py} {redis}"
    requests = "\\href{https://docs.python-requests.org} {requests}"
    precommit = "\\href{https://pre-commit.com/} {pre-commit}"
    flake8 = "\\href{https://flake8.pycqa.org/en/latest/} {flake8}"
    black = "\\href{https://black.readthedocs.io/en/stable/} {black}"
    bootstrap = "\\href{https://getbootstrap.com/} {Bootstrap}"

paramikoClient :: Resume
paramikoClient =
  paragraph
    [ github "KageyamaRuka/paramiko_client" `datedSection` bold "Paramiko SSH Client",
      cn $ "一个基于 " ++ paramiko ++ " 的 SSH 客户端, 支持 ssh 跳转以及日志功能。",
      en $ "A SSH client based on " ++ paramiko ++ " with SSH jump and log support."
    ]
  where
    paramiko = "\\href{https://www.paramiko.org/} {paramiko}"

todo :: Resume
todo =
  paragraph
    [ github "KageyamaRuka/todo_app" `datedSection` bold "Todo App",
      cn $ "一个简单的 Todo App, 基于 " ++ jQuery ++ "/" ++ bootstrap ++ "/" ++ pymongo ++ "/" ++ flask ++ ", 实现了一个简单的 ORM 以及登陆态检查。",
      en $ "A simple Todo App, based on " ++ jQuery ++ "/" ++ bootstrap ++ "/" ++ pymongo ++ "/" ++ flask ++ ", implemented an ORM module for " ++ mongodb ++ " and a decorator for login status check."
    ]
  where
    jQuery = "\\href{https://jquery.com/} {jQuery}"
    bootstrap = "\\href{https://getbootstrap.com/} {bootstrap}"
    pymongo = "\\href{https://pymongo.readthedocs.io/en/stable/} {pymongo}"
    flask = "\\href{https://flask.palletsprojects.com/} {flask}"
    mongodb = "\\href{https://www.mongodb.com/} {mongodb}"

devTools :: Resume
devTools =
  paragraph
    [ itemTeX "开发工具" "Development Tool",
      cn "能适应大部分编辑器/操作系统, 平常在 MacOS/Arch Linux 下使用 JetBrains IDE、 Visual Studio Code, ",
      cn $ "有使用 " ++ intercalate "、" tools ++ " 等团队协作工具的经验。",
      en "can adapt to mostly editors/OSs, usually use JetBrains IDEs and Visual Studio Code under",
      simple "MacOS/Arch Linux.",
      elab "MacOS/Arch Linux, have experience with tools like ",
      elab $ intercalate ", " tools ++ "."
    ]
  where
    tools = ["Jira", "BitBucket", "GitLab", "GitHub", "Jenkins"]

programmingLanguages :: Resume
programmingLanguages =
  paragraph
    [ itemTeX "编程语言" "Program Language",
      cn $ "擅长 " ++ familiar ++ ", ",
      cn $ "较为熟悉 " ++ somehow ++ "。",
      en $ "experienced in " ++ familiar ++ ",",
      en $ "comfortable with " ++ somehow ++ "."
    ]
  where
    somehow = "Rust C Javascript"
    familiar = "Python"

skills :: Resume
skills =
  section "技能" "Skills" . pure $
    itemize
      [ programmingLanguages,
        devTools
      ]

resume :: Resume
resume =
  paragraph
    [ pure "% !TEX program = xelatex",
      pure "% This file is generated, don't manually edit!",
      -- head
      paragraph
        [ pure "\\documentclass{resume}",
          cn "\\usepackage{lastpage}",
          cn "\\usepackage{fancyhdr}",
          -- disable extra space before next section
          pure "\\usepackage{linespacing_fix}",
          cn "\\usepackage[fallback]{xeCJK}"
        ],
      --  \setmainfont[]{SimSun}
      --  \setCJKfallbackfamilyfont{rm}{HAN NOM B}
      --  \setCJKmainfont{Source Han Serif SC Regular}
      --  \renewcommand{\thepage}{\Chinese{page}}

      -- begin document
      pure "\\begin{document}",
      cn "\\renewcommand\\headrulewidth{0pt}",
      -- dare?
      tex "name" "邓伟楠" "Wayne Deng",
      basicInfo,
      education,
      skills,
      section
        "工作经历"
        "Work Experience"
        [ michaels,
          insta360,
          transsion,
          pingan,
          cienet,
          transport
        ],
      section
        "个人项目"
        "Personal Projects"
        [ gat,
          noSimple todo,
          paramikoClient
        ],
      -- end document
      pure "\\end{document}"
    ]
