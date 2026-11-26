package com.warefly.checkscan.products.presentation.product.presenter;

import com.warefly.checkscan.core.ui.base.architecture.BasePresenter;
import com.warefly.checkscan.products.presentation.product.view.ProductView;
import defpackage.a32;
import defpackage.aa4;
import defpackage.an;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.df3;
import defpackage.e02;
import defpackage.hk6;
import defpackage.i57;
import defpackage.ii6;
import defpackage.j59;
import defpackage.ji6;
import defpackage.kd;
import defpackage.kn1;
import defpackage.li6;
import defpackage.n73;
import defpackage.ni6;
import defpackage.o73;
import defpackage.oh6;
import defpackage.pg8;
import defpackage.px;
import defpackage.pz3;
import defpackage.r57;
import defpackage.s57;
import defpackage.tb7;
import defpackage.ud;
import defpackage.uf3;
import defpackage.xg5;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class ProductPresenter extends BasePresenter<ProductView> implements an.b, ii6.a, li6.a, com.warefly.checkscan.shared.infoBottomSheet.presentation.a.b {
    private final o73 fetchProductDetailsUseCase;
    private final uf3 flowRouter;
    private final xg5<i57<oh6>> productContent;
    private final int productId;

    @bd2(c = "com.warefly.checkscan.products.presentation.product.presenter.ProductPresenter$loadContent$1", f = "ProductPresenter.kt", l = {}, m = "invokeSuspend")
    public static final class a extends pg8 implements bm3<i57<? extends oh6>, e02<? super j59>, Object> {
        public /* synthetic */ Object l;

        public a(e02<? super a> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            a aVar = ProductPresenter.this.new a(e02Var);
            aVar.l = obj;
            return aVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(i57<? extends oh6> i57Var, e02<? super j59> e02Var) {
            return ((a) create(i57Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            Object value;
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            i57 i57Var = (i57) this.l;
            xg5 xg5Var = ProductPresenter.this.productContent;
            do {
                value = xg5Var.getValue();
            } while (!xg5Var.a(value, i57Var));
            return j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.products.presentation.product.presenter.ProductPresenter$onFirstViewAttach$1", f = "ProductPresenter.kt", l = {}, m = "invokeSuspend")
    public static final class b extends pg8 implements bm3<i57<? extends oh6>, e02<? super j59>, Object> {
        public /* synthetic */ Object l;

        public b(e02<? super b> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            b bVar = ProductPresenter.this.new b(e02Var);
            bVar.l = obj;
            return bVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(i57<? extends oh6> i57Var, e02<? super j59> e02Var) {
            return ((b) create(i57Var, e02Var)).invokeSuspend(j59.a);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            i57 i57Var = (i57) this.l;
            boolean z = i57Var instanceof i57.a;
            ProductPresenter productPresenter = ProductPresenter.this;
            if (z) {
                ProductView productView = (ProductView) productPresenter.getViewState();
                if (productView != null) {
                    productView.showError(true);
                }
                ProductView productView2 = (ProductView) productPresenter.getViewState();
                if (productView2 != null) {
                    productView2.showLoading(false);
                }
            } else if (aa4.e(i57Var, i57.b.a)) {
                ProductView productView3 = (ProductView) productPresenter.getViewState();
                if (productView3 != null) {
                    productView3.showLoading(true);
                }
                ProductView productView4 = (ProductView) productPresenter.getViewState();
                if (productView4 != null) {
                    productView4.showError(false);
                }
            } else if (i57Var instanceof i57.c) {
                ProductView productView5 = (ProductView) productPresenter.getViewState();
                if (productView5 != null) {
                    productView5.showLoading(false);
                }
                ProductView productView6 = (ProductView) productPresenter.getViewState();
                if (productView6 != null) {
                    productView6.showError(false);
                }
                ProductView productView7 = (ProductView) productPresenter.getViewState();
                if (productView7 != null) {
                    productView7.showContent(((oh6) ((i57.c) i57Var).a).b);
                }
                ProductView productView8 = (ProductView) productPresenter.getViewState();
                if (productView8 != null) {
                    productView8.showImage(((oh6) ((i57.c) i57Var).a).a);
                }
            }
            return j59.a;
        }
    }

    public ProductPresenter(int i, o73 o73Var, uf3 uf3Var) {
        o73Var.getClass();
        uf3Var.getClass();
        this.productId = i;
        this.fetchProductDetailsUseCase = o73Var;
        this.flowRouter = uf3Var;
        this.productContent = px.a(i57.b.a);
    }

    public final void loadContent() {
        o73 o73Var = this.fetchProductDetailsUseCase;
        int i = this.productId;
        o73Var.getClass();
        launchInPresenter(new df3(s57.a(new tb7(new n73(o73Var, i, null))), new a(null)));
    }

    @Override // an.b
    public void onAnonDisclaimerClicked() {
        ProductView productView = (ProductView) getViewState();
        if (productView != null) {
            productView.openUrl("checkscan://signup");
        }
    }

    public final void onBackClicked() {
        this.flowRouter.c();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // li6.a
    public void onCollapseShops(boolean z) {
        i57<oh6> value = this.productContent.getValue();
        if (value instanceof i57.c) {
            oh6 oh6Var = (oh6) ((i57.c) value).a;
            List<pz3> list = oh6Var.b;
            ArrayList arrayList = new ArrayList(kn1.q(list, 10));
            for (pz3 ni6Var : list) {
                if (ni6Var instanceof ni6) {
                    ni6 ni6Var2 = (ni6) ni6Var;
                    String str = ni6Var2.a;
                    List<ji6> list2 = ni6Var2.c;
                    str.getClass();
                    ni6Var = new ni6(str, z, list2);
                }
                arrayList.add(ni6Var);
            }
            i57.c cVar = new i57.c(new oh6(oh6Var.a, arrayList));
            xg5<i57<oh6>> xg5Var = this.productContent;
            while (!xg5Var.a(xg5Var.getValue(), cVar)) {
            }
        }
    }

    @Override // com.warefly.checkscan.shared.infoBottomSheet.presentation.a.b
    public void onConditionsClicked(List<com.warefly.checkscan.shared.infoBottomSheet.presentation.b.a> list) {
        list.getClass();
        ProductView productView = (ProductView) getViewState();
        if (productView != null) {
            productView.showInfoBottomSheet(list);
        }
    }

    @Override // defpackage.ih5
    public void onFirstViewAttach() {
        super.onFirstViewAttach();
        new kd.p0.a.C0279a(ud.c(this.productId, "Goods")).c();
        launchInPresenter(new df3(this.productContent, new b(null)));
        loadContent();
    }

    public final void onScanClicked() {
        ProductView productView = (ProductView) getViewState();
        if (productView != null) {
            productView.openUrl("checkscan://scan");
        }
    }

    @Override // ii6.a
    public void onShopItemClicked(int i) {
        this.flowRouter.j(new hk6(i, true));
    }
}
