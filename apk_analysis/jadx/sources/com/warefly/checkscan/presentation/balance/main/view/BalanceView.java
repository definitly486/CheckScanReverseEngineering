package com.warefly.checkscan.presentation.balance.main.view;

import android.net.Uri;
import com.warefly.checkscan.presentation.balance.withdrawalMethods.base.view.WithdrawalView;
import defpackage.b06;
import defpackage.pz3;
import defpackage.w00;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public interface BalanceView extends WithdrawalView {
    void openMail(Uri uri, String str);

    void showAboutAccrualCashbackDialog(w00 w00Var);

    void showContent(List<? extends pz3> list);

    void showManagementAlfaDialogCabinet(String str);

    void showOrdDialog(b06 b06Var);

    void turnOffRefreshing();
}
