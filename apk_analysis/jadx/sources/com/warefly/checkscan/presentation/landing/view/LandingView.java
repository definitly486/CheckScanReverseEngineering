package com.warefly.checkscan.presentation.landing.view;

import com.warefly.checkscan.core.ui.base.architecture.BaseView;
import com.wdullaer.materialdatetimepicker.date.DatePickerDialog;
import defpackage.aj4;
import defpackage.b06;
import defpackage.ur6;

/* JADX INFO: loaded from: classes5.dex */
public interface LandingView extends BaseView {
    void openCustomTab(String str);

    void showContent(aj4.a aVar);

    void showDatePicker(DatePickerDialog.OnDateSetListener onDateSetListener);

    void showImage(String str);

    void showOfdDialog(b06 b06Var);

    void showOfferRegistrationDialog();

    void showPromoRegisterResult(ur6 ur6Var);
}
