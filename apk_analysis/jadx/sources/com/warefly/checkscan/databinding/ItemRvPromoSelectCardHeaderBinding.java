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
public final class ItemRvPromoSelectCardHeaderBinding implements ViewBinding {
    public final View divider;
    public final ImageView ivLogo;
    private final ConstraintLayout rootView;
    public final TextView tvDescription;
    public final TextView tvTitle;

    private ItemRvPromoSelectCardHeaderBinding(ConstraintLayout constraintLayout, View view, ImageView imageView, TextView textView, TextView textView2) {
        this.rootView = constraintLayout;
        this.divider = view;
        this.ivLogo = imageView;
        this.tvDescription = textView;
        this.tvTitle = textView2;
    }

    public static ItemRvPromoSelectCardHeaderBinding bind(View view) {
        int i = R.id.divider;
        View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.divider);
        if (viewFindChildViewById != null) {
            i = R.id.iv_logo;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_logo);
            if (imageView != null) {
                i = R.id.tv_description;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_description);
                if (textView != null) {
                    i = R.id.tv_title;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                    if (textView2 != null) {
                        return new ItemRvPromoSelectCardHeaderBinding((ConstraintLayout) view, viewFindChildViewById, imageView, textView, textView2);
                    }
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static ItemRvPromoSelectCardHeaderBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_rv_promo_select_card_header, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static ItemRvPromoSelectCardHeaderBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
