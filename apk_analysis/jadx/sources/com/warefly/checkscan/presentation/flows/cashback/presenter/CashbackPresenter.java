package com.warefly.checkscan.presentation.flows.cashback.presenter;

import com.warefly.checkscan.core.ui.base.architecture.BasePresenter;
import com.warefly.checkscan.presentation.Deeplink;
import com.warefly.checkscan.presentation.f;
import defpackage.aa4;
import defpackage.ch7;
import defpackage.ci7;
import defpackage.d62;
import defpackage.ig7;
import defpackage.kf7;
import defpackage.nh7;
import defpackage.pf7;
import defpackage.rh7;
import defpackage.uf3;
import defpackage.zf7;

/* JADX INFO: loaded from: classes5.dex */
public final class CashbackPresenter extends BasePresenter<CashbackView> {
    private final Deeplink.CashBackFlow deeplink;
    private final uf3 flowRouter;

    public CashbackPresenter(Deeplink.CashBackFlow cashBackFlow, uf3 uf3Var) {
        cashBackFlow.getClass();
        uf3Var.getClass();
        this.deeplink = cashBackFlow;
        this.flowRouter = uf3Var;
    }

    @Override // defpackage.ih5
    public void onFirstViewAttach() {
        super.onFirstViewAttach();
        Deeplink.CashBackFlow cashBackFlow = this.deeplink;
        if (cashBackFlow instanceof Deeplink.CashBackFlow.ChequePage) {
            CashbackView cashbackView = (CashbackView) getViewState();
            if (cashbackView != null) {
                cashbackView.setLaunchScreen(new zf7(((Deeplink.CashBackFlow.ChequePage) this.deeplink).c));
                return;
            }
            return;
        }
        if (aa4.e(cashBackFlow, Deeplink.CashBackFlow.BankCards.c)) {
            CashbackView cashbackView2 = (CashbackView) getViewState();
            if (cashbackView2 != null) {
                cashbackView2.setLaunchScreen(ch7.a);
                return;
            }
            return;
        }
        if (cashBackFlow instanceof Deeplink.CashBackFlow.BankCardOptions) {
            CashbackView cashbackView3 = (CashbackView) getViewState();
            if (cashbackView3 != null) {
                cashbackView3.setLaunchScreen(new pf7(((Deeplink.CashBackFlow.BankCardOptions) this.deeplink).c));
                return;
            }
            return;
        }
        if (aa4.e(cashBackFlow, Deeplink.CashBackFlow.Operations.c)) {
            CashbackView cashbackView4 = (CashbackView) getViewState();
            if (cashbackView4 != null) {
                cashbackView4.setLaunchScreen(new nh7());
                return;
            }
            return;
        }
        if (cashBackFlow instanceof Deeplink.CashBackFlow.AddScreenshotCashback) {
            CashbackView cashbackView5 = (CashbackView) getViewState();
            if (cashbackView5 != null) {
                cashbackView5.setLaunchScreen(new kf7(((Deeplink.CashBackFlow.AddScreenshotCashback) this.deeplink).c));
                return;
            }
            return;
        }
        if (cashBackFlow instanceof Deeplink.CashBackFlow.TransferShowcasePromos) {
            CashbackView cashbackView6 = (CashbackView) getViewState();
            if (cashbackView6 != null) {
                Deeplink.CashBackFlow.TransferShowcasePromos transferShowcasePromos = (Deeplink.CashBackFlow.TransferShowcasePromos) this.deeplink;
                cashbackView6.setLaunchScreen(new rh7(transferShowcasePromos.c, transferShowcasePromos.d, transferShowcasePromos.e, transferShowcasePromos.f, transferShowcasePromos.g));
                return;
            }
            return;
        }
        if (cashBackFlow instanceof Deeplink.CashBackFlow.TransferShowcasePromocodes) {
            CashbackView cashbackView7 = (CashbackView) getViewState();
            if (cashbackView7 != null) {
                cashbackView7.setLaunchScreen(new ci7(((Deeplink.CashBackFlow.TransferShowcasePromocodes) this.deeplink).c));
                return;
            }
            return;
        }
        if (cashBackFlow instanceof Deeplink.CashBackFlow.CreateRedCard) {
            CashbackView cashbackView8 = (CashbackView) getViewState();
            if (cashbackView8 != null) {
                cashbackView8.setLaunchScreen(new ig7(d62.RegisterToCreate));
                return;
            }
            return;
        }
        boolean z = cashBackFlow instanceof Deeplink.CashBackFlow.Balance;
        uf3 uf3Var = this.flowRouter;
        if (z) {
            f fVar = new f(new Deeplink.Desktop.Balance(((Deeplink.CashBackFlow.Balance) this.deeplink).c));
            uf3Var.getClass();
            uf3Var.c.g(fVar);
        } else {
            f fVar2 = new f(new Deeplink.Desktop.Balance(false));
            uf3Var.getClass();
            uf3Var.c.g(fVar2);
        }
    }
}
