package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import androidx.constraintlayout.widget.Guideline;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.imageview.ShapeableImageView;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemBalanceInstaCashbackBinding implements ViewBinding {
    public final AppCompatTextView btnActionThanks;
    public final AppCompatTextView btnActionTop;
    public final AppCompatTextView btnLeftBottom;
    public final AppCompatTextView btnLeftBottomSecond;
    public final TextView btnRightBottom;
    public final AppCompatTextView btnRightBottomSecond;
    public final Guideline glStartCash;
    public final Group groupBottomCaseSecond;
    public final Group groupBottomFirst;
    public final Group groupThanks;
    public final ImageView ivDot;
    public final ShapeableImageView ivMarketLogo;
    public final ConstraintLayout layoutHeader;
    private final ConstraintLayout rootView;
    public final AppCompatTextView tvDescriptionSecond;
    public final AppCompatTextView tvSumCashback;
    public final AppCompatTextView tvThanksTitle;
    public final AppCompatTextView tvTitleCaseFirst;
    public final AppCompatTextView tvTitleSecond;

    private ItemBalanceInstaCashbackBinding(ConstraintLayout constraintLayout, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3, AppCompatTextView appCompatTextView4, TextView textView, AppCompatTextView appCompatTextView5, Guideline guideline, Group group, Group group2, Group group3, ImageView imageView, ShapeableImageView shapeableImageView, ConstraintLayout constraintLayout2, AppCompatTextView appCompatTextView6, AppCompatTextView appCompatTextView7, AppCompatTextView appCompatTextView8, AppCompatTextView appCompatTextView9, AppCompatTextView appCompatTextView10) {
        this.rootView = constraintLayout;
        this.btnActionThanks = appCompatTextView;
        this.btnActionTop = appCompatTextView2;
        this.btnLeftBottom = appCompatTextView3;
        this.btnLeftBottomSecond = appCompatTextView4;
        this.btnRightBottom = textView;
        this.btnRightBottomSecond = appCompatTextView5;
        this.glStartCash = guideline;
        this.groupBottomCaseSecond = group;
        this.groupBottomFirst = group2;
        this.groupThanks = group3;
        this.ivDot = imageView;
        this.ivMarketLogo = shapeableImageView;
        this.layoutHeader = constraintLayout2;
        this.tvDescriptionSecond = appCompatTextView6;
        this.tvSumCashback = appCompatTextView7;
        this.tvThanksTitle = appCompatTextView8;
        this.tvTitleCaseFirst = appCompatTextView9;
        this.tvTitleSecond = appCompatTextView10;
    }

    public static ItemBalanceInstaCashbackBinding bind(View view) {
        int i = R.id.btn_action_thanks;
        AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, R.id.btn_action_thanks);
        if (appCompatTextView != null) {
            i = R.id.btn_action_top;
            AppCompatTextView appCompatTextView2 = (AppCompatTextView) ViewBindings.findChildViewById(view, R.id.btn_action_top);
            if (appCompatTextView2 != null) {
                i = R.id.btn_left_bottom;
                AppCompatTextView appCompatTextView3 = (AppCompatTextView) ViewBindings.findChildViewById(view, R.id.btn_left_bottom);
                if (appCompatTextView3 != null) {
                    i = R.id.btn_left_bottom_second;
                    AppCompatTextView appCompatTextView4 = (AppCompatTextView) ViewBindings.findChildViewById(view, R.id.btn_left_bottom_second);
                    if (appCompatTextView4 != null) {
                        i = R.id.btn_right_bottom;
                        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btn_right_bottom);
                        if (textView != null) {
                            i = R.id.btn_right_bottom_second;
                            AppCompatTextView appCompatTextView5 = (AppCompatTextView) ViewBindings.findChildViewById(view, R.id.btn_right_bottom_second);
                            if (appCompatTextView5 != null) {
                                i = R.id.gl_start_cash;
                                Guideline guideline = (Guideline) ViewBindings.findChildViewById(view, R.id.gl_start_cash);
                                if (guideline != null) {
                                    i = R.id.group_bottom_case_second;
                                    Group group = (Group) ViewBindings.findChildViewById(view, R.id.group_bottom_case_second);
                                    if (group != null) {
                                        i = R.id.group_bottom_first;
                                        Group group2 = (Group) ViewBindings.findChildViewById(view, R.id.group_bottom_first);
                                        if (group2 != null) {
                                            i = R.id.group_thanks;
                                            Group group3 = (Group) ViewBindings.findChildViewById(view, R.id.group_thanks);
                                            if (group3 != null) {
                                                i = R.id.iv_dot;
                                                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_dot);
                                                if (imageView != null) {
                                                    i = R.id.iv_market_logo;
                                                    ShapeableImageView shapeableImageView = (ShapeableImageView) ViewBindings.findChildViewById(view, R.id.iv_market_logo);
                                                    if (shapeableImageView != null) {
                                                        i = R.id.layout_header;
                                                        ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(view, R.id.layout_header);
                                                        if (constraintLayout != null) {
                                                            i = R.id.tv_description_second;
                                                            AppCompatTextView appCompatTextView6 = (AppCompatTextView) ViewBindings.findChildViewById(view, R.id.tv_description_second);
                                                            if (appCompatTextView6 != null) {
                                                                i = R.id.tv_sum_cashback;
                                                                AppCompatTextView appCompatTextView7 = (AppCompatTextView) ViewBindings.findChildViewById(view, R.id.tv_sum_cashback);
                                                                if (appCompatTextView7 != null) {
                                                                    i = R.id.tv_thanks_title;
                                                                    AppCompatTextView appCompatTextView8 = (AppCompatTextView) ViewBindings.findChildViewById(view, R.id.tv_thanks_title);
                                                                    if (appCompatTextView8 != null) {
                                                                        i = R.id.tv_title_case_first;
                                                                        AppCompatTextView appCompatTextView9 = (AppCompatTextView) ViewBindings.findChildViewById(view, R.id.tv_title_case_first);
                                                                        if (appCompatTextView9 != null) {
                                                                            i = R.id.tv_title_second;
                                                                            AppCompatTextView appCompatTextView10 = (AppCompatTextView) ViewBindings.findChildViewById(view, R.id.tv_title_second);
                                                                            if (appCompatTextView10 != null) {
                                                                                return new ItemBalanceInstaCashbackBinding((ConstraintLayout) view, appCompatTextView, appCompatTextView2, appCompatTextView3, appCompatTextView4, textView, appCompatTextView5, guideline, group, group2, group3, imageView, shapeableImageView, constraintLayout, appCompatTextView6, appCompatTextView7, appCompatTextView8, appCompatTextView9, appCompatTextView10);
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
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static ItemBalanceInstaCashbackBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_balance_insta_cashback, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static ItemBalanceInstaCashbackBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
