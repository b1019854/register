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
 

  static constraints = {
    regClass(nullable:false, blank:false);
    shortcode(nullable:false, blank:false);
    sheetDate(nullable:false, blank:false);
    notes(nullable:true, blank:true);
  }

  static mapping = {
  }
}
