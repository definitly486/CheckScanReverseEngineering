package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.card.MaterialCardView;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class BonusesTopItemBinding implements ViewBinding {
    public final ImageView ivPowerCode;
    public final ImageView ivTopMarket;
    private final MaterialCardView rootView;
    public final AppCompatTextView tvTitle;

    private BonusesTopItemBinding(MaterialCardView materialCardView, ImageView imageView, ImageView imageView2, AppCompatTextView appCompatTextView) {
        this.rootView = materialCardView;
        this.ivPowerCode = imageView;
        this.ivTopMarket = imageView2;
        this.tvTitle = appCompatTextView;
    }

    public static BonusesTopItemBinding bind(View view) {
        int i = R.id.iv_power_code;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_power_code);
        if (imageView != null) {
            i = R.id.iv_top_market;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_top_market);
            if (imageView2 != null) {
                i = R.id.tv_title;
                AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                if (appCompatTextView != null) {
                    return new BonusesTopItemBinding((MaterialCardView) view, imageView, imageView2, appCompatTextView);
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static BonusesTopItemBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.bonuses_top_item, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public MaterialCardView getRoot() {
        return this.rootView;
    }

    public static BonusesTopItemBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
