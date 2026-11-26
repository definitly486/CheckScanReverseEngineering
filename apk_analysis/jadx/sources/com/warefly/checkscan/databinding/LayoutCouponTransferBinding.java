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
import com.warefly.checkscan.core.ui.LoadingButton;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class LayoutCouponTransferBinding implements ViewBinding {
    public final TextView btnCouponOne;
    public final TextView btnCouponThree;
    public final TextView btnCouponTwo;
    public final TextView btnFullRules;
    public final LoadingButton btnSpendAmount;
    public final ImageView ivIcMetro;
    public final ImageView ivYourBalance;
    private final ConstraintLayout rootView;
    public final TextView tvCouponOne;
    public final TextView tvCouponThree;
    public final TextView tvCouponTwo;
    public final TextView tvDiscountAmount;
    public final TextView tvPerAmount;
    public final TextView tvSelectDiscount;
    public final TextView tvWithdrawCashback;
    public final TextView tvYourBalance;
    public final View viewSeparator;
    public final View viewSeparatorBalance;

    private LayoutCouponTransferBinding(ConstraintLayout constraintLayout, TextView textView, TextView textView2, TextView textView3, TextView textView4, LoadingButton loadingButton, ImageView imageView, ImageView imageView2, TextView textView5, TextView textView6, TextView textView7, TextView textView8, TextView textView9, TextView textView10, TextView textView11, TextView textView12, View view, View view2) {
        this.rootView = constraintLayout;
        this.btnCouponOne = textView;
        this.btnCouponThree = textView2;
        this.btnCouponTwo = textView3;
        this.btnFullRules = textView4;
        this.btnSpendAmount = loadingButton;
        this.ivIcMetro = imageView;
        this.ivYourBalance = imageView2;
        this.tvCouponOne = textView5;
        this.tvCouponThree = textView6;
        this.tvCouponTwo = textView7;
        this.tvDiscountAmount = textView8;
        this.tvPerAmount = textView9;
        this.tvSelectDiscount = textView10;
        this.tvWithdrawCashback = textView11;
        this.tvYourBalance = textView12;
        this.viewSeparator = view;
        this.viewSeparatorBalance = view2;
    }

    public static LayoutCouponTransferBinding bind(View view) {
        int i = R.id.btn_coupon_one;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btn_coupon_one);
        if (textView != null) {
            i = R.id.btn_coupon_three;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.btn_coupon_three);
            if (textView2 != null) {
                i = R.id.btn_coupon_two;
                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.btn_coupon_two);
                if (textView3 != null) {
                    i = R.id.btn_full_rules;
                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.btn_full_rules);
                    if (textView4 != null) {
                        i = R.id.btn_spend_amount;
                        LoadingButton loadingButton = (LoadingButton) ViewBindings.findChildViewById(view, R.id.btn_spend_amount);
                        if (loadingButton != null) {
                            i = R.id.iv_ic_metro;
                            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_ic_metro);
                            if (imageView != null) {
                                i = R.id.iv_your_balance;
                                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_your_balance);
                                if (imageView2 != null) {
                                    i = R.id.tv_coupon_one;
                                    TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_coupon_one);
                                    if (textView5 != null) {
                                        i = R.id.tv_coupon_three;
                                        TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_coupon_three);
                                        if (textView6 != null) {
                                            i = R.id.tv_coupon_two;
                                            TextView textView7 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_coupon_two);
                                            if (textView7 != null) {
                                                i = R.id.tv_discount_amount;
                                                TextView textView8 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_discount_amount);
                                                if (textView8 != null) {
                                                    i = R.id.tv_per_amount;
                                                    TextView textView9 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_per_amount);
                                                    if (textView9 != null) {
                                                        i = R.id.tv_select_discount;
                                                        TextView textView10 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_select_discount);
                                                        if (textView10 != null) {
                                                            i = R.id.tv_withdraw_cashback;
                                                            TextView textView11 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_withdraw_cashback);
                                                            if (textView11 != null) {
                                                                i = R.id.tv_your_balance;
                                                                TextView textView12 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_your_balance);
                                                                if (textView12 != null) {
                                                                    i = R.id.view_separator;
                                                                    View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.view_separator);
                                                                    if (viewFindChildViewById != null) {
                                                                        i = R.id.view_separator_balance;
                                                                        View viewFindChildViewById2 = ViewBindings.findChildViewById(view, R.id.view_separator_balance);
                                                                        if (viewFindChildViewById2 != null) {
                                                                            return new LayoutCouponTransferBinding((ConstraintLayout) view, textView, textView2, textView3, textView4, loadingButton, imageView, imageView2, textView5, textView6, textView7, textView8, textView9, textView10, textView11, textView12, viewFindChildViewById, viewFindChildViewById2);
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

    public static LayoutCouponTransferBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.layout_coupon_transfer, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static LayoutCouponTransferBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
