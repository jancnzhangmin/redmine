[![Twitter Follow](https://img.shields.io/badge/follow-twitter-blue.svg)](https://twitter.com/AppDevbert)
[![Twitter URL](https://img.shields.io/twitter/url/http/shields.io.svg?style=social&maxAge=2592000?style=flat-square)](https://twitter.com/intent/tweet?button_hashtag=MegaCalendar)

<h1>mega_calendar</h1>

Plugin for redmine: Brings a better calendar and more oppurtunities to set holidays.<br/>
Only compatible/tested with redmine 3.0.X, 3.1.X, 3.2.X, 3.3.X and Ruby 2.2, Rails 4.2<br/>
Please test this plugin for other redmine versions and let me know if there are any bugs.<br/>

<h2>Installation</h2>

Standard redmine plugin installation: You can read the generic plugin installation guide <a href="http://www.redmine.org/projects/redmine/wiki/Plugins" target="_blank">here</a> or you can use the following guide (Debian 7, Apache2/Passenger).

Go to your redmine plugins-folder<br>
<code>cd /srv/redmine/plugins</code><br>
Download the latest plugin-Version:<br>
<code>wget https://github.com/berti92/mega_calendar/archive/master.zip</code><br>
Unzip the downloaded zip-File<br>
<code>unzip master.zip</code><br>
Rename the folder:<br>
<code>mv mega_calendar-master mega_calendar</code><br>
Give the folder the right privileges in this case apache (to execute the command you must be root)<br>
<code>chown -R www-data.www-data mega_calendar</code><br>
Go back to your redmine folder<br>
<code>cd /srv/redmine</code><br>
Migrate the database<br>
<code>bundle exec rake redmine:plugins:migrate RAILS_ENV=production</code><br>
Now restart your redmine and you can configure the plugin in the admin settings in redmine.<br>
To start redmine under apache2/passenger, please execute the following command <br>
<code>touch tmp/restart.txt</code>

<h2>Usage</h2>

Within a issue you are able to set a time as start and end, to get a better calendar view. On top of the page you can reach the calendar and holiday section.

Please make sure that you set your users, that will be allowed to use this plugin and that the sub-path is set to "/" without quotes at the plugin settings.

<h2>Screenshots</h2>

A quick overview about this plugin, you'll get on <a href="http://mega-calendar.devbert.de/">http://mega-calendar.devbert.de/</a>

<h2>History</h2>

1.3.4: Added ability to create issues from the calendar, just click on a free space on the calendar

1.3.3: Added support for Redmine 3.3.X

1.3.2: Added support for Redmine 3.2.X

1.3.1: Bugfix

1.3.0: Added right for this plugin

1.2.0: Added support for sub paths

1.1.0: Fixed a few bugs, added widget to MyPage

1.0.0: First release

<h2>You like my work?</h2>

If you like my work, you can buy me a coffee (Donate-Button on my <a href="https://berti92.github.io/mega_calendar/">website<a>) or try my new app/game for android:
<a href="http://circle_commander.devbert.de/">Circle commander</a>

<h2>License</h2>

MIT License
