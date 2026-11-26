package com.warefly.checkscan.products.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import androidx.viewpager2.widget.ViewPager2;
import com.google.android.material.tabs.TabLayout;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class FragmentMainProductsBinding implements ViewBinding {
    public final ProductsPlaceholderLayoutBinding incldPlaceholder;
    private final ConstraintLayout rootView;
    public final TabLayout tlProducts;
    public final ViewPager2 vpProducts;

    private FragmentMainProductsBinding(ConstraintLayout constraintLayout, ProductsPlaceholderLayoutBinding productsPlaceholderLayoutBinding, TabLayout tabLayout, ViewPager2 viewPager2) {
        this.rootView = constraintLayout;
        this.incldPlaceholder = productsPlaceholderLayoutBinding;
        this.tlProducts = tabLayout;
        this.vpProducts = viewPager2;
    }

    public static FragmentMainProductsBinding bind(View view) {
        int i = R.id.incld_placeholder;
        View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.incld_placeholder);
        if (viewFindChildViewById != null) {
            ProductsPlaceholderLayoutBinding productsPlaceholderLayoutBindingBind = ProductsPlaceholderLayoutBinding.bind(viewFindChildViewById);
            int i2 = R.id.tl_products;
            TabLayout tabLayout = (TabLayout) ViewBindings.findChildViewById(view, R.id.tl_products);
            if (tabLayout != null) {
                i2 = R.id.vp_products;
                ViewPager2 viewPager2 = (ViewPager2) ViewBindings.findChildViewById(view, R.id.vp_products);
                if (viewPager2 != null) {
                    return new FragmentMainProductsBinding((ConstraintLayout) view, productsPlaceholderLayoutBindingBind, tabLayout, viewPager2);
                }
            }
            i = i2;
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static FragmentMainProductsBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_main_products, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static FragmentMainProductsBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
