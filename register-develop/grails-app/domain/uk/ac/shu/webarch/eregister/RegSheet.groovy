package uk.ac.shu.webarch.eregister

class RegSheet {

  /* What course this sheet is for */
  Class regClass

  /* Shortcode */
  String shortcode

  /* Date of the sheet */
  Date sheetDate

  /* Signatories */
  Set signatories

  /* Any notes */
  String notes

  static hasMany = [signatories:RegEntry]
  static mappedBy = [signatories:'regSheet']
  /** TODO:
   *  Add the metadata needed to add a list if RegisterEntry classes for this sheet... essentially
   *  modelling the fact that 1 registration sheet has many register entries.
   *
   *  The RegisterEntry class will need a property that points back to this RegistrationSheet. You
   *  should implement that link first
   */

  static constraints = {
    regClass(nullable:false, blank:false);
    shortcode(nullable:false, blank:false);
    sheetDate(nullable:false, blank:false);
    notes(nullable:true, blank:true);
  }

  static mapping = {
  }
}
