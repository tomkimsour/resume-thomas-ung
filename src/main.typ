#import "@preview/basic-resume:0.2.9": *

#import "i18n.typ": tr, lang

#set text(lang: lang)

#let pick(d) = d.at(lang, default: d.en)

// Put your personal information here, replacing mine
#let name = "THOMAS UNG"
#let location = pick((en: "Barcelona, Spain", fr: "Barcelone, Espagne"))
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

#let date-range(start-date, end-date) = dates-helper(
  start-date: pick(start-date),
  end-date: pick(end-date),
)

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
== #tr("about_me")

#let qualities_list = (
  en: "Curious - Ambitious - Fast learner - Takes initiatives - Communicate a lot ",
  fr: "Curieux - Ambitieux - Apprentissage rapide - Prend des initiatives - Communique beaucoup",
)

#let languages_list = (
  en: "French (Native) - English (Fluent) - Mandarin (HSK2) - German (A2) - Spanish (A2)",
  fr: "Francais (natif) - Anglais (courant) - Mandarin (HSK2) - Allemand (A2) - Espagnol (A2)",
)

#let database_list = (
  en: "DBMS MariaDB - MySQL - Postgresql - SQLite - Redis",
  fr: "SGBD MariaDB - MySQL - Postgresql - SQLite - Redis",
)

#let coursework_list = (
  en: "Cloud computing - Algorithm optimisation - Distributed systems - Parallel architecture - Machine learning ",
  fr: "Cloud computing - Optimisation d'algorithmes - Systemes distribues - Architecture parallele - Machine learning",
)

#skills(
  left-title: tr("qualities"),
  skill-list: pick(qualities_list),
)
#skills(
  left-title: tr("languages"),
  skill-list: pick(languages_list),
)
#skills(
  left-title: tr("programming_languages"),
  skill-list: "C++ - Rust - Typescript - Go - Python - JavaScript - Java - C"
)
#skills(
  left-title: tr("web"),
  skill-list: "Node.js - Deno.js - Aleph.js - Laravel - Next.js - Yew.rs - Dioxus.rs"
)
#skills(
  left-title: tr("database"),
  skill-list: pick(database_list),
)
#skills(
  left-title: tr("other_tools"),
  skill-list: "Neovim - Git - CMake - Docker - Kubernetes - ROS1/2 - Pytorch - Unreal Engine"
)
#skills(
  left-title: tr("coursework"),
  skill-list: pick(coursework_list),
)


== #tr("work_experience")

#let work_entries = (
  (
    title: (
      en: text(fill: rgb(accent-color))[Robotic Software Engineer],
      fr: text(fill: rgb(accent-color))[Ingenieur logiciel robotique],
    ),
    location: "",
    company: strong("PAL Robotics, Barcelona, Spain"),
    dates: date-range(
      (en: "Mar 2024", fr: "mars 2024"),
      (en: "Now", fr: "Aujourd'hui"),
    ),
    bullets: (
      en: (
        [Software migration (#text(fill: rgb(accent-color))[ROS1/2, C++, Python, CMake])],
        [Development of a fleet management system (#text(fill: rgb(accent-color))[Open-rmf, ROS2])],
        [Networking optimisation for wireless distributed applications (#text(fill: rgb(accent-color))[DDS, Zenoh])],
        [Package management (#text(fill: rgb(accent-color))[Debian, Gitlab, Docker])],
        [Redesign of a mission infrastructure for an intralogistic project.],
        [Google summer of code mentor for a RL training visualizer (#text(fill: rgb(accent-color))[Mujoco, Brax])],
      ),
      fr: (
        [Migration logicielle (#text(fill: rgb(accent-color))[ROS1/2, C++, Python, CMake])],
        [Developpement d'un systeme de gestion de flotte (#text(fill: rgb(accent-color))[Open-rmf, ROS2])],
        [Optimisation reseau pour des applications distribuees sans fil (#text(fill: rgb(accent-color))[DDS, Zenoh])],
        [Gestion de paquets (#text(fill: rgb(accent-color))[Debian, Gitlab, Docker])],
        [Refonte d'une infrastructure de missions pour un projet intralogistique.],
        [Mentor Google Summer of Code sur un visualiseur d'entrainement RL (#text(fill: rgb(accent-color))[Mujoco, Brax])],
      ),
    ),
  ),
  (
    title: (
      en: text(fill: rgb(accent-color))[Research Software Engineer in Robotics],
      fr: text(fill: rgb(accent-color))[Ingenieur logiciel R&D en robotique],
    ),
    location: "",
    company: strong("CNRS, Adelaide, Australia"),
    dates: date-range(
      (en: "Feb 2022", fr: "fevr. 2022"),
      (en: "Dec 2023", fr: "dec. 2023"),
    ),
    bullets: (
      en: (
        [Technical Leader - Manager for 6 FTE / 1 year, project management for the Robocup#sym.at\\Home competition, task management, make sure code guidelines are respected (#text(fill: rgb(accent-color))[Git, Github, Discord])],
        [Code refactor, create and maintain an OS (#text(fill: rgb(accent-color))[Gentoo Linux, Docker, C++, ROS, Python, SQLite])],
        [Development of a digital twin environment in Unreal Engine (#text(fill: rgb(accent-color))[Unreal Engine 5, ROS, C++, Clang, CMake])],
        [Research of onboard Visual SLAM solutions for Pepper robot (#text(fill: rgb(accent-color))[ROS, C++])],
        [Software integration for the robocup project (#text(fill: rgb(accent-color))[ROS, C++, Whisper, YOLOv8, Bert, Spacy, Kaldi])],
        [Design of a web interface and research of an embedded easy to use and deploy framework for Pepper Tablet],
      ),
      fr: (
        [Leader technique - Manager de 6 ETP / 1 an, gestion de projet pour la competition RoboCup#sym.at\\Home, suivi des taches, respect des guidelines (#text(fill: rgb(accent-color))[Git, Github, Discord])],
        [Refactorisation, creation et maintenance d'un OS (#text(fill: rgb(accent-color))[Gentoo Linux, Docker, C++, ROS, Python, SQLite])],
        [Developpement d'un environnement jumeau numerique sous Unreal Engine (#text(fill: rgb(accent-color))[Unreal Engine 5, ROS, C++, Clang, CMake])],
        [Recherche de solutions Visual SLAM embarquees pour le robot Pepper (#text(fill: rgb(accent-color))[ROS, C++])],
        [Integration logicielle pour le projet RoboCup (#text(fill: rgb(accent-color))[ROS, C++, Whisper, YOLOv8, Bert, Spacy, Kaldi])],
        [Conception d'une interface web et recherche d'un framework embarque simple a deployer pour la tablette Pepper],
      ),
    ),
  ),
  (
    title: (
      en: text(fill: rgb(accent-color))[Software engineer intern],
      fr: text(fill: rgb(accent-color))[Stagiaire ingenieur logiciel],
    ),
    location: "",
    company: strong("LAB-STICC, Locmaria-Plouzané, France"),
    dates: date-range(
      (en: "Feb 2022", fr: "fevr. 2022"),
      (en: "May 2022", fr: "mai 2022"),
    ),
    bullets: (
      en: (
        [Depth camera calibration for Pepper],
        [Integration of a finite state machine as a scheduler for RoboCup tasks (6 months) (#text(fill: rgb(accent-color))[ROS, C++, Python])],
        [Research and integration on a stable onboard navigation solution for the robot Pepper],
        [Participation to RoboCup 2022 Bangkok with the team RoboBreizh (#text(fill: rgb(accent-color))[1rst place SSPL])],
        [Research and implementation of a navigation module for Pepper robot as part of the RoboCup#sym.at\\Home competition (#text(fill: rgb(accent-color))[Gazebo, ROS])],
      ),
      fr: (
        [Calibration de camera de profondeur pour Pepper],
        [Integration d'une machine a etats finie comme ordonnanceur de taches RoboCup (6 mois) (#text(fill: rgb(accent-color))[ROS, C++, Python])],
        [Recherche et integration d'une solution de navigation embarquee stable pour le robot Pepper],
        [Participation a RoboCup 2022 Bangkok avec l'equipe RoboBreizh (#text(fill: rgb(accent-color))[1rst place SSPL])],
        [Recherche et developpement d'un module de navigation pour Pepper pour la competition RoboCup#sym.at\\Home (#text(fill: rgb(accent-color))[Gazebo, ROS])],
      ),
    ),
  ),
)

#for entry in work_entries [
  #work(
    title: pick(entry.title),
    location: entry.location,
    company: entry.company,
    dates: entry.dates,
  )
  #for b in pick(entry.bullets) [
    - #b
  ]
]

== #tr("projects")

#let projects_list = (
  en: (
    [1rst place in the Robocup#sym.at\\Home SSPL in 2022 and 2023],
    [Video converter API (#text(fill: rgb(accent-color))[GCP, Kubernetes, Next.js, Flask, Prometheus])],
    [Othello min max AI (#text(fill: rgb(accent-color))[Go])],
    [Time zone converter (#text(fill: rgb(accent-color))[Rust])],
    [Advent of code (#text(fill: rgb(accent-color))[Rust])],
  ),
  fr: (
    [1er prix RoboCup#sym.at\\Home SSPL en 2022 et 2023],
    [API de conversion video (#text(fill: rgb(accent-color))[GCP, Kubernetes, Next.js, Flask, Prometheus])],
    [IA Othello min-max (#text(fill: rgb(accent-color))[Go])],
    [Convertisseur de fuseaux horaires (#text(fill: rgb(accent-color))[Rust])],
    [Advent of Code (#text(fill: rgb(accent-color))[Rust])],
  ),
)

#for p in pick(projects_list) [
  - #p
]

== #tr("education")

#edu(
  institution: "Umeå Universitet, Umeå, Sweden",
  location: "",
  dates: date-range(
    (en: "Sep 2021", fr: "sept. 2021"),
    (en: "Jan 2022", fr: "janv. 2022"),
  ),
  degree: pick((
    en: "Master 2 Computer Science, Artificial Intelligence and algorithm optimization",
    fr: "Master 2 Informatique, intelligence artificielle et optimisation d'algorithmes",
  )),
)

#edu(
  institution: "Université de Bretagne Occidentale, Brest, France",
  location: "",
  dates: date-range(
    (en: "Sep 2020", fr: "sept. 2020"),
    (en: "Sep 2022", fr: "sept. 2022"),
  ),
  degree: pick((
    en: "Master Computer Science, autonomous, interactive and intelligent systems",
    fr: "Master Informatique, systemes autonomes, interactifs et intelligents",
  )),
)

== #tr("publications")
- Cédric Buche, Maëlic Neau, Thomas Ung, Louis Li, Tianjiao Jiang, Mukesh Barange, and Maël Bouabdelli. 2023. RoboBreizh, RoboCup#sym.at\Home SSPL Champion 2022. In RoboCup 2022:: Robot World Cup XXV. Springer-Verlag, Berlin, Heidelberg, 203–214. https://doi.org/10.1007/978-3-031-28469-4_17
- Li, L., Neau, M., Ung, T., Buche, C. (2024). Crossing Real and Virtual: Pepper Robot as an Interactive Digital Twin. In: Buche, C., Rossi, A., Simões, M., Visser, U. (eds) RoboCup 2023: Robot World Cup XXVI. RoboCup 2023. Lecture Notes in Computer Science(), vol 14140. Springer, Cham. https://doi.org/10.1007/978-3-031-55015-7_23

== #tr("references")
- Cédric BUCHE, Professor, buche#sym.at\enib.fr, +61483343787
