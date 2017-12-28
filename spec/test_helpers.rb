module TestHelpers
	def stub_ndbc_rss
  # This allows the client to talk directly to the mounted rack application without going through HTTP or a web server.
		stub_request(:get, 'http://www.ndbc.noaa.gov/rss/ndbc_obs_search.php?lat=40N&lon=73W&radius=100').
	    with(headers: {'Accept'=>'*/*', 'User-Agent'=>'Ruby'}).
	      to_return(status: 200, body: api_response, headers: { 'Cache-Control' => 'max-age=600, must-revalidate', 'Connection' => 'close', 'Content-Encoding' => 'gzip', 'Content-Length' => 2962, 'Content-Type' => 'text/xml', 'Date' => 'Fri, 29 Dec 2017 23:19:42 GMT', 'Expires' => 'Fri, 29 Dec 2017 23:29:42 GMT', 'Server' => 'Apache', 'Vary' => 'Accept-Encoding' })
	end

	def api_response
		<<-EOS
			<?xml version="1.0"?>
			<?xml-stylesheet type="text/xsl" href="/rss/ndbcrss.xsl"?>
			<rss version="2.0" xmlns:georss="http://www.georss.org/georss" xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:atom="http://www.w3.org/2005/Atom">
			  <channel>
			    <title>NDBC - Station Observations near 40N 73W</title>
			    <description><![CDATA[This feed shows recent marine weather observations from NDBC and its partners within 100 nautical miles of 40N 73W.]]></description>
			    <link>http://www.ndbc.noaa.gov/</link>
			    <pubDate>Fri, 29 Dec 2017 23:19:42 +0000</pubDate>
			    <lastBuildDate>Fri, 29 Dec 2017 23:19:42 +0000</lastBuildDate>
			    <ttl>5</ttl>
			    <language>en-us</language>
			    <managingEditor>webmaster.ndbc@noaa.gov (NDBC Webmaster)</managingEditor>
			    <webMaster>webmaster.ndbc@noaa.gov (NDBC Webmaster)</webMaster>
			    <image>
			      <url>http://www.ndbc.noaa.gov/images/noaa_nws_xml_logo.gif</url>
			      <title>NDBC - Station Observations near 40N 73W</title>
			      <link>http://www.ndbc.noaa.gov/</link>
			    </image>
			    <atom:link href="http://www.ndbc.noaa.gov/rss/ndbc_obs_search.php?lat=40N&amp;lon=73W&amp;radius=100" rel="self" type="application/rss+xml" />
			    
			    <item>
			      <pubDate>Fri, 29 Dec 2017 23:19:42 +0000</pubDate>
			      <title>Station 44025 - LONG ISLAND - 30 NM SOUTH OF ISLIP, NY</title>
			      <description><![CDATA[
			        <strong>December 29, 2017 5:50 pm EST</strong><br />
			        <strong>Location:</strong> 40.251N 73.164W or 17 nautical miles NNW of search location of 40N 73W.<br />
			        <strong>Wind Direction:</strong> NW (310&#176;)<br />
			        <strong>Wind Speed:</strong> 19 knots<br />
			        <strong>Wind Gust:</strong> 25 knots<br />
			        <strong>Significant Wave Height:</strong> 4 ft<br />
			        <strong>Dominant Wave Period:</strong> 5 sec<br />
			        <strong>Average Period:</strong> 4.0 sec<br />
			        <strong>Mean Wave Direction:</strong> WNW (282&#176;)<br />
			        <strong>Atmospheric Pressure:</strong> 30.22 in (1023.5 mb)<br />
			        <strong>Pressure Tendency:</strong> +0.04 in (+1.2 mb)<br />
			        <strong>Air Temperature:</strong> 25&#176;F (-3.9&#176;C)<br />
			        <strong>Water Temperature:</strong> 47&#176;F (8.3&#176;C)<br />
			      ]]></description>
			      <link>http://www.ndbc.noaa.gov/station_page.php?station=44025</link>
			      <guid isPermaLink="false">NDBC-44025-20171229225000</guid>
			      <georss:point>40.251 -73.164</georss:point>
			    </item>
			    
			    <item>
			      <pubDate>Fri, 29 Dec 2017 23:19:41 +0000</pubDate>
			      <title>Station 44066 - TEXAS TOWER #4 - 75 NM EAST OF LONG BEACH, NJ</title>
			      <description><![CDATA[
			        <strong>December 29, 2017 5:50 pm EST</strong><br />
			        <strong>Location:</strong> 39.568N 72.586W or 32 nautical miles SE of search location of 40N 73W.<br />
			        <strong>Wind Direction:</strong> WNW (300&#176;)<br />
			        <strong>Wind Speed:</strong> 23 knots<br />
			        <strong>Wind Gust:</strong> 29 knots<br />
			        <strong>Significant Wave Height:</strong> 5 ft<br />
			        <strong>Dominant Wave Period:</strong> 5 sec<br />
			        <strong>Average Period:</strong> 4.5 sec<br />
			        <strong>Mean Wave Direction:</strong> WNW (295&#176;)<br />
			        <strong>Atmospheric Pressure:</strong> 30.20 in (1022.8 mb)<br />
			        <strong>Pressure Tendency:</strong> +0.03 in (+1.1 mb)<br />
			        <strong>Air Temperature:</strong> 29&#176;F (-1.7&#176;C)<br />
			        <strong>Dew Point:</strong> 19&#176;F (-7.5&#176;C)<br />
			        <strong>Water Temperature:</strong> 54&#176;F (12.0&#176;C)<br />
			      ]]></description>
			      <link>http://www.ndbc.noaa.gov/station_page.php?station=44066</link>
			      <guid isPermaLink="false">NDBC-44066-20171229225000</guid>
			      <georss:point>39.568 -72.586</georss:point>
			    </item>
			    <item>
			      <pubDate>Fri, 29 Dec 2017 23:19:40 +0000</pubDate>
			      <title>Station 44065 - NEW YORK HARBOR ENTRANCE - 15 NM SE OF BREEZY POINT , NY</title>
			      <description><![CDATA[
			        <strong>December 29, 2017 5:50 pm EST</strong><br />
			        <strong>Location:</strong> 40.369N 73.703W or 39 nautical miles NW of search location of 40N 73W.<br />
			        <strong>Wind Direction:</strong> WNW (300&#176;)<br />
			        <strong>Wind Speed:</strong> 19 knots<br />
			        <strong>Wind Gust:</strong> 27 knots<br />
			        <strong>Significant Wave Height:</strong> 3 ft<br />
			        <strong>Dominant Wave Period:</strong> 4 sec<br />
			        <strong>Average Period:</strong> 3.6 sec<br />
			        <strong>Mean Wave Direction:</strong> WNW (298&#176;)<br />
			        <strong>Atmospheric Pressure:</strong> 30.23 in (1023.7 mb)<br />
			        <strong>Pressure Tendency:</strong> +0.04 in (+1.4 mb)<br />
			        <strong>Air Temperature:</strong> 24&#176;F (-4.4&#176;C)<br />
			        <strong>Dew Point:</strong> 11&#176;F (-11.4&#176;C)<br />
			        <strong>Water Temperature:</strong> 48&#176;F (8.9&#176;C)<br />
			      ]]></description>
			      <link>http://www.ndbc.noaa.gov/station_page.php?station=44065</link>
			      <guid isPermaLink="false">NDBC-44065-20171229225000</guid>
			      <georss:point>40.369 -73.703</georss:point>
			    </item>
			    <item>
			      <pubDate>Fri, 29 Dec 2017 23:19:39 +0000</pubDate>
			      <title>Station SDHN4 - 8531680 - SANDY HOOK, NJ</title>
			      <description><![CDATA[
			        <strong>December 29, 2017 5:48 pm EST</strong><br />
			        <strong>Location:</strong> 40.467N 74.009W or 54 nautical miles WNW of search location of 40N 73W.<br />
			        <strong>Atmospheric Pressure:</strong> 30.29 in (1025.6 mb)<br />
			        <strong>Water Temperature:</strong> 32&#176;F (-0.1&#176;C)<br />
			      ]]></description>
			      <link>http://www.ndbc.noaa.gov/station_page.php?station=sdhn4</link>
			      <guid isPermaLink="false">NDBC-SDHN4-20171229224800</guid>
			      <georss:point>40.467 -74.009</georss:point>
			    </item>
			    <item>
			      <pubDate>Fri, 29 Dec 2017 23:19:38 +0000</pubDate>
			      <title>Station KPTN6 - 8516945 - KINGS POINT, NY</title>
			      <description><![CDATA[
			        <strong>December 29, 2017 5:48 pm EST</strong><br />
			        <strong>Location:</strong> 40.811N 73.765W or 60 nautical miles NW of search location of 40N 73W.<br />
			        <strong>Atmospheric Pressure:</strong> 30.28 in (1025.3 mb)<br />
			        <strong>Water Temperature:</strong> 37&#176;F (2.5&#176;C)<br />
			      ]]></description>
			      <link>http://www.ndbc.noaa.gov/station_page.php?station=kptn6</link>
			      <guid isPermaLink="false">NDBC-KPTN6-20171229224800</guid>
			      <georss:point>40.811 -73.765</georss:point>
			    </item>
			    <item>
			      <pubDate>Fri, 29 Dec 2017 23:19:37 +0000</pubDate>
			      <title>Station 44022 - EXECUTION ROCKS</title>
			      <description><![CDATA[
			        <strong>December 29, 2017 5:45 pm EST</strong><br />
			        <strong>Location:</strong> 40.883N 73.728W or 63 nautical miles NNW of search location of 40N 73W.<br />
			        <strong>Wind Direction:</strong> WNW (300&#176;)<br />
			        <strong>Wind Speed:</strong> 16 knots<br />
			        <strong>Wind Gust:</strong> 23 knots<br />
			        <strong>Air Temperature:</strong> 22&#176;F (-5.4&#176;C)<br />
			        <strong>Dew Point:</strong> 8&#176;F (-13.4&#176;C)<br />
			      ]]></description>
			      <link>http://www.ndbc.noaa.gov/station_page.php?station=44022</link>
			      <guid isPermaLink="false">NDBC-44022-20171229224500</guid>
			      <georss:point>40.883 -73.728</georss:point>
			    </item>
			    <item>
			      <pubDate>Fri, 29 Dec 2017 23:19:36 +0000</pubDate>
			      <title>Station 44040 - WESTERN LONG ISLAND SOUND</title>
			      <description><![CDATA[
			        <strong>December 29, 2017 6:00 pm EST</strong><br />
			        <strong>Location:</strong> 40.956N 73.58W or 63 nautical miles NNW of search location of 40N 73W.<br />
			        <strong>Wind Direction:</strong> WNW (300&#176;)<br />
			        <strong>Wind Speed:</strong> 16 knots<br />
			        <strong>Wind Gust:</strong> 23 knots<br />
			        <strong>Significant Wave Height:</strong> 1 ft<br />
			        <strong>Dominant Wave Period:</strong> 3 sec<br />
			        <strong>Air Temperature:</strong> 22&#176;F (-5.7&#176;C)<br />
			        <strong>Dew Point:</strong> 8&#176;F (-13.2&#176;C)<br />
			      ]]></description>
			      <link>http://www.ndbc.noaa.gov/station_page.php?station=44040</link>
			      <guid isPermaLink="false">NDBC-44040-20171229230000</guid>
			      <georss:point>40.956 -73.580</georss:point>
			    </item>
			    <item>
			      <pubDate>Fri, 29 Dec 2017 23:19:35 +0000</pubDate>
			      <title>Station BATN6 - 8518750 - THE BATTERY, NY</title>
			      <description><![CDATA[
			        <strong>December 29, 2017 5:48 pm EST</strong><br />
			        <strong>Location:</strong> 40.701N 74.014W or 63 nautical miles NW of search location of 40N 73W.<br />
			        <strong>Atmospheric Pressure:</strong> 30.27 in (1025.1 mb)<br />
			        <strong>Water Temperature:</strong> 42&#176;F (5.6&#176;C)<br />
			      ]]></description>
			      <link>http://www.ndbc.noaa.gov/station_page.php?station=batn6</link>
			      <guid isPermaLink="false">NDBC-BATN6-20171229224800</guid>
			      <georss:point>40.701 -74.014</georss:point>
			    </item>
			    <item>
			      <pubDate>Fri, 29 Dec 2017 23:19:34 +0000</pubDate>
			      <title>Station ROBN4 - 8530973 - ROBBINS REEF, NJ</title>
			      <description><![CDATA[
			        <strong>December 29, 2017 5:48 pm EST</strong><br />
			        <strong>Location:</strong> 40.657N 74.065W or 63 nautical miles NW of search location of 40N 73W.<br />
			        <strong>Atmospheric Pressure:</strong> 30.27 in (1025.1 mb)<br />
			      ]]></description>
			      <link>http://www.ndbc.noaa.gov/station_page.php?station=robn4</link>
			      <guid isPermaLink="false">NDBC-ROBN4-20171229224800</guid>
			      <georss:point>40.657 -74.065</georss:point>
			    </item>
			    <item>
			      <pubDate>Fri, 29 Dec 2017 23:19:33 +0000</pubDate>
			      <title>Station BGNN4 - 8519483 - BERGEN POINT WEST REACH, NY</title>
			      <description><![CDATA[
			        <strong>December 29, 2017 5:48 pm EST</strong><br />
			        <strong>Location:</strong> 40.639N 74.146W or 65 nautical miles NW of search location of 40N 73W.<br />
			        <strong>Atmospheric Pressure:</strong> 30.27 in (1024.9 mb)<br />
			        <strong>Water Temperature:</strong> 40&#176;F (4.2&#176;C)<br />
			      ]]></description>
			      <link>http://www.ndbc.noaa.gov/station_page.php?station=bgnn4</link>
			      <guid isPermaLink="false">NDBC-BGNN4-20171229224800</guid>
			      <georss:point>40.639 -74.146</georss:point>
			    </item>
			    <item>
			      <pubDate>Fri, 29 Dec 2017 23:19:32 +0000</pubDate>
			      <title>Station MHRN6 - 8519532 - MARINERS HARBOR, NY</title>
			      <description><![CDATA[
			        <strong>December 29, 2017 5:30 pm EST</strong><br />
			        <strong>Location:</strong> 40.641N 74.162W or 66 nautical miles NW of search location of 40N 73W.<br />
			        <strong>Wind Direction:</strong> WNW (300&#176;)<br />
			        <strong>Wind Speed:</strong> 13 knots<br />
			        <strong>Wind Gust:</strong> 16 knots<br />
			      ]]></description>
			      <link>http://www.ndbc.noaa.gov/station_page.php?station=mhrn6</link>
			      <guid isPermaLink="false">NDBC-MHRN6-20171229223000</guid>
			      <georss:point>40.641 -74.162</georss:point>
			    </item>
			    <item>
			      <pubDate>Fri, 29 Dec 2017 23:19:31 +0000</pubDate>
			      <title>Station 44039 - CENTRAL LONG ISLAND SOUND</title>
			      <description><![CDATA[
			        <strong>December 29, 2017 5:30 pm EST</strong><br />
			        <strong>Location:</strong> 41.138N 72.655W or 70 nautical miles NNE of search location of 40N 73W.<br />
			        <strong>Wind Direction:</strong> NW (320&#176;)<br />
			        <strong>Wind Speed:</strong> 17 knots<br />
			        <strong>Wind Gust:</strong> 21 knots<br />
			        <strong>Significant Wave Height:</strong> 2 ft<br />
			        <strong>Air Temperature:</strong> 21&#176;F (-6.2&#176;C)<br />
			      ]]></description>
			      <link>http://www.ndbc.noaa.gov/station_page.php?station=44039</link>
			      <guid isPermaLink="false">NDBC-44039-20171229223000</guid>
			      <georss:point>41.138 -72.655</georss:point>
			    </item>
			    <item>
			      <pubDate>Fri, 29 Dec 2017 23:19:30 +0000</pubDate>
			      <title>Station BRHC3 - 8467150 - BRIDGEPORT, CT</title>
			      <description><![CDATA[
			        <strong>December 29, 2017 5:42 pm EST</strong><br />
			        <strong>Location:</strong> 41.174N 73.181W or 71 nautical miles N of search location of 40N 73W.<br />
			        <strong>Atmospheric Pressure:</strong> 30.23 in (1023.7 mb)<br />
			        <strong>Water Temperature:</strong> 39&#176;F (3.9&#176;C)<br />
			      ]]></description>
			      <link>http://www.ndbc.noaa.gov/station_page.php?station=brhc3</link>
			      <guid isPermaLink="false">NDBC-BRHC3-20171229224200</guid>
			      <georss:point>41.174 -73.181</georss:point>
			    </item>
			    <item>
			      <pubDate>Fri, 29 Dec 2017 23:19:29 +0000</pubDate>
			      <title>Station JCRN4 - NACOTE CREEK, JACQUES COUSTEAU RESERVE, NJ</title>
			      <description><![CDATA[
			        <strong>December 29, 2017 5:30 pm EST</strong><br />
			        <strong>Location:</strong> 39.535N 74.464W or 73 nautical miles WSW of search location of 40N 73W.<br />
			        <strong>Wind Direction:</strong> W (270&#176;)<br />
			        <strong>Wind Speed:</strong> 4 knots<br />
			        <strong>Atmospheric Pressure:</strong> 30.27 in (1025.0 mb)<br />
			        <strong>Air Temperature:</strong> 21&#176;F (-5.9&#176;C)<br />
			        <strong>Dew Point:</strong> 3&#176;F (-16.3&#176;C)<br />
			      ]]></description>
			      <link>http://www.ndbc.noaa.gov/station_page.php?station=jcrn4</link>
			      <guid isPermaLink="false">NDBC-JCRN4-20171229223000</guid>
			      <georss:point>39.535 -74.464</georss:point>
			    </item>
			    <item>
			      <pubDate>Fri, 29 Dec 2017 23:19:28 +0000</pubDate>
			      <title>Station ACYN4 - 8534720 - ATLANTIC CITY, NJ</title>
			      <description><![CDATA[
			        <strong>December 29, 2017 5:48 pm EST</strong><br />
			        <strong>Location:</strong> 39.357N 74.418W or 76 nautical miles WSW of search location of 40N 73W.<br />
			        <strong>Atmospheric Pressure:</strong> 30.29 in (1025.8 mb)<br />
			        <strong>Water Temperature:</strong> 37&#176;F (2.7&#176;C)<br />
			      ]]></description>
			      <link>http://www.ndbc.noaa.gov/station_page.php?station=acyn4</link>
			      <guid isPermaLink="false">NDBC-ACYN4-20171229224800</guid>
			      <georss:point>39.357 -74.418</georss:point>
			    </item>
			    <item>
			      <pubDate>Fri, 29 Dec 2017 23:19:27 +0000</pubDate>
			      <title>Station NWHC3 - 8465705 - NEW HAVEN, CT</title>
			      <description><![CDATA[
			        <strong>December 29, 2017 5:48 pm EST</strong><br />
			        <strong>Location:</strong> 41.283N 72.908W or 77 nautical miles N of search location of 40N 73W.<br />
			        <strong>Atmospheric Pressure:</strong> 30.25 in (1024.4 mb)<br />
			        <strong>Water Temperature:</strong> 37&#176;F (2.8&#176;C)<br />
			      ]]></description>
			      <link>http://www.ndbc.noaa.gov/station_page.php?station=nwhc3</link>
			      <guid isPermaLink="false">NDBC-NWHC3-20171229224800</guid>
			      <georss:point>41.283 -72.908</georss:point>
			    </item>
			    <item>
			      <pubDate>Fri, 29 Dec 2017 23:19:26 +0000</pubDate>
			      <title>Station MTKN6 - 8510560 - MONTAUK, NY</title>
			      <description><![CDATA[
			        <strong>December 29, 2017 5:48 pm EST</strong><br />
			        <strong>Location:</strong> 41.048N 71.959W or 79 nautical miles NE of search location of 40N 73W.<br />
			        <strong>Atmospheric Pressure:</strong> 30.20 in (1022.7 mb)<br />
			        <strong>Water Temperature:</strong> 35&#176;F (1.5&#176;C)<br />
			      ]]></description>
			      <link>http://www.ndbc.noaa.gov/station_page.php?station=mtkn6</link>
			      <guid isPermaLink="false">NDBC-MTKN6-20171229224800</guid>
			      <georss:point>41.048 -71.959</georss:point>
			    </item>
			    <item>
			      <pubDate>Fri, 29 Dec 2017 23:19:25 +0000</pubDate>
			      <title>Station NBLP1 - 8548989 - NEWBOLD, PA</title>
			      <description><![CDATA[
			        <strong>December 29, 2017 5:48 pm EST</strong><br />
			        <strong>Location:</strong> 40.137N 74.752W or 81 nautical miles W of search location of 40N 73W.<br />
			        <strong>Atmospheric Pressure:</strong> 30.29 in (1025.9 mb)<br />
			        <strong>Water Temperature:</strong> 33&#176;F (0.5&#176;C)<br />
			      ]]></description>
			      <link>http://www.ndbc.noaa.gov/station_page.php?station=nblp1</link>
			      <guid isPermaLink="false">NDBC-NBLP1-20171229224800</guid>
			      <georss:point>40.137 -74.752</georss:point>
			    </item>
			    <item>
			      <pubDate>Fri, 29 Dec 2017 23:19:24 +0000</pubDate>
			      <title>Station BDRN4 - 8539094 - BURLINGTON, DELAWARE RIVER, NJ</title>
			      <description><![CDATA[
			        <strong>December 29, 2017 5:36 pm EST</strong><br />
			        <strong>Location:</strong> 40.082N 74.87W or 86 nautical miles W of search location of 40N 73W.<br />
			        <strong>Wind Direction:</strong> NW (310&#176;)<br />
			        <strong>Wind Speed:</strong> 6 knots<br />
			        <strong>Wind Gust:</strong> 12 knots<br />
			        <strong>Atmospheric Pressure:</strong> 30.28 in (1025.3 mb)<br />
			        <strong>Air Temperature:</strong> 21&#176;F (-6.2&#176;C)<br />
			        <strong>Water Temperature:</strong> 35&#176;F (1.6&#176;C)<br />
			      ]]></description>
			      <link>http://www.ndbc.noaa.gov/station_page.php?station=bdrn4</link>
			      <guid isPermaLink="false">NDBC-BDRN4-20171229223600</guid>
			      <georss:point>40.082 -74.870</georss:point>
			    </item>
			    <item>
			      <pubDate>Fri, 29 Dec 2017 23:19:23 +0000</pubDate>
			      <title>Station LDLC3 - NEW LONDON LEDGE LIGHT, NEW LONDON HARBOR, CT</title>
			      <description><![CDATA[
			        <strong>December 29, 2017 6:00 pm EST</strong><br />
			        <strong>Location:</strong> 41.306N 72.077W or 89 nautical miles NNE of search location of 40N 73W.<br />
			        <strong>Wind Direction:</strong> WNW (290&#176;)<br />
			        <strong>Wind Speed:</strong> 13 knots<br />
			        <strong>Wind Gust:</strong> 16 knots<br />
			        <strong>Atmospheric Pressure:</strong> 30.18 in (1022.0 mb)<br />
			        <strong>Pressure Tendency:</strong> +0.06 in (+2.0 mb)<br />
			        <strong>Air Temperature:</strong> 17&#176;F (-8.4&#176;C)<br />
			        <strong>Dew Point:</strong> 1&#176;F (-17.0&#176;C)<br />
			      ]]></description>
			      <link>http://www.ndbc.noaa.gov/station_page.php?station=ldlc3</link>
			      <guid isPermaLink="false">NDBC-LDLC3-20171229230000</guid>
			      <georss:point>41.306 -72.077</georss:point>
			    </item>
			    <item>
			      <pubDate>Fri, 29 Dec 2017 23:19:22 +0000</pubDate>
			      <title>Station NLNC3 - 8461490 - NEW LONDON, CT</title>
			      <description><![CDATA[
			        <strong>December 29, 2017 5:48 pm EST</strong><br />
			        <strong>Location:</strong> 41.361N 72.09W or 92 nautical miles NNE of search location of 40N 73W.<br />
			        <strong>Atmospheric Pressure:</strong> 30.21 in (1023.0 mb)<br />
			        <strong>Water Temperature:</strong> 44&#176;F (6.7&#176;C)<br />
			      ]]></description>
			      <link>http://www.ndbc.noaa.gov/station_page.php?station=nlnc3</link>
			      <guid isPermaLink="false">NDBC-NLNC3-20171229224800</guid>
			      <georss:point>41.361 -72.090</georss:point>
			    </item>
			    <item>
			      <pubDate>Fri, 29 Dec 2017 23:19:21 +0000</pubDate>
			      <title>Station BDSP1 - 8546252 - BRIDESBURG, PA</title>
			      <description><![CDATA[
			        <strong>December 29, 2017 5:48 pm EST</strong><br />
			        <strong>Location:</strong> 39.98N 75.079W or 96 nautical miles W of search location of 40N 73W.<br />
			        <strong>Atmospheric Pressure:</strong> 30.29 in (1025.7 mb)<br />
			        <strong>Water Temperature:</strong> 38&#176;F (3.4&#176;C)<br />
			      ]]></description>
			      <link>http://www.ndbc.noaa.gov/station_page.php?station=bdsp1</link>
			      <guid isPermaLink="false">NDBC-BDSP1-20171229224800</guid>
			      <georss:point>39.980 -75.079</georss:point>
			    </item>
			    <item>
			      <pubDate>Fri, 29 Dec 2017 23:19:20 +0000</pubDate>
			      <title>Station PHBP1 - 8545240 - PHILADELPHIA, PA</title>
			      <description><![CDATA[
			        <strong>December 29, 2017 5:48 pm EST</strong><br />
			        <strong>Location:</strong> 39.933N 75.142W or 99 nautical miles W of search location of 40N 73W.<br />
			        <strong>Atmospheric Pressure:</strong> 30.29 in (1025.6 mb)<br />
			        <strong>Water Temperature:</strong> 37&#176;F (2.6&#176;C)<br />
			      ]]></description>
			      <link>http://www.ndbc.noaa.gov/station_page.php?station=phbp1</link>
			      <guid isPermaLink="false">NDBC-PHBP1-20171229224800</guid>
			      <georss:point>39.933 -75.142</georss:point>
			    </item>
			</channel>
			</rss>
		EOS
	end

end
