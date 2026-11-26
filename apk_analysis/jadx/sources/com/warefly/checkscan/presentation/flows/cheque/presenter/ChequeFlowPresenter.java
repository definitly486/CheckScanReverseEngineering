package com.warefly.checkscan.presentation.flows.cheque.presenter;

import com.warefly.checkscan.core.ui.base.architecture.BasePresenter;
import com.warefly.checkscan.presentation.flows.cheque.view.ChequeFlowView;
import defpackage.zf7;

/* JADX INFO: loaded from: classes5.dex */
public final class ChequeFlowPresenter extends BasePresenter<ChequeFlowView> {
    private final int id;

    public ChequeFlowPresenter(int i) {
        this.id = i;
    }

    public final void openChequeById() {
        ChequeFlowView chequeFlowView = (ChequeFlowView) getViewState();
        if (chequeFlowView != null) {
            chequeFlowView.setLaunchScreen(new zf7(this.id));
        }
    }
}
