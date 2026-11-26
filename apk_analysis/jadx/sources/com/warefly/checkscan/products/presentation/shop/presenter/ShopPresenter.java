package com.warefly.checkscan.products.presentation.shop.presenter;

import com.warefly.checkscan.core.ui.base.architecture.BasePresenter;
import com.warefly.checkscan.products.presentation.shop.view.ShopView;
import defpackage.a32;
import defpackage.aa4;
import defpackage.an;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.df3;
import defpackage.e02;
import defpackage.fk6;
import defpackage.g83;
import defpackage.h83;
import defpackage.i57;
import defpackage.iv1;
import defpackage.j59;
import defpackage.kd;
import defpackage.mu7;
import defpackage.pg8;
import defpackage.r57;
import defpackage.s57;
import defpackage.tb7;
import defpackage.ud;
import defpackage.uf3;
import defpackage.wg6;

/* JADX INFO: loaded from: classes5.dex */
public final class ShopPresenter extends BasePresenter<ShopView> implements wg6.b, an.b, iv1.a {
    private final h83 fetchShopDetailsUseCase;
    private final uf3 flowRouter;
    private final boolean isMerchant;
    private final int selectionId;

    @bd2(c = "com.warefly.checkscan.products.presentation.shop.presenter.ShopPresenter$loadContent$1", f = "ShopPresenter.kt", l = {}, m = "invokeSuspend")
    public static final class a extends pg8 implements bm3<i57<? extends mu7>, e02<? super j59>, Object> {
        public /* synthetic */ Object l;

        public a(e02<? super a> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            a aVar = ShopPresenter.this.new a(e02Var);
            aVar.l = obj;
            return aVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(i57<? extends mu7> i57Var, e02<? super j59> e02Var) {
            return ((a) create(i57Var, e02Var)).invokeSuspend(j59.a);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            ShopView shopView;
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            i57 i57Var = (i57) this.l;
            boolean z = i57Var instanceof i57.a;
            ShopPresenter shopPresenter = ShopPresenter.this;
            if (z) {
                ShopView shopView2 = (ShopView) shopPresenter.getViewState();
                if (shopView2 != null) {
                    shopView2.showError(true);
                }
                ShopView shopView3 = (ShopView) shopPresenter.getViewState();
                if (shopView3 != null) {
                    shopView3.showLoading(true);
                }
            } else if (aa4.e(i57Var, i57.b.a)) {
                ShopView shopView4 = (ShopView) shopPresenter.getViewState();
                if (shopView4 != null) {
                    shopView4.showLoading(true);
                }
            } else if (i57Var instanceof i57.c) {
                ShopView shopView5 = (ShopView) shopPresenter.getViewState();
                if (shopView5 != null) {
                    shopView5.showError(false);
                }
                ShopView shopView6 = (ShopView) shopPresenter.getViewState();
                if (shopView6 != null) {
                    shopView6.showLoading(false);
                }
                ShopView shopView7 = (ShopView) shopPresenter.getViewState();
                if (shopView7 != null) {
                    mu7 mu7Var = (mu7) ((i57.c) i57Var).a;
                    shopView7.showImage(mu7Var.c, mu7Var.d);
                }
                ShopView shopView8 = (ShopView) shopPresenter.getViewState();
                if (shopView8 != null) {
                    shopView8.showScanButton(((mu7) ((i57.c) i57Var).a).a);
                }
                mu7 mu7Var2 = (mu7) ((i57.c) i57Var).a;
                if (mu7Var2.a) {
                    ShopView shopView9 = (ShopView) shopPresenter.getViewState();
                    if (shopView9 != null) {
                        shopView9.showToolbarTitle(false);
                    }
                    ShopView shopView10 = (ShopView) shopPresenter.getViewState();
                    if (shopView10 != null) {
                        shopView10.setMerchantScrollListener();
                    }
                }
                String str = mu7Var2.b;
                if (str != null && (shopView = (ShopView) shopPresenter.getViewState()) != null) {
                    shopView.setToolbarTitle(str);
                }
                ShopView shopView11 = (ShopView) shopPresenter.getViewState();
                if (shopView11 != null) {
                    shopView11.showContent(mu7Var2.e);
                }
            }
            return j59.a;
        }
    }

    public ShopPresenter(int i, boolean z, h83 h83Var, uf3 uf3Var) {
        h83Var.getClass();
        uf3Var.getClass();
        this.selectionId = i;
        this.isMerchant = z;
        this.fetchShopDetailsUseCase = h83Var;
        this.flowRouter = uf3Var;
    }

    public final void loadContent() {
        h83 h83Var = this.fetchShopDetailsUseCase;
        int i = this.selectionId;
        boolean z = this.isMerchant;
        h83Var.getClass();
        launchInPresenter(new df3(s57.a(new tb7(new g83(h83Var, i, z, null))), new a(null)));
    }

    @Override // an.b
    public void onAnonDisclaimerClicked() {
        ShopView shopView = (ShopView) getViewState();
        if (shopView != null) {
            shopView.openUrl("checkscan://signup");
        }
    }

    public final void onBackClicked() {
        this.flowRouter.c();
    }

    @Override // iv1.a
    public void onConditionsClicked(String str, String str2) {
        str2.getClass();
        ShopView shopView = (ShopView) getViewState();
        if (shopView != null) {
            shopView.showInfoBottomSheet(str, str2);
        }
    }

    @Override // defpackage.ih5
    public void onFirstViewAttach() {
        super.onFirstViewAttach();
        new kd.p0.a.c(ud.c(this.selectionId, "Selections")).c();
        loadContent();
    }

    @Override // wg6.b
    public void onProductClicked(int i) {
        this.flowRouter.j(new fk6(i));
    }

    public final void onScanClicked() {
        ShopView shopView = (ShopView) getViewState();
        if (shopView != null) {
            shopView.openUrl("checkscan://scan");
        }
    }
}
