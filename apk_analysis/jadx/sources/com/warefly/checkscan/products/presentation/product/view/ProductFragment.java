package com.warefly.checkscan.products.presentation.product.view;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.bumptech.glide.load.engine.GlideException;
import com.google.android.material.appbar.CollapsingToolbarLayout;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.SafeImageView;
import com.warefly.checkscan.core.ui.base.architecture.BaseFragment;
import com.warefly.checkscan.products.databinding.FragmentProductBinding;
import com.warefly.checkscan.products.presentation.product.presenter.ProductPresenter;
import com.warefly.checkscan.shared.infoBottomSheet.presentation.InfoBottomSheet;
import com.warefly.checkscan.shimmer.ShimmerFrameLayout;
import defpackage.aa4;
import defpackage.an;
import defpackage.bs6;
import defpackage.dh6;
import defpackage.e;
import defpackage.eu1;
import defpackage.gh6;
import defpackage.lb7;
import defpackage.lh6;
import defpackage.li6;
import defpackage.m2;
import defpackage.n2;
import defpackage.nh6;
import defpackage.o37;
import defpackage.o73;
import defpackage.oi6;
import defpackage.ol4;
import defpackage.ph6;
import defpackage.pi6;
import defpackage.pz3;
import defpackage.qh6;
import defpackage.rb;
import defpackage.ri6;
import defpackage.sb;
import defpackage.si6;
import defpackage.uf3;
import defpackage.w20;
import defpackage.wk8;
import defpackage.x07;
import defpackage.y82;
import defpackage.ze4;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class ProductFragment extends BaseFragment<FragmentProductBinding> implements ProductView {
    public static final a j;
    public static final /* synthetic */ ze4<Object>[] k;
    public final int f = R.layout.fragment_product;
    public final ol4 g = new ol4(FragmentProductBinding.class);
    public eu1 h;
    public InfoBottomSheet i;
    public ProductPresenter presenter;

    public static final class a {
    }

    public static final class b<T> implements o37 {
        public final /* synthetic */ FragmentProductBinding a;

        public b(FragmentProductBinding fragmentProductBinding) {
            this.a = fragmentProductBinding;
        }

        @Override // defpackage.o37
        public final boolean onLoadFailed(GlideException glideException, Object obj, wk8<T> wk8Var, boolean z) {
            return false;
        }

        @Override // defpackage.o37
        public final boolean onResourceReady(Object obj, Object obj2, wk8 wk8Var, y82 y82Var, boolean z) {
            FragmentProductBinding fragmentProductBinding = this.a;
            SafeImageView safeImageView = fragmentProductBinding.ivBanner;
            safeImageView.getClass();
            safeImageView.setVisibility(0);
            ShimmerFrameLayout shimmerFrameLayout = fragmentProductBinding.ivLoading;
            shimmerFrameLayout.getClass();
            shimmerFrameLayout.setVisibility(8);
            fragmentProductBinding.ivBanner.setImageDrawableWithCache((Drawable) obj);
            return false;
        }
    }

    static {
        bs6 bs6Var = new bs6(ProductFragment.class, "binding", "getBinding()Lcom/warefly/checkscan/products/databinding/FragmentProductBinding;", 0);
        x07.a.getClass();
        k = new ze4[]{bs6Var};
        j = new a();
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment
    public final int i() {
        return this.f;
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment
    public final boolean k() {
        o().onBackClicked();
        return false;
    }

    public final FragmentProductBinding n() {
        return (FragmentProductBinding) this.g.getValue(this, k[0]);
    }

    public final ProductPresenter o() {
        ProductPresenter productPresenter = this.presenter;
        if (productPresenter != null) {
            return productPresenter;
        }
        aa4.j("presenter");
        throw null;
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment, androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        view.getClass();
        super.onViewCreated(view, bundle);
        RecyclerView recyclerView = n().rvContent;
        recyclerView.setLayoutManager(new LinearLayoutManager(requireContext(), 1, false));
        eu1 eu1Var = new eu1(new an(o()), new gh6(), new w20(dh6.c, 1), new si6(ri6.c), new pi6(oi6.c), new li6(o()), new nh6(lh6.c), new com.warefly.checkscan.shared.infoBottomSheet.presentation.a(o()));
        this.h = eu1Var;
        recyclerView.setAdapter(eu1Var);
        recyclerView.addItemDecoration(new ph6());
        recyclerView.setItemAnimator(null);
        FragmentProductBinding fragmentProductBindingN = n();
        TextView textView = fragmentProductBindingN.incldError.btnTryAgain;
        textView.getClass();
        textView.setOnClickListener(new lb7(new rb(this, 4)));
        ImageView imageView = fragmentProductBindingN.btnBack;
        imageView.getClass();
        imageView.setOnClickListener(new lb7(new sb(this, 1)));
        LinearLayout linearLayout = fragmentProductBindingN.btnScan;
        linearLayout.getClass();
        linearLayout.setOnClickListener(new lb7(new qh6(this, 0)));
    }

    public final ProductPresenter providePresenter() {
        return new ProductPresenter(requireArguments().getInt("PRODUCT_ID_KEY"), (o73) m2.c(o73.class, e.e(this), null, null), (uf3) n2.c(uf3.class, e.e(this), j(), null));
    }

    @Override // com.warefly.checkscan.products.presentation.product.view.ProductView
    public final void showContent(List<? extends pz3> list) {
        list.getClass();
        eu1 eu1Var = this.h;
        if (eu1Var != null) {
            eu1Var.submitList(list);
        }
    }

    @Override // com.warefly.checkscan.products.presentation.product.view.ProductView
    public final void showError(boolean z) {
        ConstraintLayout root = n().incldError.getRoot();
        root.getClass();
        root.setVisibility(z ? 0 : 8);
    }

    @Override // com.warefly.checkscan.products.presentation.product.view.ProductView
    public final void showImage(String str) {
        str.getClass();
        FragmentProductBinding fragmentProductBindingN = n();
        CollapsingToolbarLayout collapsingToolbarLayout = fragmentProductBindingN.appbar;
        collapsingToolbarLayout.getClass();
        collapsingToolbarLayout.setVisibility(0);
        com.bumptech.glide.a.e(fragmentProductBindingN.ivBanner).h(str).F(new b(fragmentProductBindingN)).O();
    }

    @Override // com.warefly.checkscan.products.presentation.product.view.ProductView
    public final void showInfoBottomSheet(List<com.warefly.checkscan.shared.infoBottomSheet.presentation.b.a> list) {
        list.getClass();
        Context context = getContext();
        if (context != null) {
            InfoBottomSheet infoBottomSheet = this.i;
            if (infoBottomSheet != null) {
                infoBottomSheet.dismiss();
            }
            InfoBottomSheet infoBottomSheet2 = new InfoBottomSheet(context, list, true);
            this.i = infoBottomSheet2;
            infoBottomSheet2.show();
        }
    }

    @Override // com.warefly.checkscan.products.presentation.product.view.ProductView
    public final void showLoading(boolean z) {
        ConstraintLayout root = n().incldLoading.getRoot();
        root.getClass();
        root.setVisibility(z ? 0 : 8);
    }
}
