#import "@preview/basic-resume:0.2.3": *

// Put your personal information here, replacing mine
#let name = "THOMAS UNG"
#let location = "Barcelona, Spain"
#let email = "thomas.ung.pro@gmail.com"
#let github = "github.com/tomkimsour"
#let linkedin = "linkedin.com/in/thomas-ung"
#let personal-site = "thomas-ung.fr"
#let accent-color= "#8c52ff";
#let font ="PP Pangram Sans";

#show: resume.with(
  author: name,
  // All the lines below are optional.
  // For example, if you want to to hide your phone number:
  // feel free to comment those lines out and they will not show.
  location: location,
  email: email,
  github: github,
  personal-site: personal-site,
  accent-color: accent-color,
  font: font,
  author-position: left,
  personal-info-position: left,
)

#show heading: set text(
  fill: rgb("#000000"),
)
// Redefine dates-helper to add some colors
#let dates-helper(
  start-date: "",
  end-date: "",
) = {
  let formatted-text = start-date + " " + $dash.em$ + " " + end-date;
  strong(formatted-text)
}

#let skills(
  left-title: "",
  skill-list: ""
) = {
pad(
  top: 0pt,
  bottom: -5pt,
  grid(
      columns: (1fr, 3fr),
      box(text(fill: rgb(accent-color),  left-title)),
      box(skill-list),
  )
)
}

// redefine education
#let edu(
  institution: "",
  dates: "",
  degree: "",
  gpa: "",
  location: "",
) = {
  generic-two-by-two(
    top-left: strong(institution),
    top-right: location,
    bottom-left: text(fill: rgb(accent-color), degree),
    bottom-right: dates,
  )
}
/*
* Lines that start with == are formatted into section headings
* You can use the specific formatting functions if needed
* The following formatting functions are listed below
* #edu(dates: "", degree: "", gpa: "", institution: "", location: "")
* #work(company: "", dates: "", location: "", title: "")
* #project(dates: "", name: "", role: "", url: "")
* certificates(name: "", issuer: "", url: "", date: "")
* #extracurriculars(activity: "", dates: "")
* There are also the following generic functions that don't apply any formatting
* #generic-two-by-two(top-left: "", top-right: "", bottom-left: "", bottom-right: "")
* #generic-one-by-two(left: "", right: "")
*/
== About Me

#skills(
  left-title: "Qualities",
  skill-list: "Curious - Ambitious - Fast learner - Takes initiatives - Communicate a lot "
)
#skills(
  left-title: "Languages",
  skill-list: "French (Native) - English (Fluent) - Mandarin (HSK2) - German (B1) - Spanish (A2)"
)
#skills(
  left-title: "Programming Languages",
  skill-list: "C++ - Rust - Typescript - Go - Python - JavaScript - Java - C"
)
#skills(
  left-title: "Web",
  skill-list: "Node.js - Deno.js - Aleph.js - Laravel - Next.js - Yew.rs - Dioxus.rs"
)
#skills(
  left-title: "Database",
  skill-list: "SGBD MariaDB - MySQL - Postgresql - SQLite - Redis"
)
#skills(
  left-title: "Other tools/Framework",
  skill-list: "Neovim - Git - CMake - Docker - Kubernetes - ROS1/2 - Pytorch - Unreal Engine"
)
#skills(
  left-title: "Relevant Coursework",
  skill-list: "Cloud computing - Algorithm optimisation - Distributed systems - Parallel architecture - Machine learning "
)


== Work Experience

#work(
  title: text(fill: rgb(accent-color))[Robotic Software Engineer],
  location: "",
  company: strong("PAL Robotics, Barcelona, Spain"),
  dates: dates-helper(start-date: "Mar 2024", end-date: "Now"),
)
- Software migration (#text(fill: rgb(accent-color))[ROS1/2, C++, Python, CMake, ament_cmake])
- Development of a fleet management system (#text(fill: rgb(accent-color))[Open-rmf, ROS2])
- Networking optimisation for wireless distributed applications (#text(fill: rgb(accent-color))[DDS, Zenoh])
- Package management (#text(fill: rgb(accent-color))[Debian, Gitlab, Docker])
- Redesign of a RFID tag inventory project.
- Build digital twin environment (#text(fill: rgb(accent-color))[Gazebo])

#work(
  title: text(fill: rgb(accent-color))[Research Software Engineer in Robotics],
  location: "",
  company: strong("CNRS, Adelaide, Australia"),
  dates: dates-helper(start-date: "Feb 2022", end-date: "Dec 2023"),
)
- Technical Leader - Manager for 6 FTE / 1 year, project management for the Robocup#sym.at\Home competition, task
management, make sure code guidelines are respected (#text(fill: rgb(accent-color))[Git, Github, Discord])
- Code refactor, create and maintain an OS (#text(fill: rgb(accent-color))[Gentoo Linux, Docker, c++, ROS, python, SQLite])
- Development of a digital twin environment in Unreal Engine (#text(fill: rgb(accent-color))[Unreal Engine 5, ROS, c++, Clang, CMake])
- Research of onboard Visual SLAM solutions for Pepper robot (#text(fill: rgb(accent-color))[ROS, c++])
- Software integration for the robocup project (#text(fill: rgb(accent-color))[ROS, c++, Whisper, YOLOv8, Bert, Spacy, Kaldi])
- Design of a web interface and research of an embedded easy to use and deploy framework for Pepper Tablet

#work(
  title: text(fill: rgb(accent-color))[Software engineer intern],
  location: "",
  company: strong("LAB-STICC, Locmaria-Plouzané, France"),
  dates: dates-helper(start-date: "Dec 2023", end-date: "Mar 2024"),
)
- Depth camera calibration for pepper
- Integration of a finite state machine as a scheduler for RoboCup tasks (6 months) (#text(fill: rgb(accent-color))[ROS, C++, Python])
- Research and integration on a stable onboard navigation solution for the robot Pepper
- Participation to RoboCup 2022 Bangkok with the team RoboBreizh (#text(fill: rgb(accent-color))[1rst place SSPL])
- Research and implementation of a navigation module for Pepper robot as part of the RoboCup#sym.at\Home competition (#text(fill: rgb(accent-color))[Gazebo, ROS])

== Projects

- 1rst place in the Robocup#sym.at\Home SSPL in 2022 and 2023
- Video converter API (#text(fill: rgb(accent-color))[GCP, Kubernetes, Next.js, Flask,Prometheus])
- Othello min max AI (#text(fill: rgb(accent-color))[Go])
- Time zone converter (#text(fill: rgb(accent-color))[Rust])
- Advent of code (#text(fill: rgb(accent-color))[Rust])

== Education

#edu(
  institution: "Umeå Universitet, Umeå, Sweden",
  location: "",
  dates: dates-helper(start-date: "Sep 2021", end-date: "Jan 2022"),
  degree: "Master 2 Computer Science, Artificial Intellignece and algorithm optimization",
)

#edu(
  institution: "Université de Bretagne Occidentale, Brest, France",
  location: "",
  dates: dates-helper(start-date: "Sep 2020", end-date: "Sep 2022"),
  degree: "Master Computer Science, autonomous, interactive and intelligent systems",
)

== Publications
- Cédric Buche, Maëlic Neau, Thomas Ung, Louis Li, Tianjiao Jiang, Mukesh Barange, and Maël Bouabdelli. 2023. RoboBreizh, RoboCup#sym.at\Home SSPL Champion 2022. In RoboCup 2022:: Robot World Cup XXV. Springer-Verlag, Berlin, Heidelberg, 203–214. https://doi.org/10.1007/978-3-031-28469-4_17
- Li, L., Neau, M., Ung, T., Buche, C. (2024). Crossing Real and Virtual: Pepper Robot as an Interactive Digital Twin. In: Buche, C., Rossi, A., Simões, M., Visser, U. (eds) RoboCup 2023: Robot World Cup XXVI. RoboCup 2023. Lecture Notes in Computer Science(), vol 14140. Springer, Cham. https://doi.org/10.1007/978-3-031-55015-7_23

== References
- Cédric BUCHE, Professeur des Universités, buche#sym.at\enib.fr, +61483343787
