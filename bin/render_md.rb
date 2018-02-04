require 'motion-markdown-it'
require 'motion-markdown-it-plugins'

src = open('doc/Design.md').read;

parser = MarkdownIt::Parser.new(:commonmark, { html: false })
  .use(MotionMarkdownItPlugins::CheckboxReplace, {})
  .use(MotionMarkdownItPlugins::HeaderSections, {})

content = parser.render(src);

page = <<-HTML
<html>
  <head>
<style>
body
  {
  font-family: sans;
  color: #444;
  }
h1, h2, h3, h4 { color: #333; }
h1 { font-size: 2em };
blockquote
  {
  font-family: mono;
  }
section
  {
  border: 1px solid #CCC;
  padding: 1em;
  margin: 1em;
  }

/*
 * Can this be simplified with counters()?
 * https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_Lists_and_Counters/Using_CSS_counters
 */
body { counter-reset:level1; }
body > section { counter-increment:level1; }
body > section > h1:before {content: counter(level1) ". " ; }

body > section { counter-reset:level2; }
body > section > section { counter-increment:level2; }
body > section > section > h2:before { content: counter(level1) "." counter(level2) " "; }

body > section > section { counter-reset:level3; }
body > section > section > section { counter-increment:level3; }
body > section > section > section > h3:before { content: counter(level1) "." counter(level2) "." counter(level3) " "; }

body > section > section > section { counter-reset:level4; }
body > section > section > section > section { counter-increment:level4; }
body > section > section > section > section > h4:before { content: counter(level1) "." counter(level2) "." counter(level3) "." counter(level4) " "; }
</style>
</head>
<body>
#{content}
</body>
</html>
HTML

print page;
