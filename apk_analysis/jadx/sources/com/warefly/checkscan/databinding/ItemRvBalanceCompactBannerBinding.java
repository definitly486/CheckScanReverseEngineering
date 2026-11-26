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
public final class ItemRvBalanceCompactBannerBinding implements ViewBinding {
    public final ImageView ivPlaceholder;
    private final ConstraintLayout rootView;
    public final AppCompatTextView tvDescription;
    public final AppCompatTextView tvTitle;

    private ItemRvBalanceCompactBannerBinding(ConstraintLayout constraintLayout, ImageView imageView, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2) {
        this.rootView = constraintLayout;
        this.ivPlaceholder = imageView;
        this.tvDescription = appCompatTextView;
        this.tvTitle = appCompatTextView2;
    }

    public static ItemRvBalanceCompactBannerBinding bind(View view) {
        int i = R.id.iv_placeholder;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_placeholder);
        if (imageView != null) {
            i = R.id.tv_description;
            AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, R.id.tv_description);
            if (appCompatTextView != null) {
                i = R.id.tv_title;
                AppCompatTextView appCompatTextView2 = (AppCompatTextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                if (appCompatTextView2 != null) {
                    return new ItemRvBalanceCompactBannerBinding((ConstraintLayout) view, imageView, appCompatTextView, appCompatTextView2);
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static ItemRvBalanceCompactBannerBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_rv_balance_compact_banner, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static ItemRvBalanceCompactBannerBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
