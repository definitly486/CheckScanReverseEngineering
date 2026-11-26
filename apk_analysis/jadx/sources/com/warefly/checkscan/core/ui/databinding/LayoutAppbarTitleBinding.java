package com.warefly.checkscan.core.ui.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.appbar.AppBarLayout;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class LayoutAppbarTitleBinding implements ViewBinding {
    public final ImageView ivBtnBack;
    private final AppBarLayout rootView;
    public final TextView tvTitle;

    private LayoutAppbarTitleBinding(AppBarLayout appBarLayout, ImageView imageView, TextView textView) {
        this.rootView = appBarLayout;
        this.ivBtnBack = imageView;
        this.tvTitle = textView;
    }

    public static LayoutAppbarTitleBinding bind(View view) {
        int i = R.id.iv_btn_back;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_btn_back);
        if (imageView != null) {
            i = R.id.tv_title;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
            if (textView != null) {
                return new LayoutAppbarTitleBinding((AppBarLayout) view, imageView, textView);
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static LayoutAppbarTitleBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.layout_appbar_title, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public AppBarLayout getRoot() {
        return this.rootView;
    }

    public static LayoutAppbarTitleBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
