package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.card.MaterialCardView;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemRvPromoSelectCardTagBinding implements ViewBinding {
    public final MaterialCardView mcvContainer;
    private final MaterialCardView rootView;
    public final TextView tvTitle;

    private ItemRvPromoSelectCardTagBinding(MaterialCardView materialCardView, MaterialCardView materialCardView2, TextView textView) {
        this.rootView = materialCardView;
        this.mcvContainer = materialCardView2;
        this.tvTitle = textView;
    }

    public static ItemRvPromoSelectCardTagBinding bind(View view) {
        MaterialCardView materialCardView = (MaterialCardView) view;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
        if (textView != null) {
            return new ItemRvPromoSelectCardTagBinding(materialCardView, materialCardView, textView);
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.tv_title)));
        return null;
    }

    public static ItemRvPromoSelectCardTagBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_rv_promo_select_card_tag, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public MaterialCardView getRoot() {
        return this.rootView;
    }

    public static ItemRvPromoSelectCardTagBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
