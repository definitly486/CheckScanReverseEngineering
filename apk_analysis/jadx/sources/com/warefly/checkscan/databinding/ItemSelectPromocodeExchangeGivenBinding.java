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
public final class ItemSelectPromocodeExchangeGivenBinding implements ViewBinding {
    public final ImageView ivIcon;
    private final ConstraintLayout rootView;
    public final TextView tvBottomText;
    public final TextView tvTopText;
    public final TextView tvValue;

    private ItemSelectPromocodeExchangeGivenBinding(ConstraintLayout constraintLayout, ImageView imageView, TextView textView, TextView textView2, TextView textView3) {
        this.rootView = constraintLayout;
        this.ivIcon = imageView;
        this.tvBottomText = textView;
        this.tvTopText = textView2;
        this.tvValue = textView3;
    }

    public static ItemSelectPromocodeExchangeGivenBinding bind(View view) {
        int i = R.id.iv_icon;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_icon);
        if (imageView != null) {
            i = R.id.tv_bottom_text;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_bottom_text);
            if (textView != null) {
                i = R.id.tv_top_text;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_top_text);
                if (textView2 != null) {
                    i = R.id.tv_value;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_value);
                    if (textView3 != null) {
                        return new ItemSelectPromocodeExchangeGivenBinding((ConstraintLayout) view, imageView, textView, textView2, textView3);
                    }
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static ItemSelectPromocodeExchangeGivenBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_select_promocode_exchange_given, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static ItemSelectPromocodeExchangeGivenBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
