package com.warefly.checkscan.presentation.offerCard.presenter;

import com.warefly.checkscan.auth.presentation.flow.AuthReason;
import com.warefly.checkscan.core.ui.base.architecture.BasePresenter;
import com.warefly.checkscan.presentation.Deeplink;
import com.warefly.checkscan.presentation.c;
import com.warefly.checkscan.presentation.offerCard.view.CardOfferLandingView;
import defpackage.a32;
import defpackage.aa0;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.ca0;
import defpackage.df3;
import defpackage.e02;
import defpackage.gh4;
import defpackage.ig7;
import defpackage.ix;
import defpackage.j59;
import defpackage.jf6;
import defpackage.kd;
import defpackage.m13;
import defpackage.nl3;
import defpackage.nt5;
import defpackage.pg8;
import defpackage.r57;
import defpackage.uf3;
import defpackage.yd;

/* JADX INFO: loaded from: classes5.dex */
public final class CardOfferLandingPresenter extends BasePresenter<CardOfferLandingView> {
    private final ca0 bankInteractor;
    private final boolean fromDeeplink;
    private final jf6 preferencesRepository;
    private final uf3 router;

    @bd2(c = "com.warefly.checkscan.presentation.offerCard.presenter.CardOfferLandingPresenter$onFirstViewAttach$1", f = "CardOfferLandingPresenter.kt", l = {}, m = "invokeSuspend")
    public static final class a extends pg8 implements bm3<nt5, e02<? super j59>, Object> {
        public /* synthetic */ Object l;

        public a(e02<? super a> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            a aVar = CardOfferLandingPresenter.this.new a(e02Var);
            aVar.l = obj;
            return aVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(nt5 nt5Var, e02<? super j59> e02Var) {
            return ((a) create(nt5Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            nt5 nt5Var = (nt5) this.l;
            CardOfferLandingView cardOfferLandingView = (CardOfferLandingView) CardOfferLandingPresenter.this.getViewState();
            if (cardOfferLandingView != null) {
                cardOfferLandingView.showData(nt5Var);
            }
            return j59.a;
        }
    }

    public static final class b extends gh4 implements nl3<Throwable, j59> {
        public b() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(Throwable th) {
            th.getClass();
            CardOfferLandingView cardOfferLandingView = (CardOfferLandingView) CardOfferLandingPresenter.this.getViewState();
            if (cardOfferLandingView != null) {
                cardOfferLandingView.showSomeError();
            }
            return j59.a;
        }
    }

    public CardOfferLandingPresenter(ca0 ca0Var, boolean z, uf3 uf3Var, jf6 jf6Var) {
        ca0Var.getClass();
        uf3Var.getClass();
        jf6Var.getClass();
        this.bankInteractor = ca0Var;
        this.fromDeeplink = z;
        this.router = uf3Var;
        this.preferencesRepository = jf6Var;
    }

    public final void onBackClick() {
        kd.j.d.a.e.a();
        boolean z = this.fromDeeplink;
        uf3 uf3Var = this.router;
        if (z) {
            uf3Var.i();
        } else {
            uf3Var.a(new c(Deeplink.CashBackFlow.CashbackProfile.c));
        }
    }

    @Override // defpackage.ih5
    public void onFirstViewAttach() {
        super.onFirstViewAttach();
        ca0 ca0Var = this.bankInteractor;
        launchInPresenter(m13.c(new df3(new aa0(ca0Var.a.e(), ca0Var), new a(null)), null, new b(), 1));
    }

    public final void onIssueCardClick() {
        yd.e.a();
        boolean zG0 = this.preferencesRepository.G0();
        uf3 uf3Var = this.router;
        if (zG0) {
            uf3Var.j(new ig7(0));
            return;
        }
        ix ixVar = new ix(new AuthReason.Login((String) null, (String) null, 7));
        uf3Var.getClass();
        uf3Var.c.d(ixVar);
    }
}
