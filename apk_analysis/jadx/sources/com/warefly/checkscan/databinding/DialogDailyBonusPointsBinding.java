package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.Space;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.databinding.ConfettiLayoutBinding;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class DialogDailyBonusPointsBinding implements ViewBinding {
    public final Space bottomSpace;
    public final TextView btnPositive;
    public final ConfettiLayoutBinding incldConfetti;
    public final ImageView ivBadge;
    public final ImageView ivPrize;
    private final ConstraintLayout rootView;
    public final TextView tvDescription;
    public final TextView tvTitle;
    public final View viewImageTopBarrier;

    private DialogDailyBonusPointsBinding(ConstraintLayout constraintLayout, Space space, TextView textView, ConfettiLayoutBinding confettiLayoutBinding, ImageView imageView, ImageView imageView2, TextView textView2, TextView textView3, View view) {
        this.rootView = constraintLayout;
        this.bottomSpace = space;
        this.btnPositive = textView;
        this.incldConfetti = confettiLayoutBinding;
        this.ivBadge = imageView;
        this.ivPrize = imageView2;
        this.tvDescription = textView2;
        this.tvTitle = textView3;
        this.viewImageTopBarrier = view;
    }

    public static DialogDailyBonusPointsBinding bind(View view) {
        int i = R.id.bottom_space;
        Space space = (Space) ViewBindings.findChildViewById(view, R.id.bottom_space);
        if (space != null) {
            i = R.id.btn_positive;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btn_positive);
            if (textView != null) {
                i = R.id.incld_confetti;
                View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.incld_confetti);
                if (viewFindChildViewById != null) {
                    ConfettiLayoutBinding confettiLayoutBindingBind = ConfettiLayoutBinding.bind(viewFindChildViewById);
                    i = R.id.iv_badge;
                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_badge);
                    if (imageView != null) {
                        i = R.id.iv_prize;
                        ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_prize);
                        if (imageView2 != null) {
                            i = R.id.tv_description;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_description);
                            if (textView2 != null) {
                                i = R.id.tv_title;
                                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                                if (textView3 != null) {
                                    i = R.id.view_image_top_barrier;
                                    View viewFindChildViewById2 = ViewBindings.findChildViewById(view, R.id.view_image_top_barrier);
                                    if (viewFindChildViewById2 != null) {
                                        return new DialogDailyBonusPointsBinding((ConstraintLayout) view, space, textView, confettiLayoutBindingBind, imageView, imageView2, textView2, textView3, viewFindChildViewById2);
                                    }
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

    public static DialogDailyBonusPointsBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_daily_bonus_points, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static DialogDailyBonusPointsBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
