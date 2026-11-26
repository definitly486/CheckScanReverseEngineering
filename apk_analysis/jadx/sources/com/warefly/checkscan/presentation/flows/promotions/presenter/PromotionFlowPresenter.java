package com.warefly.checkscan.presentation.flows.promotions.presenter;

import com.warefly.checkscan.core.ui.base.architecture.BasePresenter;
import com.warefly.checkscan.presentation.flows.promotions.view.PromotionFlowView;
import defpackage.kd;
import defpackage.uf3;
import defpackage.xg7;

/* JADX INFO: loaded from: classes5.dex */
public final class PromotionFlowPresenter extends BasePresenter<PromotionFlowView> {
    private final uf3 flowRouter;
    private final int promotionId;

    public PromotionFlowPresenter(uf3 uf3Var, int i) {
        uf3Var.getClass();
        this.flowRouter = uf3Var;
        this.promotionId = i;
    }

    public final void onBackPressed() {
        this.flowRouter.i();
    }

    public final void onOpened() {
        new kd.i0.a(this.promotionId, kd.q.OpenForm).a();
        PromotionFlowView promotionFlowView = (PromotionFlowView) getViewState();
        if (promotionFlowView != null) {
            promotionFlowView.setLaunchScreen(new xg7(this.promotionId));
        }
    }
}
