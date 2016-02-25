package org.kuali.ole.docstore.accessionnumber;

import java.util.Calendar;
import java.util.HashMap;
import java.util.Map;

import org.kuali.ole.docstore.common.document.content.instance.AccessionNumber;
import org.kuali.ole.docstore.engine.service.storage.rdbms.pojo.ItemRecord;
import org.kuali.rice.krad.service.BusinessObjectService;
import org.kuali.rice.krad.service.KRADServiceLocator;

public class AccessionNumberManager {

    public static BusinessObjectService BUSINESS_OBJECT_SERVICE = KRADServiceLocator.getBusinessObjectService();

    /**
     * Returns a new accessionNumber as a String based on the prefix chosen the
     * year, and the accession numbers that are already in the database.
     *
     * @param itemRecord
     *            the representation of the item data
     * @param code
     *            the code or type chosen for the accession number
     * @return the new accession number object
     */
    public AccessionNumber generateAccessionNumber(ItemRecord itemRecord, String code) {

        AccessionNumber accessionNumber;

        if (code.equals(""))
            code = "none";
        Map<String, String> criteria = new HashMap<String, String>();
        criteria.put("code", code);
        AccessionNumber lastAccessionNumberObject = BUSINESS_OBJECT_SERVICE.findByPrimaryKey(AccessionNumber.class,
                criteria);

        String lastAccessionNumberName = lastAccessionNumberObject.getName();
        int lastAccessionNumberCounter = lastAccessionNumberObject.getCounter();
        String lastAccessionNumberYear = lastAccessionNumberObject.getYear();
        String lastAccessionNumberSyntax = lastAccessionNumberObject.getSyntax();

        if (lastAccessionNumberYear.equals(String.valueOf(Calendar.getInstance().get(Calendar.YEAR)))) {
            accessionNumber = new AccessionNumber(code, lastAccessionNumberName, lastAccessionNumberCounter + 1,
                    lastAccessionNumberYear, lastAccessionNumberSyntax);
        } else {
            accessionNumber = new AccessionNumber(code, lastAccessionNumberName, 0, String.valueOf(Calendar
                    .getInstance().get(Calendar.YEAR)), lastAccessionNumberSyntax);
        }
        return accessionNumber;
    }

    /**
     * Writes an accession number to the database (primary key is the code)
     *
     * @param accessionNumber
     *            the accession number to be saved
     */
    public void saveAccessionNumber(AccessionNumber accessionNumber) {
        if (accessionNumber.getCode().equals(""))
            accessionNumber.setCode("none");
        BUSINESS_OBJECT_SERVICE.save(accessionNumber);
    }
}