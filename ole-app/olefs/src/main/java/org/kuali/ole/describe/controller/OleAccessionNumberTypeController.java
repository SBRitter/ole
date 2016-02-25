package org.kuali.ole.describe.controller;

import org.kuali.ole.OLEConstants;
import org.kuali.ole.describe.bo.OleAccessionNumberType;
import org.kuali.rice.core.api.util.RiceKeyConstants;
import org.kuali.rice.krad.document.Document;
import org.kuali.rice.krad.maintenance.MaintenanceDocument;
import org.kuali.rice.krad.service.KRADServiceLocator;
import org.kuali.rice.krad.uif.UifConstants;
import org.kuali.rice.krad.util.GlobalVariables;
import org.kuali.rice.krad.web.controller.MaintenanceDocumentController;
import org.kuali.rice.krad.web.form.DocumentFormBase;
import org.kuali.rice.krad.web.form.MaintenanceDocumentForm;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created with IntelliJ IDEA.
 * User: ?
 * Date: 1/24/13
 * Time: 2:19 PM
 * To change this template use File | Settings | File Templates.
 */
@Controller
@RequestMapping(value = "/accessionNumberTypeMaintenance")
public class OleAccessionNumberTypeController extends MaintenanceDocumentController {
    @RequestMapping(params = "methodToCall=blanketApprove")
    public ModelAndView blanketApprove(@ModelAttribute("KualiForm") DocumentFormBase form, BindingResult result,
                                       HttpServletRequest request, HttpServletResponse response) throws Exception {
        MaintenanceDocumentForm maintenanceForm = (MaintenanceDocumentForm) form;
        MaintenanceDocument maintenanceDocument = (MaintenanceDocument) form.getDocument();
        OleAccessionNumberType oleAccessionNumberType = (OleAccessionNumberType) maintenanceDocument.getDocumentDataObject();
        OleAccessionNumberType oleAccessionNumberTypeOld = (OleAccessionNumberType) maintenanceDocument.getOldMaintainableObject().getDataObject();
        String oleAccessionNumberTypeOldCode = oleAccessionNumberTypeOld.getCode();
        Map<String, String> accessionNumberTypeMap = new HashMap<String, String>();
        accessionNumberTypeMap.put("code", oleAccessionNumberType.getCode());
        List<OleAccessionNumberType> accessionNumberTypeInDatabase = (List<OleAccessionNumberType>) KRADServiceLocator.getBusinessObjectService().findMatching(OleAccessionNumberType.class, accessionNumberTypeMap);

        if ("Edit".equals(maintenanceDocument.getNewMaintainableObject().getMaintenanceAction())) {
            Document document = form.getDocument();
            String successMessageKey = null;
            if (oleAccessionNumberType.getCode().equals(oleAccessionNumberTypeOldCode) || accessionNumberTypeInDatabase.size() == 0) {
                getDocumentService().blanketApproveDocument(document, form.getAnnotation(), combineAdHocRecipients(
                        form));
                successMessageKey = RiceKeyConstants.MESSAGE_ROUTE_APPROVED;
                GlobalVariables.getMessageMap().putInfo("dataObject.code", "message.route.approved");
                return getUIFModelAndView(form);
            } else {
                if (accessionNumberTypeInDatabase.size() > 0) {
                    for (OleAccessionNumberType accessionNumberTypeObj : accessionNumberTypeInDatabase) {
                        String accessionNumberTypeCode = accessionNumberTypeObj.getCode().toString();
                        if (null == oleAccessionNumberType.getCode() ||
                                (oleAccessionNumberType.getCode().equals(accessionNumberTypeCode))) {
                            GlobalVariables.getMessageMap().putError("dataObject.code", "error.duplicate.code");
                            return getUIFModelAndView(form);
                        }
                        getDocumentService().blanketApproveDocument(document, form.getAnnotation(), combineAdHocRecipients(
                                form));
                        successMessageKey = RiceKeyConstants.MESSAGE_ROUTE_APPROVED;
                        GlobalVariables.getMessageMap().putInfo("dataObject.code", "message.route.approved");
                        return getUIFModelAndView(form);
                    }

                }
            }

        }
        if ("Copy".equals(maintenanceDocument.getNewMaintainableObject().getMaintenanceAction())) {
            String successMessageKey = null;
            Document document = form.getDocument();
            if (accessionNumberTypeInDatabase.size() == 0) {
                getDocumentService().blanketApproveDocument(document, form.getAnnotation(), combineAdHocRecipients(
                        form));
                successMessageKey = RiceKeyConstants.MESSAGE_ROUTE_APPROVED;
                GlobalVariables.getMessageMap().putInfo(OLEConstants.OleAccessMethod.ACCESS_METHOD_CODE, "message.route.approved");
                return getUIFModelAndView(form);
            } else if ((accessionNumberTypeInDatabase.size() > 0)) {
                for (OleAccessionNumberType accessionNumberTypeObj : accessionNumberTypeInDatabase) {
                    String accessionNumberCode = accessionNumberTypeObj.getCode().toString();
                    if (null == oleAccessionNumberType.getCode() ||
                            (oleAccessionNumberType.getCode().equals(accessionNumberCode))) {
                        GlobalVariables.getMessageMap().putError("dataObject.code", "error.duplicate.code");
                        return getUIFModelAndView(form);
                    }
                }
            }
        } else if ("New".equals(maintenanceDocument.getNewMaintainableObject().getMaintenanceAction())) {
            String successMessageKey = null;
            Document document = form.getDocument();
            if (accessionNumberTypeInDatabase.size() == 0) {
                getDocumentService().blanketApproveDocument(document, form.getAnnotation(), combineAdHocRecipients(
                        form));
                successMessageKey = RiceKeyConstants.MESSAGE_ROUTE_APPROVED;
                GlobalVariables.getMessageMap().putInfo("dataObject.code", "message.route.approved");
                return getUIFModelAndView(form);
            } else if ((accessionNumberTypeInDatabase.size() > 0)) {
                for (OleAccessionNumberType accessionNumberTypeObj : accessionNumberTypeInDatabase) {
                    String accessionNumberCode = accessionNumberTypeObj.getCode().toString();
                    if (null == oleAccessionNumberType.getCode() ||
                            (oleAccessionNumberType.getCode().equals(accessionNumberCode))) {
                        GlobalVariables.getMessageMap().putError("dataObject.code", "error.duplicate.code");
                        return getUIFModelAndView(form);
                    }
                }

            }
        }
        performWorkflowAction(form, UifConstants.WorkflowAction.BLANKETAPPROVE, true);
        return returnToPrevious(form);
    }
}