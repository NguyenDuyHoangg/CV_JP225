/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.80
 * Generated at: 2023-11-26 12:34:48 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class business_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    if (!javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET, POST or HEAD. Jasper also permits OPTIONS");
        return;
      }
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("<!-- ======= Business Category Section ======= -->\r\n");
      out.write("    <section class=\"category-section\">\r\n");
      out.write("      <div class=\"container\" data-aos=\"fade-up\">\r\n");
      out.write("\r\n");
      out.write("        <div class=\"section-header d-flex justify-content-between align-items-center mb-5\">\r\n");
      out.write("          <h2>Business</h2>\r\n");
      out.write("          <div><a href=\"category.html\" class=\"more\">See All Business</a></div>\r\n");
      out.write("        </div>\r\n");
      out.write("\r\n");
      out.write("        <div class=\"row\">\r\n");
      out.write("          <div class=\"col-md-9 order-md-2\">\r\n");
      out.write("\r\n");
      out.write("            <div class=\"d-lg-flex post-entry-2\">\r\n");
      out.write("              <a href=\"single-post.html\" class=\"me-4 thumbnail d-inline-block mb-4 mb-lg-0\">\r\n");
      out.write("                <img src=\"/home/img/post-landscape-3.jpg\" alt=\"\" class=\"img-fluid\">\r\n");
      out.write("              </a>\r\n");
      out.write("              <div>\r\n");
      out.write("                <div class=\"post-meta\"><span class=\"date\">Business</span> <span class=\"mx-1\">&bullet;</span> <span>Jul 5th '22</span></div>\r\n");
      out.write("                <h3><a href=\"single-post.html\">What is the son of Football Coach John Gruden, Deuce Gruden doing Now?</a></h3>\r\n");
      out.write("                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Distinctio placeat exercitationem magni voluptates dolore. Tenetur fugiat voluptates quas, nobis error deserunt aliquam temporibus sapiente, laudantium dolorum itaque libero eos deleniti?</p>\r\n");
      out.write("                <div class=\"d-flex align-items-center author\">\r\n");
      out.write("                  <div class=\"photo\"><img src=\"/home/img/person-4.jpg\" alt=\"\" class=\"img-fluid\"></div>\r\n");
      out.write("                  <div class=\"name\">\r\n");
      out.write("                    <h3 class=\"m-0 p-0\">Wade Warren</h3>\r\n");
      out.write("                  </div>\r\n");
      out.write("                </div>\r\n");
      out.write("              </div>\r\n");
      out.write("            </div>\r\n");
      out.write("\r\n");
      out.write("            <div class=\"row\">\r\n");
      out.write("              <div class=\"col-lg-4\">\r\n");
      out.write("                <div class=\"post-entry-1 border-bottom\">\r\n");
      out.write("                  <a href=\"single-post.html\"><img src=\"/home/img/post-landscape-5.jpg\" alt=\"\" class=\"img-fluid\"></a>\r\n");
      out.write("                  <div class=\"post-meta\"><span class=\"date\">Business</span> <span class=\"mx-1\">&bullet;</span> <span>Jul 5th '22</span></div>\r\n");
      out.write("                  <h2 class=\"mb-2\"><a href=\"single-post.html\">11 Work From Home Part-Time Jobs You Can Do Now</a></h2>\r\n");
      out.write("                  <span class=\"author mb-3 d-block\">Jenny Wilson</span>\r\n");
      out.write("                  <p class=\"mb-4 d-block\">Lorem ipsum dolor sit, amet consectetur adipisicing elit. Vero temporibus repudiandae, inventore pariatur numquam cumque possimus</p>\r\n");
      out.write("                </div>\r\n");
      out.write("\r\n");
      out.write("                <div class=\"post-entry-1\">\r\n");
      out.write("                  <div class=\"post-meta\"><span class=\"date\">Business</span> <span class=\"mx-1\">&bullet;</span> <span>Jul 5th '22</span></div>\r\n");
      out.write("                  <h2 class=\"mb-2\"><a href=\"single-post.html\">5 Great Startup Tips for Female Founders</a></h2>\r\n");
      out.write("                  <span class=\"author mb-3 d-block\">Jenny Wilson</span>\r\n");
      out.write("                </div>\r\n");
      out.write("              </div>\r\n");
      out.write("              <div class=\"col-lg-8\">\r\n");
      out.write("                <div class=\"post-entry-1\">\r\n");
      out.write("                  <a href=\"single-post.html\"><img src=\"/home/img/post-landscape-7.jpg\" alt=\"\" class=\"img-fluid\"></a>\r\n");
      out.write("                  <div class=\"post-meta\"><span class=\"date\">Business</span> <span class=\"mx-1\">&bullet;</span> <span>Jul 5th '22</span></div>\r\n");
      out.write("                  <h2 class=\"mb-2\"><a href=\"single-post.html\">How to Avoid Distraction and Stay Focused During Video Calls?</a></h2>\r\n");
      out.write("                  <span class=\"author mb-3 d-block\">Jenny Wilson</span>\r\n");
      out.write("                  <p class=\"mb-4 d-block\">Lorem ipsum dolor sit, amet consectetur adipisicing elit. Vero temporibus repudiandae, inventore pariatur numquam cumque possimus</p>\r\n");
      out.write("                </div>\r\n");
      out.write("              </div>\r\n");
      out.write("            </div>\r\n");
      out.write("          </div>\r\n");
      out.write("          <div class=\"col-md-3\">\r\n");
      out.write("            <div class=\"post-entry-1 border-bottom\">\r\n");
      out.write("              <div class=\"post-meta\"><span class=\"date\">Business</span> <span class=\"mx-1\">&bullet;</span> <span>Jul 5th '22</span></div>\r\n");
      out.write("              <h2 class=\"mb-2\"><a href=\"single-post.html\">How to Avoid Distraction and Stay Focused During Video Calls?</a></h2>\r\n");
      out.write("              <span class=\"author mb-3 d-block\">Jenny Wilson</span>\r\n");
      out.write("            </div>\r\n");
      out.write("\r\n");
      out.write("            <div class=\"post-entry-1 border-bottom\">\r\n");
      out.write("              <div class=\"post-meta\"><span class=\"date\">Business</span> <span class=\"mx-1\">&bullet;</span> <span>Jul 5th '22</span></div>\r\n");
      out.write("              <h2 class=\"mb-2\"><a href=\"single-post.html\">17 Pictures of Medium Length Hair in Layers That Will Inspire Your New Haircut</a></h2>\r\n");
      out.write("              <span class=\"author mb-3 d-block\">Jenny Wilson</span>\r\n");
      out.write("            </div>\r\n");
      out.write("\r\n");
      out.write("            <div class=\"post-entry-1 border-bottom\">\r\n");
      out.write("              <div class=\"post-meta\"><span class=\"date\">Business</span> <span class=\"mx-1\">&bullet;</span> <span>Jul 5th '22</span></div>\r\n");
      out.write("              <h2 class=\"mb-2\"><a href=\"single-post.html\">9 Half-up/half-down Hairstyles for Long and Medium Hair</a></h2>\r\n");
      out.write("              <span class=\"author mb-3 d-block\">Jenny Wilson</span>\r\n");
      out.write("            </div>\r\n");
      out.write("\r\n");
      out.write("            <div class=\"post-entry-1 border-bottom\">\r\n");
      out.write("              <div class=\"post-meta\"><span class=\"date\">Business</span> <span class=\"mx-1\">&bullet;</span> <span>Jul 5th '22</span></div>\r\n");
      out.write("              <h2 class=\"mb-2\"><a href=\"single-post.html\">Life Insurance And Pregnancy: A Working Mom’s Guide</a></h2>\r\n");
      out.write("              <span class=\"author mb-3 d-block\">Jenny Wilson</span>\r\n");
      out.write("            </div>\r\n");
      out.write("\r\n");
      out.write("            <div class=\"post-entry-1 border-bottom\">\r\n");
      out.write("              <div class=\"post-meta\"><span class=\"date\">Business</span> <span class=\"mx-1\">&bullet;</span> <span>Jul 5th '22</span></div>\r\n");
      out.write("              <h2 class=\"mb-2\"><a href=\"single-post.html\">The Best Homemade Masks for Face (keep the Pimples Away)</a></h2>\r\n");
      out.write("              <span class=\"author mb-3 d-block\">Jenny Wilson</span>\r\n");
      out.write("            </div>\r\n");
      out.write("\r\n");
      out.write("            <div class=\"post-entry-1 border-bottom\">\r\n");
      out.write("              <div class=\"post-meta\"><span class=\"date\">Business</span> <span class=\"mx-1\">&bullet;</span> <span>Jul 5th '22</span></div>\r\n");
      out.write("              <h2 class=\"mb-2\"><a href=\"single-post.html\">10 Life-Changing Hacks Every Working Mom Should Know</a></h2>\r\n");
      out.write("              <span class=\"author mb-3 d-block\">Jenny Wilson</span>\r\n");
      out.write("            </div>\r\n");
      out.write("          </div>\r\n");
      out.write("        </div>\r\n");
      out.write("      </div>\r\n");
      out.write("    </section><!-- End Business Category Section -->");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
