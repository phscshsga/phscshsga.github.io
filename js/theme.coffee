---
---

$ ->
  
	# sticky footer
	docHeight = $(window).height()
	footerHeight = $("#page-footer").height()
	footerTop = $("#page-footer").position().top + footerHeight
	$("#page-footer").css "margin-top", (docHeight - footerTop) + "px"  if footerTop < docHeight
