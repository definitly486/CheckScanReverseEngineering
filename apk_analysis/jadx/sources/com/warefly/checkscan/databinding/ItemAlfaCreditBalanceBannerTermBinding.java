package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemAlfaCreditBalanceBannerTermBinding implements ViewBinding {
    private final ConstraintLayout rootView;
    public final ImageView tvBulletPoint;
    public final TextView tvTerm;

    private ItemAlfaCreditBalanceBannerTermBinding(ConstraintLayout constraintLayout, ImageView imageView, TextView textView) {
        this.rootView = constraintLayout;
        this.tvBulletPoint = imageView;
        this.tvTerm = textView;
    }

    public static ItemAlfaCreditBalanceBannerTermBinding bind(View view) {
        int i = R.id.tv_bullet_point;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.tv_bullet_point);
        if (imageView != null) {
            i = R.id.tv_term;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_term);
            if (textView != null) {
                return new ItemAlfaCreditBalanceBannerTermBinding((ConstraintLayout) view, imageView, textView);
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static ItemAlfaCreditBalanceBannerTermBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_alfa_credit_balance_banner_term, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static ItemAlfaCreditBalanceBannerTermBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
