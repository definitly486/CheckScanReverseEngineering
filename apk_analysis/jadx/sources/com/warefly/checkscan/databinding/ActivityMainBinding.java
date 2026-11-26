package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.FragmentContainerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class ActivityMainBinding implements ViewBinding {
    public final FragmentContainerView container;
    public final ImageView ivSplash;
    private final ConstraintLayout rootView;

    private ActivityMainBinding(ConstraintLayout constraintLayout, FragmentContainerView fragmentContainerView, ImageView imageView) {
        this.rootView = constraintLayout;
        this.container = fragmentContainerView;
        this.ivSplash = imageView;
    }

    public static ActivityMainBinding bind(View view) {
        int i = R.id.container;
        FragmentContainerView fragmentContainerView = (FragmentContainerView) ViewBindings.findChildViewById(view, R.id.container);
        if (fragmentContainerView != null) {
            i = R.id.iv_splash;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_splash);
            if (imageView != null) {
                return new ActivityMainBinding((ConstraintLayout) view, fragmentContainerView, imageView);
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static ActivityMainBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.activity_main, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static ActivityMainBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
