package com.warefly.checkscan.presentation.qrHand.howFindData.presenter;

import com.warefly.checkscan.core.ui.base.architecture.BasePresenter;
import com.warefly.checkscan.presentation.qrHand.howFindData.view.HowFindDataInChequeView;
import defpackage.uf3;

/* JADX INFO: loaded from: classes5.dex */
public final class HowFindDataInChequePresenter extends BasePresenter<HowFindDataInChequeView> {
    private final uf3 flowRouter;

    public HowFindDataInChequePresenter(uf3 uf3Var) {
        uf3Var.getClass();
        this.flowRouter = uf3Var;
    }

    public final void onBackClick() {
        this.flowRouter.c();
    }
}
