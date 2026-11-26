package com.warefly.checkscan.tasks.databinding;

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

/* JADX INFO: loaded from: classes5.dex */
public final class ItemRvTaskDailyBannerBinding implements ViewBinding {
    public final ImageView ivArrow;
    public final ImageView ivBanner;
    public final ImageView ivIcon;
    private final MaterialCardView rootView;
    public final TextView tvTitle;

    private ItemRvTaskDailyBannerBinding(MaterialCardView materialCardView, ImageView imageView, ImageView imageView2, ImageView imageView3, TextView textView) {
        this.rootView = materialCardView;
        this.ivArrow = imageView;
        this.ivBanner = imageView2;
        this.ivIcon = imageView3;
        this.tvTitle = textView;
    }

    public static ItemRvTaskDailyBannerBinding bind(View view) {
        int i = R.id.iv_arrow;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_arrow);
        if (imageView != null) {
            i = R.id.iv_banner;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_banner);
            if (imageView2 != null) {
                i = R.id.iv_icon;
                ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_icon);
                if (imageView3 != null) {
                    i = R.id.tv_title;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                    if (textView != null) {
                        return new ItemRvTaskDailyBannerBinding((MaterialCardView) view, imageView, imageView2, imageView3, textView);
                    }
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static ItemRvTaskDailyBannerBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_rv_task_daily_banner, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public MaterialCardView getRoot() {
        return this.rootView;
    }

    public static ItemRvTaskDailyBannerBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
