package com.warefly.checkscan.products.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Space;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.card.MaterialCardView;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemProductCashbackValueBinding implements ViewBinding {
    private final MaterialCardView rootView;
    public final Space spacePrefix;
    public final Space spaceSuffix;
    public final TextView tvPrefix;
    public final TextView tvSuffix;
    public final TextView tvTitle;
    public final TextView tvValue;

    private ItemProductCashbackValueBinding(MaterialCardView materialCardView, Space space, Space space2, TextView textView, TextView textView2, TextView textView3, TextView textView4) {
        this.rootView = materialCardView;
        this.spacePrefix = space;
        this.spaceSuffix = space2;
        this.tvPrefix = textView;
        this.tvSuffix = textView2;
        this.tvTitle = textView3;
        this.tvValue = textView4;
    }

    public static ItemProductCashbackValueBinding bind(View view) {
        int i = R.id.space_prefix;
        Space space = (Space) ViewBindings.findChildViewById(view, R.id.space_prefix);
        if (space != null) {
            i = R.id.space_suffix;
            Space space2 = (Space) ViewBindings.findChildViewById(view, R.id.space_suffix);
            if (space2 != null) {
                i = R.id.tv_prefix;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_prefix);
                if (textView != null) {
                    i = R.id.tv_suffix;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_suffix);
                    if (textView2 != null) {
                        i = R.id.tv_title;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                        if (textView3 != null) {
                            i = R.id.tv_value;
                            TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_value);
                            if (textView4 != null) {
                                return new ItemProductCashbackValueBinding((MaterialCardView) view, space, space2, textView, textView2, textView3, textView4);
                            }
                        }
                    }
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static ItemProductCashbackValueBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_product_cashback_value, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public MaterialCardView getRoot() {
        return this.rootView;
    }

    public static ItemProductCashbackValueBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
