module Resume (resume) where

import Data.List
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
          en "\\role{Continuous integration Team}{Software Engineer}"
        ],
      noSimple $
        itemize
          [ cn "\\item 负责 Jenkins 平台 CI 工程开发，协助开发自动化测试框架。",
            en "\\item Responsible for CI project development on Jenkins, co-worked on the automation test framework development.",
            cn $ "\\item 编写了一个基于 " ++ fabric ++ "/" ++ paramiko ++ "的多线程远程部署工具，支持同时部署数十台环境。",
            en $ "\\item Created a multi-threading remote builder based on " ++ fabric ++ " and " ++ paramiko ++ ", which support dozens of test environments parallel building",
            cn "\\item 合作编写了一个分布式测试框架，将全量回归测试的 3000+ 条用例执行时间由 12 小时缩短至不到 2 小时。",
            en "\\item Co-worked on a distributed test framework development, shorten the execution time for a full regression test of 3000+ cases from 12 hours to less than 2 hours"
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
          en "\\item Responsible for PingAn Cloud Portal's backend api test and automation test toolkit development.",
          cn $ "\\item 编写了一个基于 " ++ paramiko ++ "/" ++ flask ++ "的指令转发服务，以支持云平台模版部署VM功能的测试验证。",
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
          en "\\item Responsible for test tools development and risk-control rules verification for Palmcredit",
          cn $ "\\item 编写了一个基于 " ++ requests ++ "/" ++ boto3 ++ " 的风控规则字段验证工具, 涵盖征信报告解析以及征信数据构造与注入。",
          en $ "\\item Created a tool for risk-control rules verification based on " ++ requests ++ "/" ++ boto3 ++ ", including credit report analyzation with credit data creation and injection.",
          cn $ "\\item 编写了一个基于 " ++ jmeter ++ " 的性能测试工具, 能够根据响应延时以及请求错误率自动调度测试执行, 同时自动伸缩并发线程数获取最大吞吐量。",
          en $ "\\item Created a performance test tool based on " ++ jmeter ++ " , which can trigger execution based on the response delay and fail rate, and auto scale threads on client to get the highest throughput."
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
          en "\\item Created a general automation testing framework(GAT), to support UI/RPC/Stability and many other test scenarios.",
          cn $ "\\item 给 GAT 编写了一个基于 " ++ appium ++ "/" ++ uiautomator2 ++ "/" ++ xcuitest ++ "/" ++ winappdriver ++ " 的 UI 测试拓展模块, 以支持 iOS/Android 平台的全景相机 App (Insta360) 以及 Windows 桌面端的全景媒体编辑器 (Insta360 Studio) 的 UI 自动化测试。",
          elab $ "\\item Created a UI test extension based on " ++ appium ++ "/" ++ uiautomator2 ++ "/" ++ xcuitest ++ "/" ++ winappdriver ++ " for GAT, to support UI automation for the panoramic camera app (Insta360) on iOS/Android and the panoramic media editor (Insta360 Studio) on Windows desktop.",
          cn $ "\\item 给 GAT 编写了一个基于 " ++ protobuf ++ " 的 RPC 测试拓展模块, 以支持通过Wifi或USB远程控制insta360相机从而实现 RPC 接口验证。",
          elab $ "\\item Created a RPC test extension based on " ++ protobuf ++ " for GAT, to support remote control the insta360 camera through Wifi or USB for the RPC interface verification"
        ]
    ]
  where
    appium = "\\href{https://appium.io/} {appium}"
    uiautomator2 = "\\href{https://appium.io/docs/en/drivers/android-uiautomator2/} {UiAutomator2}"
    xcuitest = "\\href{https://appium.io/docs/en/drivers/ios-xcuitest-real-devices/} {XCUITest}"
    winappdriver = "\\href{https://github.com/Microsoft/WinAppDriver} {WinAppDriver}"
    protobuf = "\\href{https://developers.google.com/protocol-buffers/} {protobuf}"

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
        [ cn "\\item 负责自动化团队管理，自动化测试流程规范设计落实，测试代码review与分支管理，持续集成接入，测试框架设计开发与维护。",
          en "\\item Responsible for automation team management, workstream desgin and implement, test code review and branch management, CI integration, test framework design, development and maintain.",
          cn $ "\\item 负责电商平台 " ++ b2b ++ " , " ++ mik ++ " 以及推荐系统、订单系统的后端接口测试与数据验证。",
          en $ "\\item Responsible for backend API automation test and data verification for " ++ b2b ++ " , " ++ mik ++ ", recommendation service and order history service.",
          cn $ "\\item 给 GAT 编写了一个基于 " ++ requests ++ "/" ++ spanner ++ "/" ++ pymongo ++ "/" ++ pymysql ++ "/" ++ redis ++ " 的HTTP接口测试拓展模块，以支持后端接口的测试与数据验证。",
          elab $ "\\item Create a HTTP api test extension based on " ++ requests ++ "/" ++ spanner ++ "/" ++ pymongo ++ "/" ++ pymysql ++ "/" ++ redis ++ " for GAT, to support backend API test and data verification.",
          cn $ "\\item 给 GAT 新增了 " ++ precommit ++ "/" ++ black ++ "/" ++ flake8 ++ " 的支持，规范了测试代码的提交流程与格式化统一。",
          elab $ "\\item Add " ++ precommit ++ "/" ++ black ++ "/" ++ flake8 ++ " support for GAT, to standardization code formatting and code committing",
          cn $ "\\item 将 GAT 的线程并发依赖由 " ++ threading ++ " 切换到 " ++ gevent ++ " ，以降低线程切换开销提高并发性能。",
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

devKt :: Resume
devKt =
  paragraph
    [ github "ice1000/dev-kt" `datedSection` bold "DevKt",
      cn "跨平台轻量级代码编辑器兼 Kotlin IDE",
      en "Cross-platform lightweight code editor / Kotlin IDE",
      itemize
        [ cn "\\item 内置 Java/Kotlin 的高亮、补全，其他语言可以借助插件",
          cn "（可移植自 JetBrains IDE）做到同样的支持。\\\\对 Kotlin 有额外的编译运行支持。",
          en "\\item Built-in Java/Kotlin highlights and completion, that can support other languages",
          en "via plugins (transplantable from JetBrains IDE's).",
          en "Has extra build \\& run support for Kotlin.",
          -- , cn "\\item 架构灵活，编辑器上层逻辑和 UI 框架彻底解耦，易于向其他 UI 框架移植。"
          -- , en "\\item Flexible architecture, decoupled high-level logic with UI, migration to other UI frameworks is easy."

          cn "\\item 提供细粒度的高亮颜色和快捷键设置，设置可以热更新。",
          en "\\item Provides fine-grained highlight color and keymap settings, supports hot reload."
        ]
    ]

aya :: Resume
aya =
  paragraph
    [ github "aya-prover/aya-dev" `datedSection` bold "Aya",
      cn "实用的依值类型系统实现（职位：项目组长）",
      en "Practical implementation of a dependent type system (role: project leader)",
      itemize
        [ cn "\\item 支持依值类型、依值模式匹配及重叠情况一致性检查、高阶归纳类型、泛化代数数据类型、和隐式参数的推导。",
          en $
            "\\item Supports dependent types, dependent pattern matching with confluence check for overlapping cases, "
              ++ "higher inductive types, GADTs, and implicit arguments.",
          cn "\\item 支持可视化类型检查的完整证明树、导出繁饰结果到网页或 LaTeX。",
          en "\\item Supports visualization of the type checking traces and exporting elaboration result to HTML or LaTeX."
        ]
    ]

voile :: Resume
voile =
  paragraph
    [ github "owo-lang/voile-rs" `datedSection` bold "Voile",
      cn "实验型依值类型编程语言，支持基于 kind 的 Row-polymorphism",
      en "Experimental dependently-typed language with kind-based row-polymorphism",
      itemize
        [ cn "\\item 支持值的自动推导（元变量）以及非依值的 row-polymorphism 的和与积类型。",
          en "\\item Supports meta variable unification and non-dependent row-polymorphic sum and product type.",
          cn "\\item 支持 cumulative 的类型层级和歧义类型多态以避免对 Set$\\omega$ 的使用。",
          en "\\item Supports cumulative universe and typical ambiguity to get rid of Set$\\omega$."
          -- , cn "\\item 借助 Rust 语言的生态系统实现命令行解析、代码解析和支持命令补全的交互式解释器。"
          -- , en "\\item Implements CLI parser/source code parser and interactive REPL with the help of Rust language's ecosystem."
        ]
    ]

arendVSCode :: Resume
arendVSCode =
  paragraph
    [ github "ice1000/vscode-arend" `datedSection` bold "VSCode extension for Arend",
      cn "Arend 语言的 VSCode 语言客户端，基于实验性的 Arend 语言服务实现。在 VSCode 插件市场发布。",
      en $
        "VSCode language client for the Arend language, build on top of the experimental implementation of the Arend language server. "
          ++ "Available from the VSCode extension marketplace."
    ]

arendLSP :: Resume
arendLSP =
  paragraph
    [ github "ice1000/arend-language-server" `datedSection` bold "Arend language server",
      cn "实验性的 Arend 语言服务实现，基于 lsp4j 框架和 Arend 编译器内部接口。",
      en "An experimental implementation of the Arend language server, based on the lsp4j framework and Arend compiler's internal interfaces."
    ]

agdaMode :: Resume
agdaMode =
  paragraph
    [ github "ice1000/agda-mode" `datedSection` bold "External tactics for Agda",
      cn $
        "通过与 Agda 的 CLI 接口交互实现的类 Coq Ltac 的 REPL，"
          ++ "支持在 REPL 中进行绝大多数原本在 Emacs mode 里实现的操作，例如 case split、显示表达式与洞的类型等。"
          ++ "通过 tokio 和 serde 实现 IO，并在 Agda 编译器中实现所需的 json 接口。",
      en $
        unlines
          [ "A REPL interacts with Agda CLI interface, simulating Ltac in Coq.",
            "Supports most actions available in the Emacs mode, like case-split, show expression and goal type, etc.,",
            "implements IO via tokio and serde along with the required json interface in Agda compiler."
          ]
    ]

jimgui :: Resume
jimgui =
  paragraph
    [ github "ice1000/jimgui" `datedSection` bold "JImgui",
      cn $
        "JNI 实现的 \\textit{dear imgui} 接口，通过定制工具生成 FFI 接口，利用 HotSpot 虚拟机的 Critical Native 特性优化 JNI 性能，"
          ++ "内置并自动加载主流平台的动态链接库，在 imgui 的基础上支持图片加载和窗口缩放。",
      en $
        unlines
          [ "Java port of \\textit{dear imgui} implemented in JNI, with FFI code generated by custom tool.",
            "Optimized JNI performance using the \\textit{Critical Native} feature of the HotSpot VM,",
            "Supports auto-load built-in native libraries for mainstream platforms,",
            "implements image loading and window scaling apart from the vanilla imgui library."
          ]
    ]

arendIO :: Resume
arendIO =
  paragraph
    [ github "ice1000/arend-io" `datedSection` bold "Arend IO",
      cn "实验性 Arend IO 库，实现了 \\textsf{unsafePerformIO} 和简单的 \\textsf{IO} 操作。",
      en "Experimental IO library for Arend, implements \\textsf{unsafePerformIO} and simple \\textsf{IO} actions."
    ]

intellijPest :: Resume
intellijPest =
  paragraph
    [ github "pest-parser/intellij-pest" `datedSection` bold "IntelliJ Pest",
      cn "基于 IntelliJ Platform 的 IDE 的 Pest 文法语言插件",
      en "A Pest grammar language plugin for IDEs based on the IntelliJ Platform",
      itemize
        [ cn "\\item 支持基于语义的高亮、错误检查、定义跳转、变量补全、提取定义、内联定义以及与 Rust 插件集成。",
          cn "\\item 提供实时高亮功能——可根据语法定义为用户代码动态提供高亮以测试语法定义文件，并支持导出 HTML。",
          en "\\item Semantic-based highlighting, completion, navigation, definition extraction/inlining, and Rust plugin integration.",
          en $
            "\\item Provides live preview -- test grammar files by dynamically highlighting user code according to the grammar on the fly. "
              ++ "These highlighted code could be exported to HTML."
        ]
    ]

devTools :: Resume
devTools =
  paragraph
    [ itemTeX "开发工具" "Development Tool",
      cn "能适应大部分编辑器/操作系统，平常在 MacOS/Arch Linux 下使用 JetBrains IDE、Vscode，",
      cn $ "有使用 " ++ intercalate "、" tools ++ " 等团队协作工具的经验。",
      en "can adapt to mostly editors/OSs, usually use JetBrains IDEs and Vscode under",
      simple "MacOS/Arch Linux.",
      elab "MacOS/Arch Linux, have experience with tools like ",
      elab $ intercalate ", " tools ++ "."
    ]
  where
    tools = ["Jira", "BitBucket", "GitLab", "GitHub", "Slack", "Jenkins"]

programmingLanguages :: Resume
programmingLanguages =
  paragraph
    [ itemTeX "编程语言" "Program Language",
      cn $ "熟悉 " ++ familiar ++ "，",
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
      section
        "工作经历"
        "Work Experience"
        [ michaels,
          insta360,
          transsion,
          pingan,
          cienet
        ],
      section
        "个人项目"
        "Personal Projects"
        [ noSimple $ devKt,
          noSimple $ voile,
          aya,
          intellijPest,
          noSimple $ agdaMode,
          noSimple $ jimgui,
          noSimple $ arendIO,
          noSimple $ arendVSCode,
          noSimple $ arendLSP
        ],
      skills,
      -- end document
      pure "\\end{document}"
    ]
