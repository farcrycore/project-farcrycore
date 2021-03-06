<cfsetting enablecfoutputonly="true">
<!--- @@displayname: Standard Footer --->


<cfoutput>
	<section class="section section-feature-light">
		<div class="container">
			<h2>Open source, GPL dual-licensed</h2>
			<p class="lead">
				FarCry Core is open source. We use GitHub and Atlassian JIRA to manage our code base.<br>
				<br>
				<a href="https://github.com/farcrycore/core" class="btn btn-default">View the GitHub repo</a>
				<a href="https://farcry.jira.com/browse/FC" class="btn btn-default">View the JIRA project</a>
			</p>
		</div>
	</section>


	<section class="section section-feature-commercial">
		<div class="container">
			<h2>Commercial licensing and professional support</h2>
			<p class="lead">
				Daemon provides bespoke application development services, instructor led training courses &amp; mentoring, and commercial FarCry Core licenses.<br>
				<br>
				<a href="http://www.daemon.com.au/services" class="btn btn-default">View Support Services</a>
				<a href="http://www.daemon.com.au/services/farcry-platform/farcry-developer-training-course" class="btn btn-default">View Training Courses</a>
				<a href="/licensing" class="btn btn-default">View Licensing Information</a>
			</p>
		</div>
	</section>


	<section class="section">
		<div class="container">
			<h2>Built using top class technology</h2>
			<p class="lead">
				<img src="/wsimages/logo-html5.png">
				<img src="/wsimages/logo-css3.png">
				<img src="/wsimages/logo-bootstrap.png">
				<img src="/wsimages/logo-jquery.png">
				<img src="/wsimages/logo-fontawesome.png">
				<img src="/wsimages/logo-github.png">
			</p>

		</div>
	</section>


	<section class="section section-feature">
		<div class="container">

			<div class="row">
				<div class="col-sm-4">
					<h3><i class="fa fa-bookmark"></i> Documentation</h3>
					<ul class="list-unstyled">
						<li><a href="https://github.com/farcrycore">FarCry Core on GitHub</a> <i class="fa fa-github"></i></li>
						<li><a href="https://farcry.jira.com/browse/FC">FarCry Bug Tracker (JIRA)</a></li>
						<li><a href="https://farcry.jira.com/wiki/display/FCDEV60/Home">Documentation Wiki</a></li>
						<li><a href="http://docs.farcrycore.org/">API Documentation</a></li>
						<li><a href="https://farcry.jira.com/wiki/download/attachments/12451867/FC60-training-manual.pdf?version=1&modificationDate=1299903122723&api=v2">Contributor Guide</a></li>
					</ul>
				</div>
				<div class="col-sm-4">
					<h3><i class="fa fa-group"></i> Community</h3>
					<ul class="list-unstyled">
						<li><a href="https://discourse.farcrycore.org/c/blog">FarCry Core Blog</a></li>
						<li><a href="https://discourse.farcrycore.org/">FarCry Core Forum</a></li>
						<li><a href="http://groups.google.com/group/farcry-dev">Old farcry-dev Forum</a></li>
						<li><a href="https://plus.google.com/communities/107650642291146266954">Google+ Community</a> <i class="fa fa-google-plus"></i></li>
						<li><a href="https://twitter.com/farcrycore">@FarCryCore on Twitter</a> <i class="fa fa-twitter"></i></li>
						<li><a href="https://www.ohloh.net/p/farcry">FarCry Core on Ohloh</a></li>
					</ul>
				</div>
				<div class="col-sm-4">
					<h3><i class="fa fa-briefcase"></i> Commercial Support</h3>
					<ul class="list-unstyled">
						<li><a href="http://www.farcrycore.org/licensing/">Commercial Licenses</a></li>
						<li><a href="http://www.daemon.com.au/">Priority Support Services</a></li>
						<li><a href="http://www.daemon.com.au/">Instructor Led Training</a></li>
					</ul>
				</div>
			</div>

		</div>
	</section>


	<section class="section section-feature">
		<div class="container">
			<p class="muted">
				FarCry Core is Copyright &copy; Daemon 2003-#year(now())#.
			</p>
		</div>
	</section>


	<script type="text/javascript" src="/js/jquery-1.9.1.min.js"></script>
	<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
	<script type="text/javascript">
		$(function(){
			$("##fc-logo").addClass("animate");
		});
	</script>

	<script>
		$(document).ready(function () {

			var whitelist = [1];

			$.fn.discourse = function (result) {
				var topicLen = result.topic_list.topics.length,
						topics   = topicLen;

				if (topics > 3) {
					topics = 3;
				}

				for (var i = 0; i < topics; i++) {
					var 	topic     = result.topic_list.topics[i],
							user      = topic.posters[0].user_id,
							verify    = false;

					if (typeof whitelist !== 'undefined') {
						verify = true;

						var verifyUser = false;

						for (var n = 0; n < whitelist.length; n++) {
							if (user == whitelist[n]) {
								verifyUser = true;
								break;
							}
						}
					}

					if (verify && !verifyUser) {
						if (topics < topicLen) {
							topics++;
						}
					}
					else if (topic.pinned == true) {
						topics++;
					} else {
						if (topic.title.substring(0, 9) == "About the") {
							if (topics < topicLen) {
								topics++;
							}
						} else {
							var topicDate       = new Date(topic.created_at),
									topicDateMonths = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'],
									topicImg        = topic.image_url,
									topicLink       = 'https://discourse.farcrycore.org/t/' + topic.slug + '/' + topic.id;

							if (topic.image_url == null) {
								topicImg = 'http://placehold.it/360x222?text=FarCry+Core+Blog';
							}

							var html = '<div class="col-sm-4">'
							+ '   <img src="' + topicImg + '" alt="" class="img-responsive img-border">'
							+ '   <h3><a style="line-height:1.3" href="' + topicLink + '">' + topic.fancy_title + '</h3>'
							//+ '   <p>' + topic.excerpt + '</p>'
							+ '   <p class="muted small" style="text-align: left;"><small>' + topicDate.getDate() + ' ' + topicDateMonths[topicDate.getMonth()] + ' ' + topicDate.getFullYear() + '</small></p>'
							+ ' </div>';


							$(this).append(html);
						}
					}
				}
			};


			$.ajax('https://discourse.farcrycore.org/c/blog/l/latest.json').then(function (result) {
				$('##farcryblog').discourse(result);
			});

		});
	</script>

</body>
</html>
</cfoutput>

<cfsetting enablecfoutputonly="false">