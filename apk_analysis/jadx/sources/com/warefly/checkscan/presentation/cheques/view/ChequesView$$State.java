package com.warefly.checkscan.presentation.cheques.view;

import android.text.SpannableString;
import defpackage.b06;
import defpackage.hx5;
import defpackage.i9;
import defpackage.kh5;
import defpackage.u48;
import defpackage.wd9;
import defpackage.xb0;
import defpackage.xd9;
import defpackage.z96;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class ChequesView$$State extends kh5<ChequesView> implements ChequesView {

    public class ShowAlfaProgressChequesCommand extends wd9<ChequesView> {
        public final boolean complete;
        public final int progress;
        public final SpannableString progressText;
        public final String title;

        public ShowAlfaProgressChequesCommand(ChequesView$$State chequesView$$State, String str, SpannableString spannableString, int i, boolean z) {
            super("showAlfaProgressCheques", i9.class);
            this.title = str;
            this.progressText = spannableString;
            this.progress = i;
            this.complete = z;
        }

        @Override // defpackage.wd9
        public void apply(ChequesView chequesView) {
            chequesView.showAlfaProgressCheques(this.title, this.progressText, this.progress, this.complete);
        }
    }

    public class ShowChequesCommand extends wd9<ChequesView> {
        public final List<Object> cheques;
        public final boolean forceShowContent;

        public ShowChequesCommand(ChequesView$$State chequesView$$State, List<Object> list, boolean z) {
            super("showCheques", i9.class);
            this.cheques = list;
            this.forceShowContent = z;
        }

        @Override // defpackage.wd9
        public void apply(ChequesView chequesView) {
            chequesView.showCheques(this.cheques, this.forceShowContent);
        }
    }

    public class ShowDateRangeCommand extends wd9<ChequesView> {
        public final boolean asMonth;
        public final Date fromDate;
        public final Date toDate;

        public ShowDateRangeCommand(ChequesView$$State chequesView$$State, Date date, Date date2, boolean z) {
            super("showDateRange", i9.class);
            this.fromDate = date;
            this.toDate = date2;
            this.asMonth = z;
        }

        @Override // defpackage.wd9
        public void apply(ChequesView chequesView) {
            chequesView.showDateRange(this.fromDate, this.toDate, this.asMonth);
        }
    }

    public class ShowMiniBannerCommand extends wd9<ChequesView> {
        public final String img;
        public final b06 ordInfo;
        public final String url;

        public ShowMiniBannerCommand(ChequesView$$State chequesView$$State, String str, String str2, b06 b06Var) {
            super("showMiniBanner", i9.class);
            this.img = str;
            this.url = str2;
            this.ordInfo = b06Var;
        }

        @Override // defpackage.wd9
        public void apply(ChequesView chequesView) {
            chequesView.showMiniBanner(this.img, this.url, this.ordInfo);
        }
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.cheques.view.ChequesView
    public void openDeeplink(String str) {
        OpenDeeplinkCommand openDeeplinkCommand = new OpenDeeplinkCommand(this, str);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(openDeeplinkCommand).b(xd9Var.a, openDeeplinkCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((ChequesView) it.next()).openDeeplink(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(openDeeplinkCommand).a(xd9Var2.a, openDeeplinkCommand);
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
            ((ChequesView) it.next()).openUrl(str);
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
            ((ChequesView) it.next()).openUrlInCustomTab(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(openUrlInCustomTabCommand).a(xd9Var2.a, openUrlInCustomTabCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.cheques.view.ChequesView
    public void refreshSorts(List<? extends u48> list) {
        RefreshSortsCommand refreshSortsCommand = new RefreshSortsCommand(this, list);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(refreshSortsCommand).b(xd9Var.a, refreshSortsCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((ChequesView) it.next()).refreshSorts(list);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(refreshSortsCommand).a(xd9Var2.a, refreshSortsCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.cheques.view.ChequesView
    public void showAlfaProgressCheques(String str, SpannableString spannableString, int i, boolean z) {
        ShowAlfaProgressChequesCommand showAlfaProgressChequesCommand = new ShowAlfaProgressChequesCommand(this, str, spannableString, i, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showAlfaProgressChequesCommand).b(xd9Var.a, showAlfaProgressChequesCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((ChequesView) it.next()).showAlfaProgressCheques(str, spannableString, i, z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showAlfaProgressChequesCommand).a(xd9Var2.a, showAlfaProgressChequesCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.cheques.view.ChequesView
    public void showBanner(xb0 xb0Var) {
        ShowBannerCommand showBannerCommand = new ShowBannerCommand(this, xb0Var);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showBannerCommand).b(xd9Var.a, showBannerCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((ChequesView) it.next()).showBanner(xb0Var);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showBannerCommand).a(xd9Var2.a, showBannerCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.cheques.view.ChequesView
    public void showBannerIgnored() {
        ShowBannerIgnoredCommand showBannerIgnoredCommand = new ShowBannerIgnoredCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showBannerIgnoredCommand).b(xd9Var.a, showBannerIgnoredCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((ChequesView) it.next()).showBannerIgnored();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showBannerIgnoredCommand).a(xd9Var2.a, showBannerIgnoredCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.cheques.view.ChequesView
    public void showCheques(List<Object> list, boolean z) {
        ShowChequesCommand showChequesCommand = new ShowChequesCommand(this, list, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showChequesCommand).b(xd9Var.a, showChequesCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((ChequesView) it.next()).showCheques(list, z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showChequesCommand).a(xd9Var2.a, showChequesCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.cheques.view.ChequesView
    public void showChequesDuringOnboarding(List<Object> list) {
        ShowChequesDuringOnboardingCommand showChequesDuringOnboardingCommand = new ShowChequesDuringOnboardingCommand(this, list);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showChequesDuringOnboardingCommand).b(xd9Var.a, showChequesDuringOnboardingCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((ChequesView) it.next()).showChequesDuringOnboarding(list);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showChequesDuringOnboardingCommand).a(xd9Var2.a, showChequesDuringOnboardingCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.cheques.view.ChequesView
    public void showChequesLoading(boolean z) {
        ShowChequesLoadingCommand showChequesLoadingCommand = new ShowChequesLoadingCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showChequesLoadingCommand).b(xd9Var.a, showChequesLoadingCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((ChequesView) it.next()).showChequesLoading(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showChequesLoadingCommand).a(xd9Var2.a, showChequesLoadingCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.cheques.view.ChequesView
    public void showCouldntDeleteCheque() {
        ShowCouldntDeleteChequeCommand showCouldntDeleteChequeCommand = new ShowCouldntDeleteChequeCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showCouldntDeleteChequeCommand).b(xd9Var.a, showCouldntDeleteChequeCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((ChequesView) it.next()).showCouldntDeleteCheque();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showCouldntDeleteChequeCommand).a(xd9Var2.a, showCouldntDeleteChequeCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.cheques.view.ChequesView
    public void showCouldntLoadCheques(boolean z) {
        ShowCouldntLoadChequesCommand showCouldntLoadChequesCommand = new ShowCouldntLoadChequesCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showCouldntLoadChequesCommand).b(xd9Var.a, showCouldntLoadChequesCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((ChequesView) it.next()).showCouldntLoadCheques(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showCouldntLoadChequesCommand).a(xd9Var2.a, showCouldntLoadChequesCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.cheques.view.ChequesView
    public void showDateRange(Date date, Date date2, boolean z) {
        ShowDateRangeCommand showDateRangeCommand = new ShowDateRangeCommand(this, date, date2, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showDateRangeCommand).b(xd9Var.a, showDateRangeCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((ChequesView) it.next()).showDateRange(date, date2, z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showDateRangeCommand).a(xd9Var2.a, showDateRangeCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.cheques.view.ChequesView
    public void showDateSortDialog() {
        ShowDateSortDialogCommand showDateSortDialogCommand = new ShowDateSortDialogCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showDateSortDialogCommand).b(xd9Var.a, showDateSortDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((ChequesView) it.next()).showDateSortDialog();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showDateSortDialogCommand).a(xd9Var2.a, showDateSortDialogCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.cheques.view.ChequesView
    public void showDeselectDateButton(boolean z) {
        ShowDeselectDateButtonCommand showDeselectDateButtonCommand = new ShowDeselectDateButtonCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showDeselectDateButtonCommand).b(xd9Var.a, showDeselectDateButtonCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((ChequesView) it.next()).showDeselectDateButton(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showDeselectDateButtonCommand).a(xd9Var2.a, showDeselectDateButtonCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.cheques.view.ChequesView
    public void showError() {
        ShowErrorCommand showErrorCommand = new ShowErrorCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showErrorCommand).b(xd9Var.a, showErrorCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((ChequesView) it.next()).showError();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showErrorCommand).a(xd9Var2.a, showErrorCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.cheques.view.ChequesView
    public void showExpenses(long j) {
        ShowExpensesCommand showExpensesCommand = new ShowExpensesCommand(this, j);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showExpensesCommand).b(xd9Var.a, showExpensesCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((ChequesView) it.next()).showExpenses(j);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showExpensesCommand).a(xd9Var2.a, showExpensesCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.cheques.view.ChequesView
    public void showGoScanFirstReceipt(boolean z) {
        ShowGoScanFirstReceiptCommand showGoScanFirstReceiptCommand = new ShowGoScanFirstReceiptCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showGoScanFirstReceiptCommand).b(xd9Var.a, showGoScanFirstReceiptCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((ChequesView) it.next()).showGoScanFirstReceipt(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showGoScanFirstReceiptCommand).a(xd9Var2.a, showGoScanFirstReceiptCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.cheques.view.ChequesView
    public void showLoadingElectrocheques(boolean z) {
        ShowLoadingElectrochequesCommand showLoadingElectrochequesCommand = new ShowLoadingElectrochequesCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showLoadingElectrochequesCommand).b(xd9Var.a, showLoadingElectrochequesCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((ChequesView) it.next()).showLoadingElectrocheques(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showLoadingElectrochequesCommand).a(xd9Var2.a, showLoadingElectrochequesCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.cheques.view.ChequesView
    public void showMiniBanner(String str, String str2, b06 b06Var) {
        ShowMiniBannerCommand showMiniBannerCommand = new ShowMiniBannerCommand(this, str, str2, b06Var);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showMiniBannerCommand).b(xd9Var.a, showMiniBannerCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((ChequesView) it.next()).showMiniBanner(str, str2, b06Var);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showMiniBannerCommand).a(xd9Var2.a, showMiniBannerCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.cheques.view.ChequesView
    public void showNoChequesForSelectedFilter(boolean z) {
        ShowNoChequesForSelectedFilterCommand showNoChequesForSelectedFilterCommand = new ShowNoChequesForSelectedFilterCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showNoChequesForSelectedFilterCommand).b(xd9Var.a, showNoChequesForSelectedFilterCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((ChequesView) it.next()).showNoChequesForSelectedFilter(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showNoChequesForSelectedFilterCommand).a(xd9Var2.a, showNoChequesForSelectedFilterCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.cheques.view.ChequesView
    public void showOrdAdDialog(b06 b06Var) {
        ShowOrdAdDialogCommand showOrdAdDialogCommand = new ShowOrdAdDialogCommand(this, b06Var);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showOrdAdDialogCommand).b(xd9Var.a, showOrdAdDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((ChequesView) it.next()).showOrdAdDialog(b06Var);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showOrdAdDialogCommand).a(xd9Var2.a, showOrdAdDialogCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.cheques.view.ChequesView
    public void showPoll(z96 z96Var) {
        ShowPollCommand showPollCommand = new ShowPollCommand(this, z96Var);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showPollCommand).b(xd9Var.a, showPollCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((ChequesView) it.next()).showPoll(z96Var);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showPollCommand).a(xd9Var2.a, showPollCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.cheques.view.ChequesView
    public void showSorts(List<? extends u48> list) {
        ShowSortsCommand showSortsCommand = new ShowSortsCommand(this, list);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showSortsCommand).b(xd9Var.a, showSortsCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((ChequesView) it.next()).showSorts(list);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showSortsCommand).a(xd9Var2.a, showSortsCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.cheques.view.ChequesView
    public void showSumSortDialog() {
        ShowSumSortDialogCommand showSumSortDialogCommand = new ShowSumSortDialogCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showSumSortDialogCommand).b(xd9Var.a, showSumSortDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((ChequesView) it.next()).showSumSortDialog();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showSumSortDialogCommand).a(xd9Var2.a, showSumSortDialogCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.cheques.view.ChequesView
    public void showUnauthorized() {
        ShowUnauthorizedCommand showUnauthorizedCommand = new ShowUnauthorizedCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showUnauthorizedCommand).b(xd9Var.a, showUnauthorizedCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((ChequesView) it.next()).showUnauthorized();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showUnauthorizedCommand).a(xd9Var2.a, showUnauthorizedCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.cheques.view.ChequesView
    public void updateChequeQueueCount(int i) {
        UpdateChequeQueueCountCommand updateChequeQueueCountCommand = new UpdateChequeQueueCountCommand(this, i);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(updateChequeQueueCountCommand).b(xd9Var.a, updateChequeQueueCountCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((ChequesView) it.next()).updateChequeQueueCount(i);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(updateChequeQueueCountCommand).a(xd9Var2.a, updateChequeQueueCountCommand);
    }

    public class OpenDeeplinkCommand extends wd9<ChequesView> {
        public final String deeplink;

        public OpenDeeplinkCommand(ChequesView$$State chequesView$$State, String str) {
            super("openDeeplink", hx5.class);
            this.deeplink = str;
        }

        @Override // defpackage.wd9
        public void apply(ChequesView chequesView) {
            chequesView.openDeeplink(this.deeplink);
        }
    }

    public class OpenUrlCommand extends wd9<ChequesView> {
        public final String arg0;

        public OpenUrlCommand(ChequesView$$State chequesView$$State, String str) {
            super("openUrl", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(ChequesView chequesView) {
            chequesView.openUrl(this.arg0);
        }
    }

    public class OpenUrlInCustomTabCommand extends wd9<ChequesView> {
        public final String arg0;

        public OpenUrlInCustomTabCommand(ChequesView$$State chequesView$$State, String str) {
            super("openUrlInCustomTab", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(ChequesView chequesView) {
            chequesView.openUrlInCustomTab(this.arg0);
        }
    }

    public class RefreshSortsCommand extends wd9<ChequesView> {
        public final List<? extends u48> sorts;

        public RefreshSortsCommand(ChequesView$$State chequesView$$State, List<? extends u48> list) {
            super("refreshSorts", i9.class);
            this.sorts = list;
        }

        @Override // defpackage.wd9
        public void apply(ChequesView chequesView) {
            chequesView.refreshSorts(this.sorts);
        }
    }

    public class ShowBannerCommand extends wd9<ChequesView> {
        public final xb0 banner;

        public ShowBannerCommand(ChequesView$$State chequesView$$State, xb0 xb0Var) {
            super("showBanner", i9.class);
            this.banner = xb0Var;
        }

        @Override // defpackage.wd9
        public void apply(ChequesView chequesView) {
            chequesView.showBanner(this.banner);
        }
    }

    public class ShowBannerIgnoredCommand extends wd9<ChequesView> {
        public ShowBannerIgnoredCommand(ChequesView$$State chequesView$$State) {
            super("showBannerIgnored", i9.class);
        }

        @Override // defpackage.wd9
        public void apply(ChequesView chequesView) {
            chequesView.showBannerIgnored();
        }
    }

    public class ShowChequesDuringOnboardingCommand extends wd9<ChequesView> {
        public final List<Object> cheques;

        public ShowChequesDuringOnboardingCommand(ChequesView$$State chequesView$$State, List<Object> list) {
            super("showChequesDuringOnboarding", i9.class);
            this.cheques = list;
        }

        @Override // defpackage.wd9
        public void apply(ChequesView chequesView) {
            chequesView.showChequesDuringOnboarding(this.cheques);
        }
    }

    public class ShowChequesLoadingCommand extends wd9<ChequesView> {
        public final boolean isLoading;

        public ShowChequesLoadingCommand(ChequesView$$State chequesView$$State, boolean z) {
            super("showChequesLoading", i9.class);
            this.isLoading = z;
        }

        @Override // defpackage.wd9
        public void apply(ChequesView chequesView) {
            chequesView.showChequesLoading(this.isLoading);
        }
    }

    public class ShowCouldntDeleteChequeCommand extends wd9<ChequesView> {
        public ShowCouldntDeleteChequeCommand(ChequesView$$State chequesView$$State) {
            super("showCouldntDeleteCheque", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(ChequesView chequesView) {
            chequesView.showCouldntDeleteCheque();
        }
    }

    public class ShowCouldntLoadChequesCommand extends wd9<ChequesView> {
        public final boolean show;

        public ShowCouldntLoadChequesCommand(ChequesView$$State chequesView$$State, boolean z) {
            super("showCouldntLoadCheques", hx5.class);
            this.show = z;
        }

        @Override // defpackage.wd9
        public void apply(ChequesView chequesView) {
            chequesView.showCouldntLoadCheques(this.show);
        }
    }

    public class ShowDateSortDialogCommand extends wd9<ChequesView> {
        public ShowDateSortDialogCommand(ChequesView$$State chequesView$$State) {
            super("showDateSortDialog", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(ChequesView chequesView) {
            chequesView.showDateSortDialog();
        }
    }

    public class ShowDeselectDateButtonCommand extends wd9<ChequesView> {
        public final boolean show;

        public ShowDeselectDateButtonCommand(ChequesView$$State chequesView$$State, boolean z) {
            super("showDeselectDateButton", i9.class);
            this.show = z;
        }

        @Override // defpackage.wd9
        public void apply(ChequesView chequesView) {
            chequesView.showDeselectDateButton(this.show);
        }
    }

    public class ShowErrorCommand extends wd9<ChequesView> {
        public ShowErrorCommand(ChequesView$$State chequesView$$State) {
            super("showError", i9.class);
        }

        @Override // defpackage.wd9
        public void apply(ChequesView chequesView) {
            chequesView.showError();
        }
    }

    public class ShowExpensesCommand extends wd9<ChequesView> {
        public final long expenses;

        public ShowExpensesCommand(ChequesView$$State chequesView$$State, long j) {
            super("showExpenses", i9.class);
            this.expenses = j;
        }

        @Override // defpackage.wd9
        public void apply(ChequesView chequesView) {
            chequesView.showExpenses(this.expenses);
        }
    }

    public class ShowGoScanFirstReceiptCommand extends wd9<ChequesView> {
        public final boolean show;

        public ShowGoScanFirstReceiptCommand(ChequesView$$State chequesView$$State, boolean z) {
            super("showGoScanFirstReceipt", i9.class);
            this.show = z;
        }

        @Override // defpackage.wd9
        public void apply(ChequesView chequesView) {
            chequesView.showGoScanFirstReceipt(this.show);
        }
    }

    public class ShowLoadingElectrochequesCommand extends wd9<ChequesView> {
        public final boolean show;

        public ShowLoadingElectrochequesCommand(ChequesView$$State chequesView$$State, boolean z) {
            super("showLoadingElectrocheques", i9.class);
            this.show = z;
        }

        @Override // defpackage.wd9
        public void apply(ChequesView chequesView) {
            chequesView.showLoadingElectrocheques(this.show);
        }
    }

    public class ShowNoChequesForSelectedFilterCommand extends wd9<ChequesView> {
        public final boolean show;

        public ShowNoChequesForSelectedFilterCommand(ChequesView$$State chequesView$$State, boolean z) {
            super("showNoChequesForSelectedFilter", i9.class);
            this.show = z;
        }

        @Override // defpackage.wd9
        public void apply(ChequesView chequesView) {
            chequesView.showNoChequesForSelectedFilter(this.show);
        }
    }

    public class ShowOrdAdDialogCommand extends wd9<ChequesView> {
        public final b06 ordInfo;

        public ShowOrdAdDialogCommand(ChequesView$$State chequesView$$State, b06 b06Var) {
            super("showOrdAdDialog", hx5.class);
            this.ordInfo = b06Var;
        }

        @Override // defpackage.wd9
        public void apply(ChequesView chequesView) {
            chequesView.showOrdAdDialog(this.ordInfo);
        }
    }

    public class ShowPollCommand extends wd9<ChequesView> {
        public final z96 poll;

        public ShowPollCommand(ChequesView$$State chequesView$$State, z96 z96Var) {
            super("showPoll", i9.class);
            this.poll = z96Var;
        }

        @Override // defpackage.wd9
        public void apply(ChequesView chequesView) {
            chequesView.showPoll(this.poll);
        }
    }

    public class ShowSortsCommand extends wd9<ChequesView> {
        public final List<? extends u48> sorts;

        public ShowSortsCommand(ChequesView$$State chequesView$$State, List<? extends u48> list) {
            super("showSorts", i9.class);
            this.sorts = list;
        }

        @Override // defpackage.wd9
        public void apply(ChequesView chequesView) {
            chequesView.showSorts(this.sorts);
        }
    }

    public class ShowSumSortDialogCommand extends wd9<ChequesView> {
        public ShowSumSortDialogCommand(ChequesView$$State chequesView$$State) {
            super("showSumSortDialog", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(ChequesView chequesView) {
            chequesView.showSumSortDialog();
        }
    }

    public class ShowUnauthorizedCommand extends wd9<ChequesView> {
        public ShowUnauthorizedCommand(ChequesView$$State chequesView$$State) {
            super("showUnauthorized", i9.class);
        }

        @Override // defpackage.wd9
        public void apply(ChequesView chequesView) {
            chequesView.showUnauthorized();
        }
    }

    public class UpdateChequeQueueCountCommand extends wd9<ChequesView> {
        public final int count;

        public UpdateChequeQueueCountCommand(ChequesView$$State chequesView$$State, int i) {
            super("updateChequeQueueCount", i9.class);
            this.count = i;
        }

        @Override // defpackage.wd9
        public void apply(ChequesView chequesView) {
            chequesView.updateChequeQueueCount(this.count);
        }
    }
}
