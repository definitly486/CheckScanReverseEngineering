package com.warefly.checkscan.presentation.balance.withdrawalMethods.base.view;

import com.warefly.checkscan.core.ui.base.architecture.BaseView;
import defpackage.a40;
import defpackage.ec;
import defpackage.gj9;
import defpackage.hn8;
import defpackage.j59;
import defpackage.nl3;
import defpackage.no8;
import defpackage.wi9;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public interface WithdrawalView extends BaseView {
    void handleLoading(boolean z);

    void openCustomTab(String str);

    void showAddEmailDialog();

    void showAlertBeforeWithdrawAction(ec ecVar);

    void showBankPageDialog(String str);

    void showInfoDialog(a40 a40Var);

    void showSomethingWrong();

    void showTaskError(hn8 hn8Var);

    void showTaskSuccess(int i, no8 no8Var);

    void showWithdrawalCards(List<gj9> list, nl3<? super wi9, j59> nl3Var);

    void startTransferSBP(String str);

    void startTransferToBankCard(long j);

    void startTransferToPhone();
}
