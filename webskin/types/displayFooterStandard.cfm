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
						<li><a href="http://discourse.farcrycore.org/c/blog">FarCry Core Blog</a></li>
						<li><a href="http://discourse.farcrycore.org/">FarCry Core Forum</a></li>
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
									topicLink       = 'http://discourse.farcrycore.org/t/' + topic.slug + '/' + topic.id;

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


			// $.ajax('https://discourse.farcrycore.org/c/blog/l/latest.json').then(function (result) {
			// 	$('##farcryblog').discourse(result);
			// });

			var result = `
{
    "primary_groups": [],
    "topic_list": {
        "can_create_topic": false,
        "draft": null,
        "draft_key": "new_topic",
        "draft_sequence": null,
        "per_page": 30,
        "topics": [
            {
                "archetype": "regular",
                "archived": false,
                "bookmarked": null,
                "bumped": true,
                "bumped_at": "2014-05-06T02:18:46.120Z",
                "category_id": 12,
                "closed": false,
                "created_at": "2014-05-05T04:07:19.886Z",
                "excerpt": "11 years in the making, the long anticipated Shiny release is available.  FarCry 7.0 is an incredible achievement; an enterprise level web publishing platform with incredible flexibility. &##39;Tailor made content management&##39;&hellip;",
                "fancy_title": "FarCry 7 (codename: Shiny) released",
                "featured_link": null,
                "has_summary": false,
                "highest_post_number": 3,
                "id": 120,
                "image_url": "//discourse.farcrycore.org.s3.amazonaws.com/60fb5115cf68f74a0ef22d2c4bb2049ea1a69f576d_569x500.png",
                "last_posted_at": "2014-05-06T02:18:46.120Z",
                "last_poster_username": "modius",
                "like_count": 4,
                "liked": null,
                "pinned": true,
                "pinned_globally": true,
                "posters": [
                    {
                        "description": "Original Poster, Most Recent Poster",
                        "extras": "latest single",
                        "primary_group_id": null,
                        "user_id": 1
                    }
                ],
                "posts_count": 3,
                "reply_count": 0,
                "slug": "farcry-7-codename-shiny-released",
                "title": "FarCry 7 (codename: Shiny) released",
                "unpinned": null,
                "unseen": false,
                "views": 1822,
                "visible": true
            },
            {
                "archetype": "regular",
                "archived": false,
                "bookmarked": null,
                "bumped": true,
                "bumped_at": "2014-04-28T06:18:00.007Z",
                "category_id": 12,
                "closed": false,
                "created_at": "2014-04-28T06:18:00.006Z",
                "excerpt": "FarCry Core Committers blog uses this forum for comments: blog posts appear here, comments appear there -- you get the drift [smile]",
                "fancy_title": "About the blog category",
                "featured_link": null,
                "has_summary": false,
                "highest_post_number": 1,
                "id": 71,
                "image_url": "/plugins/emoji/images/smile.png",
                "last_posted_at": null,
                "last_poster_username": "modius",
                "like_count": 0,
                "liked": null,
                "pinned": true,
                "pinned_globally": false,
                "posters": [
                    {
                        "description": "Original Poster, Most Recent Poster",
                        "extras": "latest single",
                        "primary_group_id": null,
                        "user_id": 1
                    }
                ],
                "posts_count": 1,
                "reply_count": 0,
                "slug": "about-the-blog-category",
                "title": "About the blog category",
                "unpinned": null,
                "unseen": false,
                "views": 528,
                "visible": true
            },
            {
                "archetype": "regular",
                "archived": false,
                "bookmarked": null,
                "bumped": true,
                "bumped_at": "2017-02-09T03:37:25.259Z",
                "category_id": 12,
                "closed": false,
                "created_at": "2017-02-08T07:12:59.159Z",
                "fancy_title": "Localhost FM podcast talks Docker apps running FarCry",
                "featured_link": null,
                "has_summary": false,
                "highest_post_number": 3,
                "id": 842,
                "image_url": "//discourse.farcrycore.org.s3.amazonaws.com/optimized/1X/5ecc085eb5b92047382058c4c02c64e2a8d094b9_1_689x144.jpg",
                "last_posted_at": "2017-02-09T03:37:25.259Z",
                "last_poster_username": "justincarter",
                "like_count": 2,
                "liked": null,
                "pinned": false,
                "pinned_globally": false,
                "posters": [
                    {
                        "description": "Original Poster",
                        "extras": null,
                        "primary_group_id": null,
                        "user_id": 1
                    },
                    {
                        "description": "Frequent Poster",
                        "extras": null,
                        "primary_group_id": null,
                        "user_id": 15
                    },
                    {
                        "description": "Most Recent Poster",
                        "extras": "latest",
                        "primary_group_id": null,
                        "user_id": 3
                    }
                ],
                "posts_count": 3,
                "reply_count": 0,
                "slug": "localhost-fm-podcast-talks-docker-apps-running-farcry",
                "title": "Localhost FM podcast talks Docker apps running FarCry",
                "unpinned": null,
                "unseen": false,
                "views": 107,
                "visible": true
            },
            {
                "archetype": "regular",
                "archived": false,
                "bookmarked": null,
                "bumped": true,
                "bumped_at": "2017-01-07T01:29:38.983Z",
                "category_id": 12,
                "closed": false,
                "created_at": "2017-01-07T01:29:38.329Z",
                "fancy_title": "Plugins Galore; REST, Social Logins, S3 Upload",
                "featured_link": null,
                "has_summary": false,
                "highest_post_number": 1,
                "id": 800,
                "image_url": null,
                "last_posted_at": "2017-01-07T01:29:38.983Z",
                "last_poster_username": "modius",
                "like_count": 2,
                "liked": null,
                "pinned": false,
                "pinned_globally": false,
                "posters": [
                    {
                        "description": "Original Poster, Most Recent Poster",
                        "extras": "latest single",
                        "primary_group_id": null,
                        "user_id": 1
                    }
                ],
                "posts_count": 1,
                "reply_count": 0,
                "slug": "plugins-galore-rest-social-logins-s3-upload",
                "title": "Plugins Galore; REST, Social Logins, S3 Upload",
                "unpinned": null,
                "unseen": false,
                "views": 87,
                "visible": true
            },
            {
                "archetype": "regular",
                "archived": false,
                "bookmarked": null,
                "bumped": true,
                "bumped_at": "2015-12-11T01:58:04.963Z",
                "category_id": 12,
                "closed": false,
                "created_at": "2015-12-11T01:23:31.324Z",
                "fancy_title": "FarCry 7.x Contributor Guide · farcrycore",
                "featured_link": null,
                "has_summary": false,
                "highest_post_number": 2,
                "id": 508,
                "image_url": "//discourse.farcrycore.org.s3.amazonaws.com/original/1X/8e16976406b5a3ff1be1a95b73eeef5bcd985f5d.jpg",
                "last_posted_at": "2015-12-11T01:58:04.963Z",
                "last_poster_username": "modius",
                "like_count": 0,
                "liked": null,
                "pinned": false,
                "pinned_globally": false,
                "posters": [
                    {
                        "description": "Original Poster, Most Recent Poster",
                        "extras": "latest single",
                        "primary_group_id": null,
                        "user_id": 1
                    }
                ],
                "posts_count": 2,
                "reply_count": 0,
                "slug": "farcry-7-x-contributor-guide-farcrycore",
                "title": "FarCry 7.x Contributor Guide · farcrycore",
                "unpinned": null,
                "unseen": false,
                "views": 570,
                "visible": true
            },
            {
                "archetype": "regular",
                "archived": false,
                "bookmarked": null,
                "bumped": true,
                "bumped_at": "2015-12-11T01:03:16.665Z",
                "category_id": 12,
                "closed": false,
                "created_at": "2015-12-11T01:03:16.556Z",
                "fancy_title": "FarCry COAPI Helicopter View · farcrycore",
                "featured_link": null,
                "has_summary": false,
                "highest_post_number": 1,
                "id": 507,
                "image_url": "//discourse.farcrycore.org.s3.amazonaws.com/optimized/1X/626eb0d2b2b91c4bf30de9f8f33f54767217f9fa_1_470x500.png",
                "last_posted_at": "2015-12-11T01:03:16.665Z",
                "last_poster_username": "modius",
                "like_count": 0,
                "liked": null,
                "pinned": false,
                "pinned_globally": false,
                "posters": [
                    {
                        "description": "Original Poster, Most Recent Poster",
                        "extras": "latest single",
                        "primary_group_id": null,
                        "user_id": 1
                    }
                ],
                "posts_count": 1,
                "reply_count": 0,
                "slug": "farcry-coapi-helicopter-view-farcrycore",
                "title": "FarCry COAPI Helicopter View · farcrycore",
                "unpinned": null,
                "unseen": false,
                "views": 517,
                "visible": true
            },
            {
                "archetype": "regular",
                "archived": false,
                "bookmarked": null,
                "bumped": true,
                "bumped_at": "2015-04-27T00:58:10.589Z",
                "category_id": 12,
                "closed": false,
                "created_at": "2015-04-24T07:25:14.210Z",
                "fancy_title": "FarCry Core 7.1 Release",
                "featured_link": null,
                "has_summary": false,
                "highest_post_number": 2,
                "id": 386,
                "image_url": null,
                "last_posted_at": "2015-04-27T00:58:10.589Z",
                "last_poster_username": "modius",
                "like_count": 0,
                "liked": null,
                "pinned": false,
                "pinned_globally": false,
                "posters": [
                    {
                        "description": "Original Poster, Most Recent Poster",
                        "extras": "latest single",
                        "primary_group_id": null,
                        "user_id": 1
                    }
                ],
                "posts_count": 2,
                "reply_count": 0,
                "slug": "farcry-core-7-1-release",
                "title": "FarCry Core 7.1 Release",
                "unpinned": null,
                "unseen": false,
                "views": 710,
                "visible": true
            },
            {
                "archetype": "regular",
                "archived": false,
                "bookmarked": null,
                "bumped": true,
                "bumped_at": "2015-02-24T06:15:50.024Z",
                "category_id": 12,
                "closed": false,
                "created_at": "2015-02-23T01:03:31.429Z",
                "fancy_title": "FarCry Workbench Project",
                "featured_link": null,
                "has_summary": false,
                "highest_post_number": 19,
                "id": 349,
                "image_url": null,
                "last_posted_at": "2015-02-24T06:15:50.024Z",
                "last_poster_username": "modius",
                "like_count": 4,
                "liked": null,
                "pinned": false,
                "pinned_globally": false,
                "posters": [
                    {
                        "description": "Original Poster, Most Recent Poster",
                        "extras": "latest",
                        "primary_group_id": null,
                        "user_id": 1
                    },
                    {
                        "description": "Frequent Poster",
                        "extras": null,
                        "primary_group_id": null,
                        "user_id": 19
                    }
                ],
                "posts_count": 19,
                "reply_count": 14,
                "slug": "farcry-workbench-project",
                "title": "FarCry Workbench Project",
                "unpinned": null,
                "unseen": false,
                "views": 1936,
                "visible": true
            },
            {
                "archetype": "regular",
                "archived": false,
                "bookmarked": null,
                "bumped": true,
                "bumped_at": "2015-02-23T01:03:31.931Z",
                "category_id": 12,
                "closed": false,
                "created_at": "2015-02-04T09:35:45.473Z",
                "fancy_title": "Farcry 7.0 Maintenance Releases",
                "featured_link": null,
                "has_summary": false,
                "highest_post_number": 1,
                "id": 335,
                "image_url": null,
                "last_posted_at": "2015-02-04T09:35:45.563Z",
                "last_poster_username": "modius",
                "like_count": 1,
                "liked": null,
                "pinned": false,
                "pinned_globally": false,
                "posters": [
                    {
                        "description": "Original Poster, Most Recent Poster",
                        "extras": "latest single",
                        "primary_group_id": null,
                        "user_id": 1
                    }
                ],
                "posts_count": 1,
                "reply_count": 0,
                "slug": "farcry-7-0-maintenance-releases",
                "title": "Farcry 7.0 Maintenance Releases",
                "unpinned": null,
                "unseen": false,
                "views": 600,
                "visible": true
            },
            {
                "archetype": "regular",
                "archived": false,
                "bookmarked": null,
                "bumped": true,
                "bumped_at": "2014-05-17T05:51:28.628Z",
                "category_id": 12,
                "closed": false,
                "created_at": "2014-05-10T07:21:17.453Z",
                "fancy_title": "True Blue FarCry Core Website",
                "featured_link": null,
                "has_summary": false,
                "highest_post_number": 2,
                "id": 135,
                "image_url": "//discourse.farcrycore.org.s3.amazonaws.com/714571c297c175856b0e1b75be68f3bafd61067772_204x499.png",
                "last_posted_at": "2014-05-17T05:51:28.628Z",
                "last_poster_username": "modius",
                "like_count": 1,
                "liked": null,
                "pinned": false,
                "pinned_globally": false,
                "posters": [
                    {
                        "description": "Original Poster, Most Recent Poster",
                        "extras": "latest single",
                        "primary_group_id": null,
                        "user_id": 1
                    }
                ],
                "posts_count": 2,
                "reply_count": 0,
                "slug": "true-blue-farcry-core-website",
                "title": "True Blue FarCry Core Website",
                "unpinned": null,
                "unseen": false,
                "views": 609,
                "visible": true
            },
            {
                "archetype": "regular",
                "archived": false,
                "bookmarked": null,
                "bumped": true,
                "bumped_at": "2014-04-29T18:57:18.251Z",
                "category_id": 12,
                "closed": false,
                "created_at": "2014-04-29T05:55:47.542Z",
                "fancy_title": "FarCry Developer Cheat Sheet v0.1",
                "featured_link": null,
                "has_summary": false,
                "highest_post_number": 3,
                "id": 88,
                "image_url": "//discourse.farcrycore.org.s3.amazonaws.com/311e454639611bd12f463ea7f218643228b5d025b2e.jpg",
                "last_posted_at": "2014-04-29T18:57:18.251Z",
                "last_poster_username": "trondulseth",
                "like_count": 2,
                "liked": null,
                "pinned": false,
                "pinned_globally": false,
                "posters": [
                    {
                        "description": "Original Poster",
                        "extras": null,
                        "primary_group_id": null,
                        "user_id": 1
                    },
                    {
                        "description": "Most Recent Poster",
                        "extras": "latest",
                        "primary_group_id": null,
                        "user_id": 13
                    }
                ],
                "posts_count": 3,
                "reply_count": 0,
                "slug": "farcry-developer-cheat-sheet-v0-1",
                "title": "FarCry Developer Cheat Sheet v0.1",
                "unpinned": null,
                "unseen": false,
                "views": 688,
                "visible": true
            },
            {
                "archetype": "regular",
                "archived": false,
                "bookmarked": null,
                "bumped": true,
                "bumped_at": "2014-04-29T08:07:40.347Z",
                "category_id": 12,
                "closed": false,
                "created_at": "2014-04-29T02:18:45.252Z",
                "fancy_title": "Fandango Web Design",
                "featured_link": null,
                "has_summary": false,
                "highest_post_number": 1,
                "id": 84,
                "image_url": "//discourse.farcrycore.org.s3.amazonaws.com/348d077cdb53165fc5c2f552078df36bcbc54d850f_600x500.png",
                "last_posted_at": "2014-04-29T02:18:45.292Z",
                "last_poster_username": "modius",
                "like_count": 0,
                "liked": null,
                "pinned": false,
                "pinned_globally": false,
                "posters": [
                    {
                        "description": "Original Poster, Most Recent Poster",
                        "extras": "latest single",
                        "primary_group_id": null,
                        "user_id": 1
                    }
                ],
                "posts_count": 1,
                "reply_count": 0,
                "slug": "fandango-web-design",
                "title": "Fandango Web Design",
                "unpinned": null,
                "unseen": false,
                "views": 568,
                "visible": true
            },
            {
                "archetype": "regular",
                "archived": false,
                "bookmarked": null,
                "bumped": true,
                "bumped_at": "2014-04-29T06:04:26.309Z",
                "category_id": 12,
                "closed": false,
                "created_at": "2014-04-29T02:18:45.609Z",
                "fancy_title": "FarCry Repos Now On Github",
                "featured_link": null,
                "has_summary": false,
                "highest_post_number": 1,
                "id": 86,
                "image_url": null,
                "last_posted_at": "2014-04-29T02:18:45.652Z",
                "last_poster_username": "modius",
                "like_count": 0,
                "liked": null,
                "pinned": false,
                "pinned_globally": false,
                "posters": [
                    {
                        "description": "Original Poster, Most Recent Poster",
                        "extras": "latest single",
                        "primary_group_id": null,
                        "user_id": 1
                    }
                ],
                "posts_count": 1,
                "reply_count": 0,
                "slug": "farcry-repos-now-on-github",
                "title": "FarCry Repos Now On Github",
                "unpinned": null,
                "unseen": false,
                "views": 559,
                "visible": true
            },
            {
                "archetype": "regular",
                "archived": false,
                "bookmarked": null,
                "bumped": true,
                "bumped_at": "2014-04-29T05:01:35.759Z",
                "category_id": 12,
                "closed": false,
                "created_at": "2014-04-29T02:18:45.488Z",
                "fancy_title": "Friendly URLs on NGINX",
                "featured_link": null,
                "has_summary": false,
                "highest_post_number": 1,
                "id": 85,
                "image_url": null,
                "last_posted_at": "2014-04-29T02:18:45.534Z",
                "last_poster_username": "modius",
                "like_count": 0,
                "liked": null,
                "pinned": false,
                "pinned_globally": false,
                "posters": [
                    {
                        "description": "Original Poster, Most Recent Poster",
                        "extras": "latest single",
                        "primary_group_id": null,
                        "user_id": 1
                    }
                ],
                "posts_count": 1,
                "reply_count": 0,
                "slug": "friendly-urls-on-nginx",
                "title": "Friendly URLs on NGINX",
                "unpinned": null,
                "unseen": false,
                "views": 664,
                "visible": true
            },
            {
                "archetype": "regular",
                "archived": false,
                "bookmarked": null,
                "bumped": true,
                "bumped_at": "2014-04-29T05:01:35.557Z",
                "category_id": 12,
                "closed": false,
                "created_at": "2014-04-29T02:18:45.123Z",
                "fancy_title": "simpleNav replacement for genericNav",
                "featured_link": null,
                "has_summary": false,
                "highest_post_number": 1,
                "id": 83,
                "image_url": null,
                "last_posted_at": "2014-04-29T02:18:45.176Z",
                "last_poster_username": "modius",
                "like_count": 0,
                "liked": null,
                "pinned": false,
                "pinned_globally": false,
                "posters": [
                    {
                        "description": "Original Poster, Most Recent Poster",
                        "extras": "latest single",
                        "primary_group_id": null,
                        "user_id": 1
                    }
                ],
                "posts_count": 1,
                "reply_count": 0,
                "slug": "simplenav-replacement-for-genericnav",
                "title": "simpleNav replacement for genericNav",
                "unpinned": null,
                "unseen": false,
                "views": 544,
                "visible": true
            },
            {
                "archetype": "regular",
                "archived": false,
                "bookmarked": null,
                "bumped": true,
                "bumped_at": "2014-04-29T05:01:35.276Z",
                "category_id": 12,
                "closed": false,
                "created_at": "2014-04-29T02:18:44.882Z",
                "fancy_title": "Default Password Encoding for FarCry Users",
                "featured_link": null,
                "has_summary": false,
                "highest_post_number": 1,
                "id": 81,
                "image_url": null,
                "last_posted_at": "2014-04-29T02:18:44.929Z",
                "last_poster_username": "modius",
                "like_count": 0,
                "liked": null,
                "pinned": false,
                "pinned_globally": false,
                "posters": [
                    {
                        "description": "Original Poster, Most Recent Poster",
                        "extras": "latest single",
                        "primary_group_id": null,
                        "user_id": 1
                    }
                ],
                "posts_count": 1,
                "reply_count": 0,
                "slug": "default-password-encoding-for-farcry-users",
                "title": "Default Password Encoding for FarCry Users",
                "unpinned": null,
                "unseen": false,
                "views": 607,
                "visible": true
            },
            {
                "archetype": "regular",
                "archived": false,
                "bookmarked": null,
                "bumped": true,
                "bumped_at": "2014-04-29T05:01:35.180Z",
                "category_id": 12,
                "closed": false,
                "created_at": "2014-04-29T02:18:44.756Z",
                "fancy_title": "FarCry 7.0: Shiny progress with &lsquo;Seedy Nelly&rsquo;",
                "featured_link": null,
                "has_summary": false,
                "highest_post_number": 1,
                "id": 80,
                "image_url": null,
                "last_posted_at": "2014-04-29T02:18:44.811Z",
                "last_poster_username": "modius",
                "like_count": 1,
                "liked": null,
                "pinned": false,
                "pinned_globally": false,
                "posters": [
                    {
                        "description": "Original Poster, Most Recent Poster",
                        "extras": "latest single",
                        "primary_group_id": null,
                        "user_id": 1
                    }
                ],
                "posts_count": 1,
                "reply_count": 0,
                "slug": "farcry-7-0-shiny-progress-with-seedy-nelly",
                "title": "FarCry 7.0: Shiny progress with Seedy Nelly",
                "unpinned": null,
                "unseen": false,
                "views": 549,
                "visible": true
            },
            {
                "archetype": "regular",
                "archived": false,
                "bookmarked": null,
                "bumped": true,
                "bumped_at": "2014-04-29T02:32:57.350Z",
                "category_id": 12,
                "closed": false,
                "created_at": "2014-04-29T02:18:44.999Z",
                "fancy_title": "Posterous FarCry Blog Archive",
                "featured_link": null,
                "has_summary": false,
                "highest_post_number": 2,
                "id": 82,
                "image_url": null,
                "last_posted_at": "2014-04-29T02:32:57.350Z",
                "last_poster_username": "modius",
                "like_count": 0,
                "liked": null,
                "pinned": false,
                "pinned_globally": false,
                "posters": [
                    {
                        "description": "Original Poster, Most Recent Poster",
                        "extras": "latest single",
                        "primary_group_id": null,
                        "user_id": 1
                    }
                ],
                "posts_count": 2,
                "reply_count": 0,
                "slug": "posterous-farcry-blog-archive",
                "title": "Posterous FarCry Blog Archive",
                "unpinned": null,
                "unseen": false,
                "views": 579,
                "visible": true
            }
        ]
    },
    "users": [
        {
            "avatar_template": "/user_avatar/discourse.farcrycore.org/modius/{size}/169_1.png",
            "id": 1,
            "username": "modius"
        },
        {
            "avatar_template": "/user_avatar/discourse.farcrycore.org/chris_kent/{size}/695_1.png",
            "id": 15,
            "username": "Chris_Kent"
        },
        {
            "avatar_template": "/user_avatar/discourse.farcrycore.org/justincarter/{size}/171_1.png",
            "id": 3,
            "username": "justincarter"
        },
        {
            "avatar_template": "/user_avatar/discourse.farcrycore.org/seancoyne/{size}/186_1.png",
            "id": 19,
            "username": "seancoyne"
        },
        {
            "avatar_template": "/user_avatar/discourse.farcrycore.org/trondulseth/{size}/180_1.png",
            "id": 13,
            "username": "trondulseth"
        }
    ]
}
				`;
				$('##farcryblog').discourse(JSON.parse(result));

			});
		</script>

</body>
</html>
</cfoutput>

<cfsetting enablecfoutputonly="false">