package com.warefly.checkscan.products.presentation.flow.view;

import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import com.warefly.checkscan.core.ui.base.architecture.FlowFragment;
import com.warefly.checkscan.core.ui.databinding.LoadingLayoutContainerBinding;
import com.warefly.checkscan.products.presentation.flow.ProductsReason;
import com.warefly.checkscan.products.presentation.flow.presenter.ProductsFlowPresenter;
import defpackage.ah;
import defpackage.bs6;
import defpackage.x07;
import defpackage.ze4;

/* JADX INFO: loaded from: classes5.dex */
public final class ProductsFlowFragment extends FlowFragment<LoadingLayoutContainerBinding> implements ProductsFlowView {
    public static final a j;
    public static final /* synthetic */ ze4<Object>[] k;
    public ProductsFlowPresenter presenter;

    public static final class a {
    }

    static {
        bs6 bs6Var = new bs6(ProductsFlowFragment.class, "binding", "getBinding()Lcom/warefly/checkscan/core/ui/databinding/LoadingLayoutContainerBinding;", 0);
        x07.a.getClass();
        k = new ze4[]{bs6Var};
        j = new a();
    }

    public final ProductsFlowPresenter providePresenter() {
        Parcelable parcelable;
        Bundle bundleRequireArguments = requireArguments();
        bundleRequireArguments.getClass();
        if (Build.VERSION.SDK_INT >= 33) {
            parcelable = (Parcelable) bundleRequireArguments.getParcelable("REASON_KEY", ProductsReason.class);
        } else {
            Parcelable parcelable2 = bundleRequireArguments.getParcelable("REASON_KEY");
            if (!(parcelable2 instanceof ProductsReason)) {
                parcelable2 = null;
            }
            parcelable = (ProductsReason) parcelable2;
        }
        ProductsReason productsReason = (ProductsReason) parcelable;
        if (productsReason != null) {
            return new ProductsFlowPresenter(productsReason);
        }
        ah.f("Reason can not be null in ProductsFlowFragment");
        return null;
    }
}
