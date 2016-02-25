package org.kuali.ole.docstore.common.document.content.instance;

import org.kuali.rice.krad.bo.PersistableBusinessObjectBase;

public class AccessionNumber extends PersistableBusinessObjectBase {

    private static final long serialVersionUID = 1L;

    private String code;
    private String name;
    private int counter;
    private String year;
    private String syntax;

    public AccessionNumber() {
    }

    public AccessionNumber(String code, String name, int counter, String year, String syntax) {
        this.code = code;
        this.name = name;
        this.counter = counter;
        this.year = year;
        this.syntax = syntax;
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

    public int getCounter() {
        return counter;
    }
    public void setCounter(int counter) {
        this.counter = counter;
    }

    public String getYear() {
        return year;
    }
    public void setYear(String year) {
        this.year = year;
    }

    public String getSyntax() {
        return syntax;
    }

    public void setSyntax(String syntax) {
        this.syntax = syntax;
    }

    @Override
    public String toString(){
        String accessionNumberString = syntax;

        // Translate syntax into accession number:
        // 1. COUNTER has to be replaced by formattable contruct, i.e. COUNTER6 --> %06d
        // 2. YEAR and CODE are simply replaced
        // 3. String is formatted with counter
        accessionNumberString = accessionNumberString.replaceFirst("(\\d)", "$1d");
        accessionNumberString = accessionNumberString.replaceFirst("COUNTER", "%0");
        accessionNumberString = accessionNumberString.replaceFirst("YEAR", year);
        if (code.equals("none")) {
            accessionNumberString = accessionNumberString.replaceFirst("CODE", "");
        } else {
            accessionNumberString = accessionNumberString.replaceFirst("CODE", code);
        }
        accessionNumberString = String.format(accessionNumberString, counter);
        return accessionNumberString;
    }
}