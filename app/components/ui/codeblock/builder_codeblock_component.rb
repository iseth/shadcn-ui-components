class Ui::Codeblock::BuilderCodeblockComponent < ViewComponent::Base
  FORMATTER = ::Rouge::Formatters::HTML.new
  ROUGE_CSS = Rouge::Themes::Github.mode(:dark).render(scope: ".highlight")
  CUSTOM_CSS = ".highlight table td { padding: 5px; }
  .highlight table pre { margin: 0; }
  .highlight, .highlight .w {
    color: #c9d1d9;
    background-color: #161b22;
  }
  .highlight .k, .highlight .kd, .highlight .kn, .highlight .kp, .highlight .kr, .highlight .kt, .highlight .kv {
    color: #ff7b72;
  }
  .highlight .gr {
    color: #f0f6fc;
  }
  .highlight .gd {
    color: #ffdcd7;
    background-color: #67060c;
  }
  .highlight .nb {
    color: #ffa657;
  }
  .highlight .nc {
    color: #ffa657;
  }
  .highlight .no {
    color: #ffa657;
  }
  .highlight .nn {
    color: #ffa657;
  }
  .highlight .sr {
    color: #7ee787;
  }
  .highlight .na {
    color: #7ee787;
  }
  .highlight .nt {
    color: #7ee787;
  }
  .highlight .gi {
    color: #aff5b4;
    background-color: #033a16;
  }
  .highlight .kc {
    color: #79c0ff;
  }
  .highlight .l, .highlight .ld, .highlight .m, .highlight .mb, .highlight .mf, .highlight .mh, .highlight .mi, .highlight .il, .highlight .mo, .highlight .mx {
    color: #79c0ff;
  }
  .highlight .sb {
    color: #79c0ff;
  }
  .highlight .bp {
    color: #79c0ff;
  }
  .highlight .ne {
    color: #79c0ff;
  }
  .highlight .nl {
    color: #79c0ff;
  }
  .highlight .py {
    color: #79c0ff;
  }
  .highlight .nv, .highlight .vc, .highlight .vg, .highlight .vi, .highlight .vm {
    color: #79c0ff;
  }
  .highlight .o, .highlight .ow {
    color: #79c0ff;
  }
  .highlight .gh {
    color: #1f6feb;
    font-weight: bold;
  }
  .highlight .gu {
    color: #1f6feb;
    font-weight: bold;
  }
  .highlight .s, .highlight .sa, .highlight .sc, .highlight .dl, .highlight .sd, .highlight .s2, .highlight .se, .highlight .sh, .highlight .sx, .highlight .s1, .highlight .ss {
    color: #a5d6ff;
  }
  .highlight .nd {
    color: #d2a8ff;
  }
  .highlight .nf, .highlight .fm {
    color: #d2a8ff;
  }
  .highlight .err {
    color: #f0f6fc;
    background-color: #8e1519;
  }
  .highlight .c, .highlight .ch, .highlight .cd, .highlight .cm, .highlight .cp, .highlight .cpf, .highlight .c1, .highlight .cs {
    color: #8b949e;
  }
  .highlight .gl {
    color: #8b949e;
  }
  .highlight .gt {
    color: #8b949e;
  }
  .highlight .ni {
    color: #c9d1d9;
  }
  .highlight .si {
    color: #c9d1d9;
  }
  .highlight .ge {
    color: #c9d1d9;
    font-style: italic;
  }
  .highlight .gs {
    color: #c9d1d9;
    font-weight: bold;
  }"

  attr_reader :code, :attrs, :clipboard

  def initialize(code: "def hello_world\n  puts \"Hello, worldzzzz!\"\nend", syntax: :ruby, clipboard: false, clipboard_success: "Copied!", clipboard_error: "Copy failed!", **attrs)
    @code = FORMATTER.format(Rouge::Lexer.find(syntax.to_sym).lex(code)).html_safe
    @clipboard = clipboard
    @attrs = "highlight text-sm max-h-[350px] after:content-none flex font-mono overflow-auto overflow-x rounded-md border !bg-stone-900 [&_pre]:p-4"
    @clipboard_success = clipboard_success
    @clipboard_error = clipboard_error
  end

  def style_tag
    content_tag :style, CUSTOM_CSS.html_safe
  end
end
