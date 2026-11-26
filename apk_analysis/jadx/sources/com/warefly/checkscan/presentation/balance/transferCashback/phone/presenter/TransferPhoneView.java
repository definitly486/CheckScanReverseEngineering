package com.warefly.checkscan.presentation.balance.transferCashback.phone.presenter;

import com.warefly.checkscan.core.ui.base.architecture.BaseView;
import defpackage.sz8;
import defpackage.xz8;
import defpackage.zj9;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public interface TransferPhoneView extends BaseView {
    void hideErrors();

    void setTransferEnabled(boolean z);

    void showErrorInfoNotLoaded(boolean z, boolean z2);

    void showInfo(sz8 sz8Var);

    void showInvalidTransferSumError();

    void showLoadingInfo(boolean z);

    void showMinTransferSumNotReached(int i);

    void showPromocodes(List<zj9> list);

    void showTransferFailedBottomSheet(xz8.a aVar);

    void showTransferMoneyError(String str);

    void showTransferMoneySuccess(String str);

    void showTransferringMoney(boolean z);

    void showWrongTransferSum();

    void startTransferToCoupon(int i);
}
