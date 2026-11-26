package com.warefly.checkscan.presentation.offerLanding.landing.presenter;

import com.warefly.checkscan.core.ui.base.architecture.BasePresenter;
import com.warefly.checkscan.presentation.offerLanding.landing.view.OfferLandingView;
import defpackage.a32;
import defpackage.aa4;
import defpackage.au5;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.bu5;
import defpackage.cu5;
import defpackage.df3;
import defpackage.e02;
import defpackage.hu5;
import defpackage.i57;
import defpackage.j59;
import defpackage.kd;
import defpackage.pg8;
import defpackage.r57;
import defpackage.s57;
import defpackage.tb7;
import defpackage.uf3;
import defpackage.z68;
import java.util.Collections;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class OfferLandingPresenter extends BasePresenter<OfferLandingView> {
    private final uf3 flowRouter;
    private final cu5 interactor;
    private final String partnerId;

    @bd2(c = "com.warefly.checkscan.presentation.offerLanding.landing.presenter.OfferLandingPresenter$loadLanding$1", f = "OfferLandingPresenter.kt", l = {}, m = "invokeSuspend")
    public static final class a extends pg8 implements bm3<i57<? extends hu5>, e02<? super j59>, Object> {
        public /* synthetic */ Object l;

        public a(e02<? super a> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            a aVar = OfferLandingPresenter.this.new a(e02Var);
            aVar.l = obj;
            return aVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(i57<? extends hu5> i57Var, e02<? super j59> e02Var) {
            return ((a) create(i57Var, e02Var)).invokeSuspend(j59.a);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            OfferLandingView offerLandingView;
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            i57 i57Var = (i57) this.l;
            boolean z = i57Var instanceof i57.a;
            OfferLandingPresenter offerLandingPresenter = OfferLandingPresenter.this;
            if (z) {
                OfferLandingView offerLandingView2 = (OfferLandingView) offerLandingPresenter.getViewState();
                if (offerLandingView2 != null) {
                    offerLandingView2.showLandingLoadingError();
                }
            } else if (!aa4.e(i57Var, i57.b.a) && (i57Var instanceof i57.c) && (offerLandingView = (OfferLandingView) offerLandingPresenter.getViewState()) != null) {
                offerLandingView.showData((hu5) ((i57.c) i57Var).a);
            }
            return j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.presentation.offerLanding.landing.presenter.OfferLandingPresenter$onIssueCardClicked$1", f = "OfferLandingPresenter.kt", l = {}, m = "invokeSuspend")
    public static final class b extends pg8 implements bm3<i57<? extends String>, e02<? super j59>, Object> {
        public /* synthetic */ Object l;

        public b(e02<? super b> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            b bVar = OfferLandingPresenter.this.new b(e02Var);
            bVar.l = obj;
            return bVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(i57<? extends String> i57Var, e02<? super j59> e02Var) {
            return ((b) create(i57Var, e02Var)).invokeSuspend(j59.a);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            i57 i57Var = (i57) this.l;
            boolean z = i57Var instanceof i57.a;
            OfferLandingPresenter offerLandingPresenter = OfferLandingPresenter.this;
            if (z) {
                OfferLandingView offerLandingView = (OfferLandingView) offerLandingPresenter.getViewState();
                if (offerLandingView != null) {
                    offerLandingView.showLinkLoadingError();
                }
                OfferLandingView offerLandingView2 = (OfferLandingView) offerLandingPresenter.getViewState();
                if (offerLandingView2 != null) {
                    offerLandingView2.showButtonLoading(false);
                }
            } else if (aa4.e(i57Var, i57.b.a)) {
                OfferLandingView offerLandingView3 = (OfferLandingView) offerLandingPresenter.getViewState();
                if (offerLandingView3 != null) {
                    offerLandingView3.showButtonLoading(true);
                }
            } else if (i57Var instanceof i57.c) {
                OfferLandingView offerLandingView4 = (OfferLandingView) offerLandingPresenter.getViewState();
                if (offerLandingView4 != null) {
                    offerLandingView4.openUrlCustomTab((String) ((i57.c) i57Var).a);
                }
                OfferLandingView offerLandingView5 = (OfferLandingView) offerLandingPresenter.getViewState();
                if (offerLandingView5 != null) {
                    offerLandingView5.showButtonLoading(false);
                }
            }
            return j59.a;
        }
    }

    public OfferLandingPresenter(cu5 cu5Var, uf3 uf3Var, String str) {
        cu5Var.getClass();
        uf3Var.getClass();
        str.getClass();
        this.interactor = cu5Var;
        this.flowRouter = uf3Var;
        this.partnerId = str;
    }

    public final void loadLanding() {
        cu5 cu5Var = this.interactor;
        String str = this.partnerId;
        cu5Var.getClass();
        str.getClass();
        launchInPresenter(new df3(s57.a(new tb7(new au5(cu5Var, str, null))), new a(null)));
    }

    public final void onBackClicked() {
        this.flowRouter.c();
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BasePresenter, defpackage.ih5
    public void onDestroy() {
        Object value;
        z68 z68Var = this.interactor.b;
        do {
            value = z68Var.getValue();
        } while (!z68Var.a(value, null));
        super.onDestroy();
    }

    @Override // defpackage.ih5
    public void onFirstViewAttach() {
        super.onFirstViewAttach();
        String str = this.partnerId;
        str.getClass();
        Map mapSingletonMap = Collections.singletonMap("Open", str);
        mapSingletonMap.getClass();
        new kd.w.a.b(mapSingletonMap).a();
        loadLanding();
    }

    public final void onIssueCardClicked() {
        String str = this.partnerId;
        str.getClass();
        Map mapSingletonMap = Collections.singletonMap("Button", str);
        mapSingletonMap.getClass();
        new kd.w.a.C0294a(mapSingletonMap).a();
        cu5 cu5Var = this.interactor;
        String str2 = this.partnerId;
        cu5Var.getClass();
        str2.getClass();
        launchInPresenter(new df3(s57.a(new tb7(new bu5(cu5Var, str2, null))), new b(null)));
    }
}
