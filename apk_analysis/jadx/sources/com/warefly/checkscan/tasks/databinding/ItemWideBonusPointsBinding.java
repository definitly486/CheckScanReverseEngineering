package com.warefly.checkscan.tasks.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.card.MaterialCardView;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemWideBonusPointsBinding implements ViewBinding {
    public final LinearLayout btnAction;
    public final TextView btnSecondary;
    public final ConstraintLayout clRightContent;
    public final ImageView ivBadge;
    public final ImageView ivImage;
    public final MaterialCardView mcCard;
    private final ConstraintLayout rootView;
    public final LinearLayout timerContainer;
    public final TextView tvButton;
    public final TextView tvTimer;
    public final TextView tvTimerAdCount;
    public final TextView tvTitle;

    private ItemWideBonusPointsBinding(ConstraintLayout constraintLayout, LinearLayout linearLayout, TextView textView, ConstraintLayout constraintLayout2, ImageView imageView, ImageView imageView2, MaterialCardView materialCardView, LinearLayout linearLayout2, TextView textView2, TextView textView3, TextView textView4, TextView textView5) {
        this.rootView = constraintLayout;
        this.btnAction = linearLayout;
        this.btnSecondary = textView;
        this.clRightContent = constraintLayout2;
        this.ivBadge = imageView;
        this.ivImage = imageView2;
        this.mcCard = materialCardView;
        this.timerContainer = linearLayout2;
        this.tvButton = textView2;
        this.tvTimer = textView3;
        this.tvTimerAdCount = textView4;
        this.tvTitle = textView5;
    }

    public static ItemWideBonusPointsBinding bind(View view) {
        int i = R.id.btn_action;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.btn_action);
        if (linearLayout != null) {
            i = R.id.btn_secondary;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btn_secondary);
            if (textView != null) {
                i = R.id.cl_right_content;
                ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(view, R.id.cl_right_content);
                if (constraintLayout != null) {
                    i = R.id.iv_badge;
                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_badge);
                    if (imageView != null) {
                        i = R.id.iv_image;
                        ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_image);
                        if (imageView2 != null) {
                            i = R.id.mc_card;
                            MaterialCardView materialCardView = (MaterialCardView) ViewBindings.findChildViewById(view, R.id.mc_card);
                            if (materialCardView != null) {
                                i = R.id.timer_container;
                                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.timer_container);
                                if (linearLayout2 != null) {
                                    i = R.id.tv_button;
                                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_button);
                                    if (textView2 != null) {
                                        i = R.id.tv_timer;
                                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_timer);
                                        if (textView3 != null) {
                                            i = R.id.tv_timer_ad_count;
                                            TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_timer_ad_count);
                                            if (textView4 != null) {
                                                i = R.id.tv_title;
                                                TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                                                if (textView5 != null) {
                                                    return new ItemWideBonusPointsBinding((ConstraintLayout) view, linearLayout, textView, constraintLayout, imageView, imageView2, materialCardView, linearLayout2, textView2, textView3, textView4, textView5);
                                                }
                                            }
                                        }
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

    public static ItemWideBonusPointsBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_wide_bonus_points, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static ItemWideBonusPointsBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
