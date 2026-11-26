package com.warefly.checkscan.core.ui.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import defpackage.o2;
import eightbitlab.com.blurview.BlurView;

/* JADX INFO: loaded from: classes5.dex */
public final class LayoutAdsBadgeBinding implements ViewBinding {
    public final BlurView blurView;
    private final BlurView rootView;
    public final TextView tvAdsTitle;

    private LayoutAdsBadgeBinding(BlurView blurView, BlurView blurView2, TextView textView) {
        this.rootView = blurView;
        this.blurView = blurView2;
        this.tvAdsTitle = textView;
    }

    public static LayoutAdsBadgeBinding bind(View view) {
        BlurView blurView = (BlurView) view;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_ads_title);
        if (textView != null) {
            return new LayoutAdsBadgeBinding(blurView, blurView, textView);
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.tv_ads_title)));
        return null;
    }

    public static LayoutAdsBadgeBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.layout_ads_badge, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public BlurView getRoot() {
        return this.rootView;
    }

    public static LayoutAdsBadgeBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
