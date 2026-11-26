package com.warefly.checkscan.presentation.balance.transferCashback.sbp.view;

import com.warefly.checkscan.core.ui.base.architecture.BaseView;
import defpackage.u09;
import defpackage.xz8;

/* JADX INFO: loaded from: classes5.dex */
public interface TransferSBPView extends BaseView {
    void dismissDialog();

    void showContent(u09 u09Var);

    void showLoading(boolean z);

    void showTransferFailedBottomSheet(xz8.a aVar);

    void showTransferMoneyError(String str);

    void showTransferSuccessBottomSheet(String str, String str2);
}
