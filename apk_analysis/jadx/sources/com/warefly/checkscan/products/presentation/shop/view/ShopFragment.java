package com.warefly.checkscan.products.presentation.shop.view;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.bumptech.glide.load.engine.GlideException;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.card.MaterialCardView;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.SafeImageView;
import com.warefly.checkscan.core.ui.base.architecture.BaseFragment;
import com.warefly.checkscan.products.databinding.FragmentShopBinding;
import com.warefly.checkscan.products.presentation.shop.presenter.ShopPresenter;
import com.warefly.checkscan.products.presentation.shop.view.ShopFragment;
import com.warefly.checkscan.shared.simpleInfoBottomSheet.SimpleInfoBottomSheet;
import com.warefly.checkscan.shimmer.ShimmerFrameLayout;
import defpackage.aa4;
import defpackage.aj6;
import defpackage.an;
import defpackage.bs6;
import defpackage.bw3;
import defpackage.c71;
import defpackage.d71;
import defpackage.dw8;
import defpackage.e;
import defpackage.eu1;
import defpackage.gh6;
import defpackage.h83;
import defpackage.iv1;
import defpackage.lb7;
import defpackage.m2;
import defpackage.n2;
import defpackage.o2;
import defpackage.o37;
import defpackage.ol4;
import defpackage.pu7;
import defpackage.pz3;
import defpackage.qu7;
import defpackage.r10;
import defpackage.uf3;
import defpackage.wk8;
import defpackage.x07;
import defpackage.y82;
import defpackage.yy4;
import defpackage.ze4;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class ShopFragment extends BaseFragment<FragmentShopBinding> implements ShopView {
    public static final a k;
    public static final /* synthetic */ ze4<Object>[] l;
    public eu1 h;
    public SimpleInfoBottomSheet j;
    public ShopPresenter presenter;
    public final int f = R.layout.fragment_shop;
    public final ol4 g = new ol4(FragmentShopBinding.class);
    public final b i = new b();

    public static final class a {
    }

    /* JADX INFO: loaded from: classes4.dex */
    public static final class b extends bw3 {
        public b() {
            this.h = true;
        }
    }

    public static final class c<T> implements o37 {
        public final /* synthetic */ FragmentShopBinding a;

        public c(FragmentShopBinding fragmentShopBinding) {
            this.a = fragmentShopBinding;
        }

        @Override // defpackage.o37
        public final boolean onLoadFailed(GlideException glideException, Object obj, wk8<T> wk8Var, boolean z) {
            return false;
        }

        @Override // defpackage.o37
        public final boolean onResourceReady(Object obj, Object obj2, wk8 wk8Var, y82 y82Var, boolean z) {
            FragmentShopBinding fragmentShopBinding = this.a;
            SafeImageView safeImageView = fragmentShopBinding.ivBanner;
            safeImageView.getClass();
            safeImageView.setVisibility(0);
            ShimmerFrameLayout shimmerFrameLayout = fragmentShopBinding.ivLoading;
            shimmerFrameLayout.getClass();
            shimmerFrameLayout.setVisibility(8);
            fragmentShopBinding.ivBanner.setImageDrawableWithCache((Drawable) obj);
            return false;
        }
    }

    static {
        bs6 bs6Var = new bs6(ShopFragment.class, "binding", "getBinding()Lcom/warefly/checkscan/products/databinding/FragmentShopBinding;", 0);
        x07.a.getClass();
        l = new ze4[]{bs6Var};
        k = new a();
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

    public final FragmentShopBinding n() {
        return (FragmentShopBinding) this.g.getValue(this, l[0]);
    }

    public final ShopPresenter o() {
        ShopPresenter shopPresenter = this.presenter;
        if (shopPresenter != null) {
            return shopPresenter;
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
        eu1 eu1Var = new eu1(new an(o()), new r10(qu7.c, 3), new gh6(), new dw8(), new iv1(o()), new aj6(o()));
        this.h = eu1Var;
        recyclerView.setAdapter(eu1Var);
        recyclerView.addItemDecoration(new pu7());
        recyclerView.setItemAnimator(null);
        FragmentShopBinding fragmentShopBindingN = n();
        TextView textView = fragmentShopBindingN.incldError.btnTryAgain;
        textView.getClass();
        textView.setOnClickListener(new lb7(new c71(this, 2)));
        ImageView imageView = fragmentShopBindingN.toolbar.ivBtnBack;
        imageView.getClass();
        imageView.setOnClickListener(new lb7(new d71(this, 1)));
        LinearLayout linearLayout = fragmentShopBindingN.btnScan;
        linearLayout.getClass();
        linearLayout.setOnClickListener(new lb7(new yy4(this)));
    }

    public final ShopPresenter providePresenter() {
        return new ShopPresenter(requireArguments().getInt("SHOP_ID_KEY"), requireArguments().getBoolean("IS_MERCHANT_KEY", false), (h83) m2.c(h83.class, e.e(this), null, null), (uf3) n2.c(uf3.class, e.e(this), j(), null));
    }

    @Override // com.warefly.checkscan.products.presentation.shop.view.ShopView
    public final void setMerchantScrollListener() {
        n().rvContent.addOnScrollListener(this.i);
    }

    @Override // com.warefly.checkscan.products.presentation.shop.view.ShopView
    public final void setToolbarTitle(String str) {
        str.getClass();
        n().toolbar.tvTitle.setText(str);
    }

    @Override // com.warefly.checkscan.products.presentation.shop.view.ShopView
    public final void showContent(List<? extends pz3> list) {
        list.getClass();
        eu1 eu1Var = this.h;
        if (eu1Var != null) {
            eu1Var.submitList(list);
        }
    }

    @Override // com.warefly.checkscan.products.presentation.shop.view.ShopView
    public final void showError(boolean z) {
        ConstraintLayout root = n().incldError.getRoot();
        root.getClass();
        root.setVisibility(z ? 0 : 8);
    }

    @Override // com.warefly.checkscan.products.presentation.shop.view.ShopView
    public final void showImage(String str, String str2) {
        if (str != null) {
            final FragmentShopBinding fragmentShopBindingN = n();
            fragmentShopBindingN.toolbarBanner.addOnOffsetChangedListener(new AppBarLayout.OnOffsetChangedListener() { // from class: ou7
                @Override // com.google.android.material.appbar.AppBarLayout.OnOffsetChangedListener, com.google.android.material.appbar.AppBarLayout.BaseOnOffsetChangedListener
                public final void onOffsetChanged(AppBarLayout appBarLayout, int i) {
                    ShopFragment.a aVar = ShopFragment.k;
                    int totalScrollRange = appBarLayout.getTotalScrollRange();
                    FragmentShopBinding fragmentShopBinding = fragmentShopBindingN;
                    if (i == 0) {
                        TextView textView = fragmentShopBinding.toolbar.tvTitle;
                        textView.getClass();
                        textView.setVisibility(8);
                    } else if (Math.abs(i) >= totalScrollRange) {
                        TextView textView2 = fragmentShopBinding.toolbar.tvTitle;
                        textView2.getClass();
                        textView2.setVisibility(0);
                    }
                }
            });
            AppBarLayout appBarLayout = fragmentShopBindingN.toolbarBanner;
            appBarLayout.getClass();
            appBarLayout.setVisibility(0);
            com.bumptech.glide.a.e(fragmentShopBindingN.ivLogo).h(str2).L(fragmentShopBindingN.ivLogo);
            com.bumptech.glide.a.e(fragmentShopBindingN.ivBanner).h(str).F(new c(fragmentShopBindingN)).O();
            return;
        }
        AppBarLayout appBarLayout2 = n().toolbarBanner;
        appBarLayout2.getClass();
        appBarLayout2.setVisibility(8);
        RecyclerView recyclerView = n().rvContent;
        recyclerView.getClass();
        ViewGroup.LayoutParams layoutParams = recyclerView.getLayoutParams();
        if (layoutParams == null) {
            o2.d("null cannot be cast to non-null type androidx.coordinatorlayout.widget.CoordinatorLayout.LayoutParams");
            return;
        }
        CoordinatorLayout.LayoutParams layoutParams2 = (CoordinatorLayout.LayoutParams) layoutParams;
        layoutParams2.setBehavior(null);
        recyclerView.setLayoutParams(layoutParams2);
    }

    @Override // com.warefly.checkscan.products.presentation.shop.view.ShopView
    public final void showInfoBottomSheet(String str, String str2) {
        str2.getClass();
        Context context = getContext();
        if (context != null) {
            SimpleInfoBottomSheet simpleInfoBottomSheet = this.j;
            if (simpleInfoBottomSheet != null) {
                simpleInfoBottomSheet.dismiss();
            }
            SimpleInfoBottomSheet simpleInfoBottomSheet2 = new SimpleInfoBottomSheet(context, str, str2);
            this.j = simpleInfoBottomSheet2;
            simpleInfoBottomSheet2.show();
        }
    }

    @Override // com.warefly.checkscan.products.presentation.shop.view.ShopView
    public final void showLoading(boolean z) {
        ConstraintLayout root = n().incldLoading.getRoot();
        root.getClass();
        root.setVisibility(z ? 0 : 8);
    }

    @Override // com.warefly.checkscan.products.presentation.shop.view.ShopView
    public final void showScanButton(boolean z) {
        MaterialCardView materialCardView = n().layoutButtonScan;
        materialCardView.getClass();
        materialCardView.setVisibility(z ? 0 : 8);
    }

    @Override // com.warefly.checkscan.products.presentation.shop.view.ShopView
    public final void showToolbarTitle(boolean z) {
        TextView textView = n().toolbar.tvTitle;
        textView.getClass();
        textView.setVisibility(z ? 0 : 8);
    }
}
