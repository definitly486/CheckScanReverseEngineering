package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemRvBalanceHeaderBinding implements ViewBinding {
    public final AppCompatTextView btnWithdrawCard;
    public final Group groupPending;
    public final Group groupWaysWithdraw;
    public final ImageView ivWayWithdraw;
    public final ImageView ivWaysWithdrawArrow;
    private final ConstraintLayout rootView;
    public final AppCompatTextView tvBalance;
    public final AppCompatTextView tvPendingCashback;
    public final AppCompatTextView tvPendingSum;
    public final AppCompatTextView tvTitle;
    public final AppCompatTextView tvWaysWithdraw;
    public final View viewWays;

    private ItemRvBalanceHeaderBinding(ConstraintLayout constraintLayout, AppCompatTextView appCompatTextView, Group group, Group group2, ImageView imageView, ImageView imageView2, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3, AppCompatTextView appCompatTextView4, AppCompatTextView appCompatTextView5, AppCompatTextView appCompatTextView6, View view) {
        this.rootView = constraintLayout;
        this.btnWithdrawCard = appCompatTextView;
        this.groupPending = group;
        this.groupWaysWithdraw = group2;
        this.ivWayWithdraw = imageView;
        this.ivWaysWithdrawArrow = imageView2;
        this.tvBalance = appCompatTextView2;
        this.tvPendingCashback = appCompatTextView3;
        this.tvPendingSum = appCompatTextView4;
        this.tvTitle = appCompatTextView5;
        this.tvWaysWithdraw = appCompatTextView6;
        this.viewWays = view;
    }

    public static ItemRvBalanceHeaderBinding bind(View view) {
        int i = R.id.btn_withdraw_card;
        AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, R.id.btn_withdraw_card);
        if (appCompatTextView != null) {
            i = R.id.group_pending;
            Group group = (Group) ViewBindings.findChildViewById(view, R.id.group_pending);
            if (group != null) {
                i = R.id.group_ways_withdraw;
                Group group2 = (Group) ViewBindings.findChildViewById(view, R.id.group_ways_withdraw);
                if (group2 != null) {
                    i = R.id.iv_way_withdraw;
                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_way_withdraw);
                    if (imageView != null) {
                        i = R.id.iv_ways_withdraw_arrow;
                        ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_ways_withdraw_arrow);
                        if (imageView2 != null) {
                            i = R.id.tv_balance;
                            AppCompatTextView appCompatTextView2 = (AppCompatTextView) ViewBindings.findChildViewById(view, R.id.tv_balance);
                            if (appCompatTextView2 != null) {
                                i = R.id.tv_pending_cashback;
                                AppCompatTextView appCompatTextView3 = (AppCompatTextView) ViewBindings.findChildViewById(view, R.id.tv_pending_cashback);
                                if (appCompatTextView3 != null) {
                                    i = R.id.tv_pending_sum;
                                    AppCompatTextView appCompatTextView4 = (AppCompatTextView) ViewBindings.findChildViewById(view, R.id.tv_pending_sum);
                                    if (appCompatTextView4 != null) {
                                        i = R.id.tv_title;
                                        AppCompatTextView appCompatTextView5 = (AppCompatTextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                                        if (appCompatTextView5 != null) {
                                            i = R.id.tv_ways_withdraw;
                                            AppCompatTextView appCompatTextView6 = (AppCompatTextView) ViewBindings.findChildViewById(view, R.id.tv_ways_withdraw);
                                            if (appCompatTextView6 != null) {
                                                i = R.id.view_ways;
                                                View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.view_ways);
                                                if (viewFindChildViewById != null) {
                                                    return new ItemRvBalanceHeaderBinding((ConstraintLayout) view, appCompatTextView, group, group2, imageView, imageView2, appCompatTextView2, appCompatTextView3, appCompatTextView4, appCompatTextView5, appCompatTextView6, viewFindChildViewById);
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

    public static ItemRvBalanceHeaderBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_rv_balance_header, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static ItemRvBalanceHeaderBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
