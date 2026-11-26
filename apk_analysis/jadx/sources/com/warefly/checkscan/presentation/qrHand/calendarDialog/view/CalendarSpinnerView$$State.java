package com.warefly.checkscan.presentation.qrHand.calendarDialog.view;

import defpackage.hx5;
import defpackage.kh5;
import defpackage.wd9;
import defpackage.xd9;
import java.util.Date;
import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
public class CalendarSpinnerView$$State extends kh5<CalendarSpinnerView> implements CalendarSpinnerView {
    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.qrHand.calendarDialog.view.CalendarSpinnerView
    public void approveDate(Date date) {
        ApproveDateCommand approveDateCommand = new ApproveDateCommand(this, date);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(approveDateCommand).b(xd9Var.a, approveDateCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((CalendarSpinnerView) it.next()).approveDate(date);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(approveDateCommand).a(xd9Var2.a, approveDateCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.qrHand.calendarDialog.view.CalendarSpinnerView
    public void dismissBottomSheet() {
        DismissBottomSheetCommand dismissBottomSheetCommand = new DismissBottomSheetCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(dismissBottomSheetCommand).b(xd9Var.a, dismissBottomSheetCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((CalendarSpinnerView) it.next()).dismissBottomSheet();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(dismissBottomSheetCommand).a(xd9Var2.a, dismissBottomSheetCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseView
    public void openUrl(String str) {
        OpenUrlCommand openUrlCommand = new OpenUrlCommand(this, str);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(openUrlCommand).b(xd9Var.a, openUrlCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((CalendarSpinnerView) it.next()).openUrl(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(openUrlCommand).a(xd9Var2.a, openUrlCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseView
    public void openUrlInCustomTab(String str) {
        OpenUrlInCustomTabCommand openUrlInCustomTabCommand = new OpenUrlInCustomTabCommand(this, str);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(openUrlInCustomTabCommand).b(xd9Var.a, openUrlInCustomTabCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((CalendarSpinnerView) it.next()).openUrlInCustomTab(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(openUrlInCustomTabCommand).a(xd9Var2.a, openUrlInCustomTabCommand);
    }

    public class ApproveDateCommand extends wd9<CalendarSpinnerView> {
        public final Date date;

        public ApproveDateCommand(CalendarSpinnerView$$State calendarSpinnerView$$State, Date date) {
            super("approveDate", hx5.class);
            this.date = date;
        }

        @Override // defpackage.wd9
        public void apply(CalendarSpinnerView calendarSpinnerView) {
            calendarSpinnerView.approveDate(this.date);
        }
    }

    public class DismissBottomSheetCommand extends wd9<CalendarSpinnerView> {
        public DismissBottomSheetCommand(CalendarSpinnerView$$State calendarSpinnerView$$State) {
            super("dismissBottomSheet", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(CalendarSpinnerView calendarSpinnerView) {
            calendarSpinnerView.dismissBottomSheet();
        }
    }

    public class OpenUrlCommand extends wd9<CalendarSpinnerView> {
        public final String arg0;

        public OpenUrlCommand(CalendarSpinnerView$$State calendarSpinnerView$$State, String str) {
            super("openUrl", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(CalendarSpinnerView calendarSpinnerView) {
            calendarSpinnerView.openUrl(this.arg0);
        }
    }

    public class OpenUrlInCustomTabCommand extends wd9<CalendarSpinnerView> {
        public final String arg0;

        public OpenUrlInCustomTabCommand(CalendarSpinnerView$$State calendarSpinnerView$$State, String str) {
            super("openUrlInCustomTab", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(CalendarSpinnerView calendarSpinnerView) {
            calendarSpinnerView.openUrlInCustomTab(this.arg0);
        }
    }
}
