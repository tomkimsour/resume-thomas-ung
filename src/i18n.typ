#let lang = lower(sys.inputs.at("lang", default: "en"))

// Keep translatable strings here so the CV structure stays identical.
#let messages = (
  en: (
    about_me: [About Me],
    work_experience: [Work Experience],
    projects: [Projects],
    education: [Education],
    publications: [Publications],
    references: [References],

    qualities: [Qualities],
    languages: [Languages],
    programming_languages: [Programming Languages],
    web: [Web],
    database: [Database],
    other_tools: [Other tools/Framework],
    coursework: [Relevant Coursework],
  ),
  fr: (
    about_me: [A propos],
    work_experience: [Experience professionnelle],
    projects: [Projets],
    education: [Formation],
    publications: [Publications],
    references: [References],

    qualities: [Qualites],
    languages: [Langues],
    programming_languages: [Langages de programmation],
    web: [Web],
    database: [Base de donnees],
    other_tools: [Autres outils/Framework],
    coursework: [Cours pertinents],
  ),
)

#let tr(key) = {
  let table = messages.at(lang, default: messages.en)
  table.at(key, default: messages.en.at(key))
}
