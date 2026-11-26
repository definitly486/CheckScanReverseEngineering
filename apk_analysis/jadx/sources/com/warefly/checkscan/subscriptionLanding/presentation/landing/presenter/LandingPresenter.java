package com.warefly.checkscan.subscriptionLanding.presentation.landing.presenter;

import com.warefly.checkscan.core.ui.base.architecture.BasePresenter;
import com.warefly.checkscan.subscriptionLanding.presentation.landing.view.LandingView;
import defpackage.a32;
import defpackage.aa4;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.df3;
import defpackage.e02;
import defpackage.i57;
import defpackage.j59;
import defpackage.l73;
import defpackage.m73;
import defpackage.pg8;
import defpackage.r57;
import defpackage.s57;
import defpackage.sj4;
import defpackage.tb7;
import defpackage.uh4;

/* JADX INFO: loaded from: classes5.dex */
public final class LandingPresenter extends BasePresenter<LandingView> implements uh4.b {
    private final m73 fetchLandingUseCase;

    @bd2(c = "com.warefly.checkscan.subscriptionLanding.presentation.landing.presenter.LandingPresenter$onFirstViewAttach$1", f = "LandingPresenter.kt", l = {}, m = "invokeSuspend")
    public static final class a extends pg8 implements bm3<i57<? extends sj4>, e02<? super j59>, Object> {
        public /* synthetic */ Object l;

        public a(e02<? super a> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            a aVar = LandingPresenter.this.new a(e02Var);
            aVar.l = obj;
            return aVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(i57<? extends sj4> i57Var, e02<? super j59> e02Var) {
            return ((a) create(i57Var, e02Var)).invokeSuspend(j59.a);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            LandingView landingView;
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            i57 i57Var = (i57) this.l;
            if (!(i57Var instanceof i57.a) && !aa4.e(i57Var, i57.b.a) && (i57Var instanceof i57.c) && (landingView = (LandingView) LandingPresenter.this.getViewState()) != null) {
                landingView.showContent(((sj4) ((i57.c) i57Var).a).a);
            }
            return j59.a;
        }
    }

    public LandingPresenter(m73 m73Var) {
        m73Var.getClass();
        this.fetchLandingUseCase = m73Var;
    }

    @Override // defpackage.ih5
    public void onFirstViewAttach() {
        super.onFirstViewAttach();
        m73 m73Var = this.fetchLandingUseCase;
        m73Var.getClass();
        launchInPresenter(new df3(s57.a(new tb7(new l73(m73Var, null))), new a(null)));
    }

    @Override // uh4.b
    public void onLandingButtonClicked(String str) {
        str.getClass();
        LandingView landingView = (LandingView) getViewState();
        if (landingView != null) {
            landingView.openUrlInCustomTab(str);
        }
    }
}
