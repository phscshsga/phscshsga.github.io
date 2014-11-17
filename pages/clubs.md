---
layout: page
title: Student Organizations
permalink: /clubs/
---

<table class="table table-striped">
	<thead>
		<tr>
			<th>Organization</th>
			<th>Meetings</th>
			<th>Links</th>
		</tr>
	</thead>

	<tbody>

		{% for org in site.data.orgs %}
		<tr>
			<td>
				{{org.name}} {% if org.abbr %}({{org.abbr}}){% endif %}
			</td>
			<td>{{org.meeting.time}}{% if org.meeting.location %}, {{org.meeting.location}}{% endif %}</td>
			<td>
				{% if org.facebook %}
				<a href="https://facebook.com/{{org.facebook}}" target="_blank" class="btn btn-xs btn-info">
					<i class="fa fa-facebook-square"></i>
				</a>
				{% endif %}
			</td>
		</tr>
		{% endfor %}

	</tbody>
</table>