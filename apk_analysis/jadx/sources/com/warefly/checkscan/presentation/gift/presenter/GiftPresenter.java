package com.warefly.checkscan.presentation.gift.presenter;

import com.warefly.checkscan.core.ui.base.architecture.BasePresenter;
import com.warefly.checkscan.presentation.e;
import com.warefly.checkscan.presentation.gift.view.GiftView;
import defpackage.a32;
import defpackage.aa4;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.df3;
import defpackage.e02;
import defpackage.hq3;
import defpackage.i57;
import defpackage.iq3;
import defpackage.j59;
import defpackage.jq3;
import defpackage.kd;
import defpackage.pg8;
import defpackage.r57;
import defpackage.s57;
import defpackage.tb7;
import defpackage.uf3;
import java.util.Collections;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class GiftPresenter extends BasePresenter<GiftView> {
    private final uf3 flowRouter;
    private final int id;
    private final jq3 interactor;

    @bd2(c = "com.warefly.checkscan.presentation.gift.presenter.GiftPresenter$fetchGift$1", f = "GiftPresenter.kt", l = {}, m = "invokeSuspend")
    public static final class a extends pg8 implements bm3<i57<? extends hq3>, e02<? super j59>, Object> {
        public /* synthetic */ Object l;

        public a(e02<? super a> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            a aVar = GiftPresenter.this.new a(e02Var);
            aVar.l = obj;
            return aVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(i57<? extends hq3> i57Var, e02<? super j59> e02Var) {
            return ((a) create(i57Var, e02Var)).invokeSuspend(j59.a);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            i57 i57Var = (i57) this.l;
            boolean z = i57Var instanceof i57.a;
            GiftPresenter giftPresenter = GiftPresenter.this;
            if (z) {
                GiftView giftView = (GiftView) giftPresenter.getViewState();
                if (giftView != null) {
                    giftView.showLoading(false);
                }
                GiftView giftView2 = (GiftView) giftPresenter.getViewState();
                if (giftView2 != null) {
                    giftView2.showError(true);
                }
            } else if (aa4.e(i57Var, i57.b.a)) {
                GiftView giftView3 = (GiftView) giftPresenter.getViewState();
                if (giftView3 != null) {
                    giftView3.showError(false);
                }
                GiftView giftView4 = (GiftView) giftPresenter.getViewState();
                if (giftView4 != null) {
                    giftView4.showLoading(true);
                }
            } else if (i57Var instanceof i57.c) {
                GiftView giftView5 = (GiftView) giftPresenter.getViewState();
                if (giftView5 != null) {
                    giftView5.showLoading(false);
                }
                GiftView giftView6 = (GiftView) giftPresenter.getViewState();
                if (giftView6 != null) {
                    giftView6.showError(false);
                }
                GiftView giftView7 = (GiftView) giftPresenter.getViewState();
                if (giftView7 != null) {
                    giftView7.showGiftInfo((hq3) ((i57.c) i57Var).a);
                }
            }
            return j59.a;
        }
    }

    public GiftPresenter(int i, jq3 jq3Var, uf3 uf3Var) {
        jq3Var.getClass();
        uf3Var.getClass();
        this.id = i;
        this.interactor = jq3Var;
        this.flowRouter = uf3Var;
    }

    public final void fetchGift() {
        jq3 jq3Var = this.interactor;
        int i = this.id;
        jq3Var.getClass();
        launchInPresenter(new df3(s57.a(new tb7(new iq3(jq3Var, i, null))), new a(null)));
    }

    public final void onActionClicked(String str) {
        uf3 uf3Var = this.flowRouter;
        uf3Var.getClass();
        uf3Var.c.g(e.a);
        if (str != null) {
            Map mapSingletonMap = Collections.singletonMap("Clicks", str);
            mapSingletonMap.getClass();
            new kd.s0.d.a(mapSingletonMap).a();
            GiftView giftView = (GiftView) getViewState();
            if (giftView != null) {
                giftView.openUrlInCustomTab(str);
            }
        }
    }

    public final void onBackPressed() {
        uf3 uf3Var = this.flowRouter;
        uf3Var.getClass();
        uf3Var.c.g(e.a);
    }

    @Override // defpackage.ih5
    public void onFirstViewAttach() {
        super.onFirstViewAttach();
        new kd.s0.d.b("Shows").a();
        fetchGift();
    }
}
