package com.warefly.checkscan.presentation.qrHand.calendarDialog.presenter;

import com.warefly.checkscan.calendarspinner.DateTimePickerSpinner;
import com.warefly.checkscan.core.ui.base.architecture.BasePresenter;
import com.warefly.checkscan.presentation.qrHand.calendarDialog.view.CalendarSpinnerView;
import java.util.Date;

/* JADX INFO: loaded from: classes5.dex */
public final class CalendarSpinnerPresenter extends BasePresenter<CalendarSpinnerView> implements DateTimePickerSpinner.a {
    private Date selectedDate;

    public final void onApproveClick() {
        CalendarSpinnerView calendarSpinnerView;
        Date date = this.selectedDate;
        if (date == null || (calendarSpinnerView = (CalendarSpinnerView) getViewState()) == null) {
            return;
        }
        calendarSpinnerView.approveDate(date);
    }

    public final void onCloseClick() {
        CalendarSpinnerView calendarSpinnerView = (CalendarSpinnerView) getViewState();
        if (calendarSpinnerView != null) {
            calendarSpinnerView.dismissBottomSheet();
        }
    }

    @Override // com.warefly.checkscan.calendarspinner.DateTimePickerSpinner.a
    public void onDateChanged(String str, Date date) {
        this.selectedDate = date;
    }
}
