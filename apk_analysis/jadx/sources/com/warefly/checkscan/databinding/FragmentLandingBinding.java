package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.appbar.AppBarLayout;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class FragmentLandingBinding implements ViewBinding {
    public final ImageView btnBack;
    public final CoordinatorLayout coordLayout;
    public final ImageView ivBanner;
    private final CoordinatorLayout rootView;
    public final RecyclerView rvContent;
    public final AppBarLayout toolbarBanner;

    private FragmentLandingBinding(CoordinatorLayout coordinatorLayout, ImageView imageView, CoordinatorLayout coordinatorLayout2, ImageView imageView2, RecyclerView recyclerView, AppBarLayout appBarLayout) {
        this.rootView = coordinatorLayout;
        this.btnBack = imageView;
        this.coordLayout = coordinatorLayout2;
        this.ivBanner = imageView2;
        this.rvContent = recyclerView;
        this.toolbarBanner = appBarLayout;
    }

    public static FragmentLandingBinding bind(View view) {
        int i = R.id.btn_back;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.btn_back);
        if (imageView != null) {
            CoordinatorLayout coordinatorLayout = (CoordinatorLayout) view;
            i = R.id.iv_banner;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_banner);
            if (imageView2 != null) {
                i = R.id.rv_content;
                RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rv_content);
                if (recyclerView != null) {
                    i = R.id.toolbar_banner;
                    AppBarLayout appBarLayout = (AppBarLayout) ViewBindings.findChildViewById(view, R.id.toolbar_banner);
                    if (appBarLayout != null) {
                        return new FragmentLandingBinding(coordinatorLayout, imageView, coordinatorLayout, imageView2, recyclerView, appBarLayout);
                    }
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static FragmentLandingBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_landing, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public CoordinatorLayout getRoot() {
        return this.rootView;
    }

    public static FragmentLandingBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
