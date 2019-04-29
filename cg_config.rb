require 'coursegen'

# Copyright string
COPYRIGHT_STRING = "Copyright (2014-2019) R. Pito Salas, pitosalas@brandeis.edu".freeze

# bucket for AWS Deployment of the course
AWS_BUCKET = "cosi119a".freeze

# Course short name
COURSE_SHORT_NAME = "Cosi 119a".freeze
COURSE_LONG_NAME = "Autonomous Robotics".freeze
COURSE_ABBREV = "cs119a".freeze

# Schedule information. Note that Monday is day 0
LECTURES_SCHEDULE_CONFIG = ScheduleDef.new(
  first_day: "aug-30-2019",
  weekdays: [:tuesday, :friday],
  number: 26,
  start_times: ["12:30", "12:30"],
  end_times: ["13:50", "13:50"],
  start_time: "12:30",
  end_time: "13:50",
  skips: [])

# Sections in the right hand margin of the page
SECTION_CONFIG = [
  SectionDef.new("Intro", "intro", type: :section, bullet: :star),
  SectionDef.new("Lectures", "lectures", type: :lecture, schedule: LECTURES_SCHEDULE_CONFIG,
                  bullet: :dash),
  SectionDef.new("Topics", "topics", hidden: true, type: :section),
  SectionDef.new("Extras", "extras", hidden: true, type: :section)
].freeze

# Options are:
# bullet_style: css style for each bullet
STYLING_CONFIG = {bullet_style: %("font-size: 60%; width: 10px; color: grey")}.freeze
HOME_PAGE = "/content/intro/05_syllabus.md.erb".freeze
HELPFUL_BOX = false
