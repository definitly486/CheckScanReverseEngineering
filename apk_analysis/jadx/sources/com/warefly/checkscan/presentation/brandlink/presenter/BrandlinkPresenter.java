package com.warefly.checkscan.presentation.brandlink.presenter;

import android.content.Intent;
import android.net.Uri;
import com.warefly.checkscan.auth.presentation.flow.AuthReason;
import com.warefly.checkscan.core.ui.base.architecture.BasePresenter;
import com.warefly.checkscan.presentation.brandlink.view.BrandlinkView;
import defpackage.a32;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.gh4;
import defpackage.ix;
import defpackage.j59;
import defpackage.kd;
import defpackage.ne7;
import defpackage.nl3;
import defpackage.p61;
import defpackage.pg8;
import defpackage.r57;
import defpackage.rj;
import defpackage.tt0;
import defpackage.uf3;
import defpackage.wt0;
import defpackage.yb8;
import defpackage.zl2;
import java.util.Collections;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class BrandlinkPresenter extends BasePresenter<BrandlinkView> {
    private final String campaignCode;
    private final p61 catalogInteractor;
    private final zl2 desktopInteractor;
    private final uf3 flowRouter;
    private final int id;
    private final String tab;
    private final String target;

    public static final class a extends gh4 implements nl3<Throwable, j59> {
        public a() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(Throwable th) {
            th.getClass();
            BrandlinkView brandlinkView = (BrandlinkView) BrandlinkPresenter.this.getViewState();
            if (brandlinkView != null) {
                brandlinkView.showError();
            }
            return j59.a;
        }
    }

    public static final class b extends gh4 implements nl3<wt0, j59> {
        public b() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(wt0 wt0Var) {
            wt0 wt0Var2 = wt0Var;
            wt0.a aVarC = wt0Var2.c();
            wt0.a aVar = wt0.a.REG_REQUIRED;
            BrandlinkPresenter brandlinkPresenter = BrandlinkPresenter.this;
            if (aVarC != aVar || wt0Var2.b() == null) {
                BrandlinkView brandlinkView = (BrandlinkView) brandlinkPresenter.getViewState();
                if (brandlinkView != null) {
                    brandlinkView.loadWebViewLink(wt0Var2.a());
                }
            } else {
                BrandlinkView brandlinkView2 = (BrandlinkView) brandlinkPresenter.getViewState();
                if (brandlinkView2 != null) {
                    brandlinkView2.setAnonPlaceholder(wt0Var2.b());
                }
            }
            return j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.presentation.brandlink.presenter.BrandlinkPresenter$onFirstViewAttach$1", f = "BrandlinkPresenter.kt", l = {}, m = "invokeSuspend")
    public static final class c extends pg8 implements bm3<zl2.a, e02<? super j59>, Object> {
        public /* synthetic */ Object l;

        public c(e02<? super c> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            c cVar = BrandlinkPresenter.this.new c(e02Var);
            cVar.l = obj;
            return cVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(zl2.a aVar, e02<? super j59> e02Var) {
            return ((c) create(aVar, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            if (((zl2.a) this.l) instanceof zl2.a.i) {
                BrandlinkPresenter.this.loadBrandlink();
            }
            return j59.a;
        }
    }

    public BrandlinkPresenter(p61 p61Var, zl2 zl2Var, uf3 uf3Var, tt0 tt0Var) {
        p61Var.getClass();
        zl2Var.getClass();
        uf3Var.getClass();
        tt0Var.getClass();
        this.catalogInteractor = p61Var;
        this.desktopInteractor = zl2Var;
        this.flowRouter = uf3Var;
        this.id = tt0Var.d;
        this.tab = tt0Var.b;
        this.target = tt0Var.a;
        this.campaignCode = tt0Var.c;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void loadBrandlink() {
        p61 p61Var = this.catalogInteractor;
        disposeOnDestroy(yb8.d(p61Var.b.a(p61Var.c.O0(), this.id, this.tab, this.target, this.campaignCode).i(ne7.c).f(rj.a()), new a(), new b()), "showOldLink");
    }

    public final void onBackClick() {
        this.flowRouter.c();
    }

    @Override // defpackage.ih5
    public void onFirstViewAttach() {
        super.onFirstViewAttach();
        loadBrandlink();
        this.desktopInteractor.c(getPresenterScope(), new c(null));
    }

    public final void onRegistrationClicked() {
        Map mapSingletonMap = Collections.singletonMap("Actions", "Go to register from brandlink");
        mapSingletonMap.getClass();
        new kd.a.C0220a.C0221a("Account", mapSingletonMap).a();
        uf3 uf3Var = this.flowRouter;
        ix ixVar = new ix(new AuthReason.Login((String) null, (String) null, 7));
        uf3Var.getClass();
        uf3Var.c.d(ixVar);
    }

    public final boolean startTelegram(Uri uri) {
        uri.getClass();
        Intent intent = new Intent("android.intent.action.VIEW", uri);
        BrandlinkView brandlinkView = (BrandlinkView) getViewState();
        if (brandlinkView == null) {
            return true;
        }
        brandlinkView.sentFeedbackOnTelegram(intent);
        return true;
    }
}
