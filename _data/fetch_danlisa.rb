#
# Script to fetch the current standings from danlisa website.  This regenerates
# the _data/standings.yml file.  Run by stepping into the _data directory and
# running `ruby fetch_danlisa.rb`, then checking the changes file.
#

# https://readysteadycode.com/howto-parse-html-tables-with-nokogiri
# http://www.nokogiri.org/tutorials/searching_a_xml_html_document.html
require 'nokogiri'
require 'open-uri'

page = Nokogiri::HTML(open("https://www.danlisa.com/scoring/season_standings.php?season_id=9460"))

table = page.xpath('//table[id="driver_table"]')

headers = []
page.xpath('//table[@id="driver_table"]/tr/th').each do |th|
  headers << th.text
end

rows = []
page.xpath('//table[@id="driver_table"]/tr[@class="jsTableRow"]').each_with_index do |row, i|
  rows[i] = {}
  row.xpath('td').each_with_index do |td, j|
    rows[i][headers[j]] = td.text
  end
end

# https://stackoverflow.com/a/17576810
require 'yaml'

data = rows.map do |r|
  [r['Driver'].gsub(/[^0-9a-z]/i, '_').downcase,
    {
      'name' => r['Driver'],
      'position' => r['Pos'].to_i,
      'change' => r['Chg'].to_i,
      'starts' => r['Starts'].to_i,
      'counted' => r['RacesCounted'].to_i,
      'wins' => r['Wins'].to_i,
      'top5' => r['T-5'].to_i,
      'top10' => r['T-10'].to_i,
      'points' => r['TotPts'].to_i,
      'laps' => r['Laps'].to_i,
      'incidents' => r['Incs'].to_i
    }
  ]
end.to_h

File.write('standings.yml', data.to_yaml)

# What round are the results showing?
info = {'latest_round' => page.xpath('//select[@name="schedule_id"]/option[@selected]').text}
File.write('standings_info.yml', info.to_yaml)
