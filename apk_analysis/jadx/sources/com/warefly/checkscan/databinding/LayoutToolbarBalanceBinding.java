package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class LayoutToolbarBalanceBinding implements ViewBinding {
    public final View btnAction;
    public final ImageView ivAction;
    private final ConstraintLayout rootView;
    public final AppCompatTextView tvSupport;
    public final AppCompatTextView tvTitle;

    private LayoutToolbarBalanceBinding(ConstraintLayout constraintLayout, View view, ImageView imageView, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2) {
        this.rootView = constraintLayout;
        this.btnAction = view;
        this.ivAction = imageView;
        this.tvSupport = appCompatTextView;
        this.tvTitle = appCompatTextView2;
    }

    public static LayoutToolbarBalanceBinding bind(View view) {
        int i = R.id.btn_action;
        View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.btn_action);
        if (viewFindChildViewById != null) {
            i = R.id.iv_action;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_action);
            if (imageView != null) {
                i = R.id.tv_support;
                AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, R.id.tv_support);
                if (appCompatTextView != null) {
                    i = R.id.tv_title;
                    AppCompatTextView appCompatTextView2 = (AppCompatTextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                    if (appCompatTextView2 != null) {
                        return new LayoutToolbarBalanceBinding((ConstraintLayout) view, viewFindChildViewById, imageView, appCompatTextView, appCompatTextView2);
                    }
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static LayoutToolbarBalanceBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.layout_toolbar_balance, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static LayoutToolbarBalanceBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
