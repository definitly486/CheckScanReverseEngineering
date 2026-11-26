package com.warefly.checkscan.presentation.flows.specifyPlace.addCheque.view;

import com.warefly.checkscan.core.ui.base.architecture.BaseView;
import defpackage.gw6;

/* JADX INFO: loaded from: classes5.dex */
public interface AddChequeView extends BaseView {
    void finishLoadingFNSStatus();

    void loadUpdatingFNSStatus();

    void setToolbarTitle(String str);

    void showChequeAlreadyWasScanned();

    void showChequeInvalid();

    void showChequeNotCorrectFormat();

    void showCouldntDeleteCheque();

    void showCouldntRefreshCheque();

    void showFnsNotResponding();

    void showNoShopReceived();

    void showReceiptData(gw6 gw6Var);
}
