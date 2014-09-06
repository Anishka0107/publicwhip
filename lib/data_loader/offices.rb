require 'mechanize'

module DataLoader
  class Offices
    # ministers.xml
    def self.load!
      Rails.logger.info "Reloading offices..."
      agent = Mechanize.new
      ministers_xml = agent.get "#{Settings.xml_data_base_url}members/ministers.xml"
      ministers_xml.search(:moffice).each do |moffice|
        person_id = People.member_to_person[moffice[:matchid]]
        raise "MP #{moffice[:name]} has no person" unless person_id

        responsibility = moffice[:responsibility] || ''

        o = Office.find_or_initialize_by(id: moffice[:id][/uk.org.publicwhip\/moffice\/(\d*)/, 1],
          person_id: person_id[/uk.org.publicwhip\/person\/(\d*)/, 1])
        o.update!(dept: XML.escape_html(moffice[:dept]),
          position: XML.escape_html(moffice[:position]),
          responsibility: XML.escape_html(responsibility),
          from_date: moffice[:fromdate],
          to_date: moffice[:todate])
      end
      Rails.logger.info "Loaded #{Office.count} offices"
    end
  end
end
