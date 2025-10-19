#import "/src/cv.typ/cv.typ": *

// Load CV data from YAML
#let cvdata = yaml("data.yaml")

#let uservars = (
    headingfont: "Arial", // Set font for headings
    bodyfont: "Arial",   // Set font for body
    fontsize: 9pt, // 10pt, 11pt, 12pt
    linespacing: 6pt,
    showAddress: false, // true/false Show address in contact info
    showNumber: true,  // true/false Show phone number in contact info
)

// setrules and showrules can be overridden by re-declaring it here
// #let setrules(doc) = {
//      // Add custom document style rules here
//
//      doc
// }

#let customrules(doc) = {
    // Add custom document style rules here

    doc
}

#let cvinit(doc) = {
    doc = setrules(uservars, doc)
    doc = showrules(uservars, doc)
    doc = customrules(doc)

    doc
}

// Each section function can be overridden by re-declaring it here
// #let cveducation = []

// Content
#show: doc => cvinit(doc)

#cvheading(cvdata, uservars)

#cvwork(cvdata)
#cvaffiliations(cvdata)
#cvprojects(cvdata)
#cvawards(cvdata)
#cvcertificates(cvdata)
#cvpublications(cvdata)
#cvskills(cvdata)
#cvreferences(cvdata)
#cveducation(cvdata)

#endnote