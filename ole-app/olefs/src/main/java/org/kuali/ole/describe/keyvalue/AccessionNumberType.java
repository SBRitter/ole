package org.kuali.ole.describe.keyvalue;

import org.kuali.ole.docstore.accessionnumber.AccessionNumberManager;
import org.kuali.ole.docstore.common.document.content.instance.AccessionNumber;
import org.kuali.ole.sys.businessobject.UniversityDate;
import org.kuali.ole.sys.util.KfsDateUtils;
import org.kuali.rice.core.api.util.ConcreteKeyValue;
import org.kuali.rice.core.api.util.KeyValue;
import org.kuali.rice.krad.keyvalues.KeyValuesBase;
import org.kuali.rice.krad.service.KRADServiceLocator;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collection;
import java.util.List;

/**
 * AccessionNumberType is used to render the values for AccessionNumberType dropdown control.
 */
public class AccessionNumberType extends KeyValuesBase {

    String year;

    public AccessionNumberType() {

        // Find fiscal year first to make it possible to update counter and year
        UniversityDate uDate = KRADServiceLocator
                .getBusinessObjectService()
                .findBySinglePrimaryKey(UniversityDate.class, new java.sql.Date(KfsDateUtils.clearTimeFields(new java.util.Date()).getTime()));
        if (uDate != null) {
            year = String.valueOf(uDate.getUniversityFiscalYear());
        } else {
            year = String.valueOf(Calendar.getInstance().get(Calendar.YEAR));
        }
    }

    @Override
    public List<KeyValue> getKeyValues() {

        List<KeyValue> options = new ArrayList<KeyValue>();
        Collection<AccessionNumber> accessionNumberTypes =
                KRADServiceLocator.getBusinessObjectService().findAllOrderBy(AccessionNumber.class,"name",true);

        options.add(new ConcreteKeyValue("<no type>", "...choose type for generation"));

        for (AccessionNumber accessionNumber : accessionNumberTypes) {
            updateCounterAndYear(accessionNumber);
            options.add(new ConcreteKeyValue(accessionNumber.getCode(), accessionNumber.getName()));
        }
        return options;

    }

    /*
     * Check whether the year is current fiscal year
     * If not, update year and set counter to 0
     * Save the new accession number in the database
     */
    private void updateCounterAndYear(AccessionNumber accessionNumber){
        if (!accessionNumber.getYear().equals(year)) {
            accessionNumber.setCounter(0);
            accessionNumber.setYear(year);
            AccessionNumberManager accessionNumberManager = new AccessionNumberManager();
            accessionNumberManager.saveAccessionNumber(accessionNumber);
        }
    }
}