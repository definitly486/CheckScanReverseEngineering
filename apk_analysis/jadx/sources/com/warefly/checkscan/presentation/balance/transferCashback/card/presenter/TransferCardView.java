package com.warefly.checkscan.presentation.balance.transferCashback.card.presenter;

import com.warefly.checkscan.core.ui.base.architecture.BaseView;
import defpackage.az8;
import defpackage.zj9;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public interface TransferCardView extends BaseView {
    void hideErrors();

    void setTransferEnabled(boolean z);

    void showApproveTransferDialog(String str, String str2);

    void showErrorInfoNotLoaded(boolean z);

    void showInfo(az8 az8Var);

    void showInvalidTransferSumError();

    void showLoadingInfo(boolean z);

    void showMaxTransferSumExceeded();

    void showMinTransferSumNotReached(int i);

    void showPromocodes(List<zj9> list);

    void showTransferMoneyError(String str);

    void showTransferringMoney(boolean z);

    void startTransferToCoupon(int i);
}
