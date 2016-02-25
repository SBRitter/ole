package org.kuali.ole.describe.bo;

import org.kuali.ole.sys.businessobject.UniversityDate;
import org.kuali.ole.sys.util.KfsDateUtils;
import org.kuali.rice.krad.bo.PersistableBusinessObjectBase;
import org.kuali.rice.krad.service.KRADServiceLocator;

import java.util.Calendar;
import java.util.LinkedHashMap;

public class OleAccessionNumberType extends PersistableBusinessObjectBase {

    private String code;
    private String name;
    private String syntax;
    private String year;
    private int counter;

    UniversityDate universityDate = KRADServiceLocator.getBusinessObjectService().findBySinglePrimaryKey(UniversityDate.class,
            new java.sql.Date(KfsDateUtils.clearTimeFields(new java.util.Date()).getTime()));

    public OleAccessionNumberType() {
        syntax = "CODEYEAR/COUNTER6";
        if (universityDate != null) {
            year = String.valueOf(universityDate.getUniversityFiscalYear());
        } else {
            year = String.valueOf(Calendar.getInstance().get(Calendar.YEAR));
        }
        counter = 0;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSyntax() {
        return syntax;
    }

    public void setSyntax(String syntax) {
        this.syntax = syntax;
    }

    public String getYear() {
        return year;
    }

    public void setYear(String year) {
        this.year = year;
    }

    public int getCounter() {
        return counter;
    }

    public void setCounter(int counter) {
        this.counter = counter;
    }

    protected LinkedHashMap toStringMapper() {
        LinkedHashMap toStringMap = new LinkedHashMap();
        toStringMap.put("code", code);
        toStringMap.put("name", name);
        toStringMap.put("syntax", syntax);
        toStringMap.put("year", year);
        toStringMap.put("counter", counter);
        return toStringMap;
    }
}