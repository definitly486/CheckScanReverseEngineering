package com.warefly.checkscan.bonuses.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.card.MaterialCardView;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes.dex */
public final class LayoutOfflineOnlineShopBinding implements ViewBinding {
    public final ImageView ivBackground;
    private final MaterialCardView rootView;
    public final TextView tvText;

    private LayoutOfflineOnlineShopBinding(MaterialCardView materialCardView, ImageView imageView, TextView textView) {
        this.rootView = materialCardView;
        this.ivBackground = imageView;
        this.tvText = textView;
    }

    public static LayoutOfflineOnlineShopBinding bind(View view) {
        int i = R.id.iv_background;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_background);
        if (imageView != null) {
            i = R.id.tv_text;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_text);
            if (textView != null) {
                return new LayoutOfflineOnlineShopBinding((MaterialCardView) view, imageView, textView);
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static LayoutOfflineOnlineShopBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.layout_offline_online_shop, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public MaterialCardView getRoot() {
        return this.rootView;
    }

    public static LayoutOfflineOnlineShopBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
