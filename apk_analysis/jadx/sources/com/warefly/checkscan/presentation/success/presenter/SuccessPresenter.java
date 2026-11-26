package com.warefly.checkscan.presentation.success.presenter;

import com.warefly.checkscan.core.ui.base.architecture.BasePresenter;
import com.warefly.checkscan.presentation.success.view.SuccessView;
import defpackage.uf3;

/* JADX INFO: loaded from: classes5.dex */
public final class SuccessPresenter extends BasePresenter<SuccessView> {
    private final uf3 flowRouter;

    public SuccessPresenter(uf3 uf3Var) {
        uf3Var.getClass();
        this.flowRouter = uf3Var;
    }

    public final void onActionButtonClick() {
        this.flowRouter.i();
    }

    public final void onBackCLick() {
        this.flowRouter.i();
    }
}
