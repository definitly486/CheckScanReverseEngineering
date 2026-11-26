package com.warefly.checkscan.bonuses.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.Space;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Guideline;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes.dex */
public final class ItemRvStepActionBinding implements ViewBinding {
    public final View cardActionBackground;
    public final ConstraintLayout clBannerBlock;
    public final Guideline guideCenter;
    public final ImageView ivArrow;
    public final ImageView ivBackground;
    public final ImageView ivBottomImage;
    public final ImageView ivIcon;
    public final LinearLayout llBottom;
    public final LinearLayout llCard;
    private final ConstraintLayout rootView;
    public final Space spacerBottom;
    public final Space spacerTop;
    public final TextView tvBottomTitle;
    public final TextView tvStep;
    public final TextView tvSubtitle;
    public final TextView tvTitle;
    public final View viewLlCardGuide;

    private ItemRvStepActionBinding(ConstraintLayout constraintLayout, View view, ConstraintLayout constraintLayout2, Guideline guideline, ImageView imageView, ImageView imageView2, ImageView imageView3, ImageView imageView4, LinearLayout linearLayout, LinearLayout linearLayout2, Space space, Space space2, TextView textView, TextView textView2, TextView textView3, TextView textView4, View view2) {
        this.rootView = constraintLayout;
        this.cardActionBackground = view;
        this.clBannerBlock = constraintLayout2;
        this.guideCenter = guideline;
        this.ivArrow = imageView;
        this.ivBackground = imageView2;
        this.ivBottomImage = imageView3;
        this.ivIcon = imageView4;
        this.llBottom = linearLayout;
        this.llCard = linearLayout2;
        this.spacerBottom = space;
        this.spacerTop = space2;
        this.tvBottomTitle = textView;
        this.tvStep = textView2;
        this.tvSubtitle = textView3;
        this.tvTitle = textView4;
        this.viewLlCardGuide = view2;
    }

    public static ItemRvStepActionBinding bind(View view) {
        int i = R.id.card_action_background;
        View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.card_action_background);
        if (viewFindChildViewById != null) {
            i = R.id.cl_banner_block;
            ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(view, R.id.cl_banner_block);
            if (constraintLayout != null) {
                i = R.id.guide_center;
                Guideline guideline = (Guideline) ViewBindings.findChildViewById(view, R.id.guide_center);
                if (guideline != null) {
                    i = R.id.iv_arrow;
                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_arrow);
                    if (imageView != null) {
                        i = R.id.iv_background;
                        ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_background);
                        if (imageView2 != null) {
                            i = R.id.iv_bottom_image;
                            ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_bottom_image);
                            if (imageView3 != null) {
                                i = R.id.iv_icon;
                                ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_icon);
                                if (imageView4 != null) {
                                    i = R.id.ll_bottom;
                                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_bottom);
                                    if (linearLayout != null) {
                                        i = R.id.ll_card;
                                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_card);
                                        if (linearLayout2 != null) {
                                            i = R.id.spacer_bottom;
                                            Space space = (Space) ViewBindings.findChildViewById(view, R.id.spacer_bottom);
                                            if (space != null) {
                                                i = R.id.spacer_top;
                                                Space space2 = (Space) ViewBindings.findChildViewById(view, R.id.spacer_top);
                                                if (space2 != null) {
                                                    i = R.id.tv_bottom_title;
                                                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_bottom_title);
                                                    if (textView != null) {
                                                        i = R.id.tv_step;
                                                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_step);
                                                        if (textView2 != null) {
                                                            i = R.id.tv_subtitle;
                                                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_subtitle);
                                                            if (textView3 != null) {
                                                                i = R.id.tv_title;
                                                                TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                                                                if (textView4 != null) {
                                                                    i = R.id.view_ll_card_guide;
                                                                    View viewFindChildViewById2 = ViewBindings.findChildViewById(view, R.id.view_ll_card_guide);
                                                                    if (viewFindChildViewById2 != null) {
                                                                        return new ItemRvStepActionBinding((ConstraintLayout) view, viewFindChildViewById, constraintLayout, guideline, imageView, imageView2, imageView3, imageView4, linearLayout, linearLayout2, space, space2, textView, textView2, textView3, textView4, viewFindChildViewById2);
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
                        }
                    }
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static ItemRvStepActionBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_rv_step_action, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static ItemRvStepActionBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
