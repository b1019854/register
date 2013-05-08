package uk.ac.shu.webarch.eregister

class RegSheet {

  Class regClass

  String shortcode
  
  Date sheetDate

  Set signatories

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
