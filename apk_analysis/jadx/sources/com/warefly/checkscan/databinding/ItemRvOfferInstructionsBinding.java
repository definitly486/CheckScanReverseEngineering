package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemRvOfferInstructionsBinding implements ViewBinding {
    public final ImageView ivNumber;
    private final LinearLayout rootView;
    public final AppCompatTextView tvTitle;

    private ItemRvOfferInstructionsBinding(LinearLayout linearLayout, ImageView imageView, AppCompatTextView appCompatTextView) {
        this.rootView = linearLayout;
        this.ivNumber = imageView;
        this.tvTitle = appCompatTextView;
    }

    public static ItemRvOfferInstructionsBinding bind(View view) {
        int i = R.id.iv_number;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_number);
        if (imageView != null) {
            i = R.id.tv_title;
            AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, R.id.tv_title);
            if (appCompatTextView != null) {
                return new ItemRvOfferInstructionsBinding((LinearLayout) view, imageView, appCompatTextView);
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static ItemRvOfferInstructionsBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_rv_offer_instructions, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static ItemRvOfferInstructionsBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
