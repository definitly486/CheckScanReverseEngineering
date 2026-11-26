package com.warefly.checkscan.presentation.replenishmentCard.presenter;

import com.warefly.checkscan.core.ui.base.architecture.BasePresenter;
import com.warefly.checkscan.presentation.Deeplink;
import com.warefly.checkscan.presentation.c;
import com.warefly.checkscan.presentation.replenishmentCard.view.ReplenishmentCardView;
import defpackage.uf3;

/* JADX INFO: loaded from: classes5.dex */
public final class ReplenishmentCardPresenter extends BasePresenter<ReplenishmentCardView> {
    private final uf3 flowRouter;

    public ReplenishmentCardPresenter(uf3 uf3Var) {
        uf3Var.getClass();
        this.flowRouter = uf3Var;
    }

    public final void onBackClick() {
        this.flowRouter.a(new c(Deeplink.CashBackFlow.CashbackProfile.c));
    }
}
