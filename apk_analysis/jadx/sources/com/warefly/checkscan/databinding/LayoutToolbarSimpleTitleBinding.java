package com.warefly.checkscan.databinding;

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
public final class LayoutToolbarSimpleTitleBinding implements ViewBinding {
    public final ImageView btnAction;
    public final ImageView ivBtnBack;
    private final AppBarLayout rootView;
    public final TextView tvTitle;

    private LayoutToolbarSimpleTitleBinding(AppBarLayout appBarLayout, ImageView imageView, ImageView imageView2, TextView textView) {
        this.rootView = appBarLayout;
        this.btnAction = imageView;
        this.ivBtnBack = imageView2;
        this.tvTitle = textView;
    }

    public static LayoutToolbarSimpleTitleBinding bind(View view) {
        int i = R.id.btn_action;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.btn_action);
        if (imageView != null) {
            i = R.id.iv_btn_back;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_btn_back);
            if (imageView2 != null) {
                i = R.id.tv_title;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                if (textView != null) {
                    return new LayoutToolbarSimpleTitleBinding((AppBarLayout) view, imageView, imageView2, textView);
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static LayoutToolbarSimpleTitleBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.layout_toolbar_simple_title, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public AppBarLayout getRoot() {
        return this.rootView;
    }

    public static LayoutToolbarSimpleTitleBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
