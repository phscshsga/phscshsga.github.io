---
layout: page
title: Executive Board
permalink: /exec-board/
---

<table class="table table-striped">
	<thead>
		<tr>
			<th colspan="2" align="left">
				{{site.current_term}} Executive Board Members
			</th>
		</tr>
	</thead>
	<tbody>

		{% for member in site.data.eboard %}

		<tr>
			<td><h3><small>{{member.position}}:</small></h3></td>
			<td><h3>{{member.name}}</h3></td>
		</tr>

		{% endfor %}
		
	</tbody>
</table>