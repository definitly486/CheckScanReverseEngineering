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
public final class ItemRvBalanceCardTextWithHintBinding implements ViewBinding {
    public final ImageView ivLogoCheckScan;
    public final ImageView ivLogoMir;
    private final ConstraintLayout rootView;
    public final AppCompatTextView tvHint;
    public final AppCompatTextView tvTitle;
    public final View viewBackground;
    public final View viewGradientBackground;

    private ItemRvBalanceCardTextWithHintBinding(ConstraintLayout constraintLayout, ImageView imageView, ImageView imageView2, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, View view, View view2) {
        this.rootView = constraintLayout;
        this.ivLogoCheckScan = imageView;
        this.ivLogoMir = imageView2;
        this.tvHint = appCompatTextView;
        this.tvTitle = appCompatTextView2;
        this.viewBackground = view;
        this.viewGradientBackground = view2;
    }

    public static ItemRvBalanceCardTextWithHintBinding bind(View view) {
        int i = R.id.iv_logo_check_scan;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_logo_check_scan);
        if (imageView != null) {
            i = R.id.iv_logo_mir;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_logo_mir);
            if (imageView2 != null) {
                i = R.id.tv_hint;
                AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, R.id.tv_hint);
                if (appCompatTextView != null) {
                    i = R.id.tv_title;
                    AppCompatTextView appCompatTextView2 = (AppCompatTextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                    if (appCompatTextView2 != null) {
                        i = R.id.view_background;
                        View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.view_background);
                        if (viewFindChildViewById != null) {
                            i = R.id.view_gradient_background;
                            View viewFindChildViewById2 = ViewBindings.findChildViewById(view, R.id.view_gradient_background);
                            if (viewFindChildViewById2 != null) {
                                return new ItemRvBalanceCardTextWithHintBinding((ConstraintLayout) view, imageView, imageView2, appCompatTextView, appCompatTextView2, viewFindChildViewById, viewFindChildViewById2);
                            }
                        }
                    }
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static ItemRvBalanceCardTextWithHintBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_rv_balance_card_text_with_hint, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static ItemRvBalanceCardTextWithHintBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
