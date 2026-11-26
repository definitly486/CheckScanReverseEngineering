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
import com.warefly.checkscan.core.ui.databinding.LayoutAdsBadgeBinding;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class BottomsheetWelcomeFullBannerBinding implements ViewBinding {
    public final TextView btnAction;
    public final TextView btnSecondAction;
    public final LayoutAdsBadgeBinding incldAdsBadge;
    public final ImageView ivCover;
    private final ConstraintLayout rootView;

    private BottomsheetWelcomeFullBannerBinding(ConstraintLayout constraintLayout, TextView textView, TextView textView2, LayoutAdsBadgeBinding layoutAdsBadgeBinding, ImageView imageView) {
        this.rootView = constraintLayout;
        this.btnAction = textView;
        this.btnSecondAction = textView2;
        this.incldAdsBadge = layoutAdsBadgeBinding;
        this.ivCover = imageView;
    }

    public static BottomsheetWelcomeFullBannerBinding bind(View view) {
        int i = R.id.btn_action;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btn_action);
        if (textView != null) {
            i = R.id.btn_second_action;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.btn_second_action);
            if (textView2 != null) {
                i = R.id.incld_ads_badge;
                View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.incld_ads_badge);
                if (viewFindChildViewById != null) {
                    LayoutAdsBadgeBinding layoutAdsBadgeBindingBind = LayoutAdsBadgeBinding.bind(viewFindChildViewById);
                    i = R.id.iv_cover;
                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_cover);
                    if (imageView != null) {
                        return new BottomsheetWelcomeFullBannerBinding((ConstraintLayout) view, textView, textView2, layoutAdsBadgeBindingBind, imageView);
                    }
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static BottomsheetWelcomeFullBannerBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.bottomsheet_welcome_full_banner, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static BottomsheetWelcomeFullBannerBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
