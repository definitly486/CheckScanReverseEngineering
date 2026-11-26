package com.warefly.checkscan.tasks.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.Space;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.airbnb.lottie.LottieAnimationView;
import com.google.android.material.card.MaterialCardView;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemRvTaskDailyCardBinding implements ViewBinding {
    public final Space bottomSpacer;
    public final ImageView btnArrow;
    public final View fadeBackground;
    public final LottieAnimationView ivBadgeAnimatedIcon;
    public final ImageView ivBadgeIcon;
    public final ImageView ivLogo;
    private final MaterialCardView rootView;
    public final TextView tvTitle;

    private ItemRvTaskDailyCardBinding(MaterialCardView materialCardView, Space space, ImageView imageView, View view, LottieAnimationView lottieAnimationView, ImageView imageView2, ImageView imageView3, TextView textView) {
        this.rootView = materialCardView;
        this.bottomSpacer = space;
        this.btnArrow = imageView;
        this.fadeBackground = view;
        this.ivBadgeAnimatedIcon = lottieAnimationView;
        this.ivBadgeIcon = imageView2;
        this.ivLogo = imageView3;
        this.tvTitle = textView;
    }

    public static ItemRvTaskDailyCardBinding bind(View view) {
        int i = R.id.bottom_spacer;
        Space space = (Space) ViewBindings.findChildViewById(view, R.id.bottom_spacer);
        if (space != null) {
            i = R.id.btn_arrow;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.btn_arrow);
            if (imageView != null) {
                i = R.id.fade_background;
                View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.fade_background);
                if (viewFindChildViewById != null) {
                    i = R.id.iv_badge_animated_icon;
                    LottieAnimationView lottieAnimationView = (LottieAnimationView) ViewBindings.findChildViewById(view, R.id.iv_badge_animated_icon);
                    if (lottieAnimationView != null) {
                        i = R.id.iv_badge_icon;
                        ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_badge_icon);
                        if (imageView2 != null) {
                            i = R.id.iv_logo;
                            ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_logo);
                            if (imageView3 != null) {
                                i = R.id.tv_title;
                                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                                if (textView != null) {
                                    return new ItemRvTaskDailyCardBinding((MaterialCardView) view, space, imageView, viewFindChildViewById, lottieAnimationView, imageView2, imageView3, textView);
                                }
                            }
                        }
                    }
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static ItemRvTaskDailyCardBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_rv_task_daily_card, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public MaterialCardView getRoot() {
        return this.rootView;
    }

    public static ItemRvTaskDailyCardBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
