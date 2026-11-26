package com.warefly.checkscan.products.presentation.flow.presenter;

import com.warefly.checkscan.core.ui.base.architecture.BasePresenter;
import com.warefly.checkscan.products.presentation.flow.ProductsReason;
import com.warefly.checkscan.products.presentation.flow.view.ProductsFlowView;
import defpackage.aa4;
import defpackage.ek6;
import defpackage.fk6;
import defpackage.hk6;
import defpackage.lk3;
import defpackage.me0;

/* JADX INFO: loaded from: classes5.dex */
public final class ProductsFlowPresenter extends BasePresenter<ProductsFlowView> {
    private final ProductsReason reason;

    public ProductsFlowPresenter(ProductsReason productsReason) {
        productsReason.getClass();
        this.reason = productsReason;
    }

    @Override // defpackage.ih5
    public void onFirstViewAttach() {
        lk3 hk6Var;
        lk3 lk3Var;
        super.onFirstViewAttach();
        ProductsFlowView productsFlowView = (ProductsFlowView) getViewState();
        if (productsFlowView != null) {
            ProductsReason productsReason = this.reason;
            if (aa4.e(productsReason, ProductsReason.Main.b)) {
                lk3Var = ek6.a;
            } else {
                if (productsReason instanceof ProductsReason.Product) {
                    hk6Var = new fk6(((ProductsReason.Product) this.reason).b);
                } else if (!(productsReason instanceof ProductsReason.Shop)) {
                    me0.e();
                    return;
                } else {
                    ProductsReason productsReason2 = this.reason;
                    hk6Var = new hk6(((ProductsReason.Shop) productsReason2).b, ((ProductsReason.Shop) productsReason2).c);
                }
                lk3Var = hk6Var;
            }
            productsFlowView.setLaunchScreen(lk3Var);
        }
    }
}
