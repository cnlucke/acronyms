class PhotoCopier < ElectricalAppliance
  include PrinterMod
  extend ScannerMod
  attr_accessor :printer, :scanner


  def photo_copy
    scan
    # WHO SHOULD SCAN GO TO
    # ? WHO IS SELF
    # self.scan
    print
  end

end
