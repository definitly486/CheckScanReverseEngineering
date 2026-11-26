package com.warefly.checkscan.presentation.balance.transferCashback.coupons.presenter;

import com.warefly.checkscan.core.ui.base.architecture.BaseView;
import defpackage.e09;
import defpackage.gq6;

/* JADX INFO: loaded from: classes5.dex */
public interface TransferCouponView extends BaseView {
    void showDialog(String str, String str2);

    void showErrorInfoNotLoaded();

    void showInfo(gq6.a aVar, String str);

    void showLoadingInfo(boolean z);

    void showPopupCopied(String str);

    void showTransferMoneySuccess(e09 e09Var);

    void showTransferringMoney(boolean z);
}
