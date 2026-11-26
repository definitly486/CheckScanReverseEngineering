package com.warefly.checkscan.presentation.chequePage.share.cheque.presenter;

import com.warefly.checkscan.core.ui.base.architecture.BasePresenter;
import defpackage.aa4;
import defpackage.hd1;

/* JADX INFO: loaded from: classes5.dex */
public final class ShareChequePresenter extends BasePresenter<ShareChequeView> {
    private hd1 cheque;

    public final void onChequeReceived(hd1 hd1Var) {
        hd1Var.getClass();
        this.cheque = hd1Var;
    }

    public final void onShareOptionClicked(ShareChequeView.a aVar) {
        aVar.getClass();
        ShareChequeView shareChequeView = (ShareChequeView) getViewState();
        if (shareChequeView != null) {
            hd1 hd1Var = this.cheque;
            if (hd1Var != null) {
                shareChequeView.shareAs(aVar, hd1Var);
            } else {
                aa4.j("cheque");
                throw null;
            }
        }
    }
}
