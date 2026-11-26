package com.warefly.checkscan.presentation.cheques.view;

import android.text.SpannableString;
import com.warefly.checkscan.core.ui.base.architecture.BaseView;
import defpackage.b06;
import defpackage.u48;
import defpackage.xb0;
import defpackage.z96;
import java.util.Date;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public interface ChequesView extends BaseView {
    void openDeeplink(String str);

    void refreshSorts(List<? extends u48> list);

    void showAlfaProgressCheques(String str, SpannableString spannableString, int i, boolean z);

    void showBanner(xb0 xb0Var);

    void showBannerIgnored();

    void showCheques(List<Object> list, boolean z);

    void showChequesDuringOnboarding(List<Object> list);

    void showChequesLoading(boolean z);

    void showCouldntDeleteCheque();

    void showCouldntLoadCheques(boolean z);

    void showDateRange(Date date, Date date2, boolean z);

    void showDateSortDialog();

    void showDeselectDateButton(boolean z);

    void showError();

    void showExpenses(long j);

    void showGoScanFirstReceipt(boolean z);

    void showLoadingElectrocheques(boolean z);

    void showMiniBanner(String str, String str2, b06 b06Var);

    void showNoChequesForSelectedFilter(boolean z);

    void showOrdAdDialog(b06 b06Var);

    void showPoll(z96 z96Var);

    void showSorts(List<? extends u48> list);

    void showSumSortDialog();

    void showUnauthorized();

    void updateChequeQueueCount(int i);
}
