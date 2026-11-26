package com.warefly.checkscan.presentation.qrHand.calendarDialog.view;

import android.os.Bundle;
import com.warefly.checkscan.core.ui.base.dialogs.BaseBottomSheetDialog;
import com.warefly.checkscan.core.ui.databinding.DialogCalendarSpinnerBinding;
import com.warefly.checkscan.presentation.qrHand.calendarDialog.presenter.CalendarSpinnerPresenter;
import defpackage.bs6;
import defpackage.x07;
import defpackage.ze4;
import java.util.Date;

/* JADX INFO: loaded from: classes5.dex */
public final class CalendarSpinnerBottomSheetDialog extends BaseBottomSheetDialog<DialogCalendarSpinnerBinding> implements CalendarSpinnerView {
    public static final /* synthetic */ ze4<Object>[] d;
    public CalendarSpinnerPresenter presenter;

    static {
        bs6 bs6Var = new bs6(CalendarSpinnerBottomSheetDialog.class, "binding", "getBinding()Lcom/warefly/checkscan/core/ui/databinding/DialogCalendarSpinnerBinding;", 0);
        x07.a.getClass();
        d = new ze4[]{bs6Var};
    }

    @Override // com.warefly.checkscan.presentation.qrHand.calendarDialog.view.CalendarSpinnerView
    public final void approveDate(Date date) {
        date.getClass();
        throw null;
    }

    @Override // com.warefly.checkscan.core.ui.base.dialogs.BaseBottomSheetDialog, com.google.android.material.bottomsheet.BottomSheetDialog, androidx.appcompat.app.AppCompatDialog, androidx.activity.ComponentDialog, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ze4<Object> ze4Var = d[0];
        throw null;
    }

    public final CalendarSpinnerPresenter providePresenter() {
        return new CalendarSpinnerPresenter();
    }
}
