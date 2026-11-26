package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.Barrier;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.card.MaterialCardView;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemRvLoanPromoApplyBinding implements ViewBinding {
    public final TextView btnIssueLoan;
    public final Group groupDisclaimers;
    public final ImageView ivBadge;
    public final ImageView ivHeaderLogo;
    public final ImageView ivPskInfo;
    public final LinearLayout llBadge;
    public final LinearLayout llPskContainer;
    public final MaterialCardView mainCard;
    private final ConstraintLayout rootView;
    public final RecyclerView rvInfo;
    public final Barrier topBorderBottom;
    public final TextView tvBadge;
    public final TextView tvBankName;
    public final TextView tvCardType;
    public final TextView tvFooterDisclaimer;
    public final TextView tvPskRate;

    private ItemRvLoanPromoApplyBinding(ConstraintLayout constraintLayout, TextView textView, Group group, ImageView imageView, ImageView imageView2, ImageView imageView3, LinearLayout linearLayout, LinearLayout linearLayout2, MaterialCardView materialCardView, RecyclerView recyclerView, Barrier barrier, TextView textView2, TextView textView3, TextView textView4, TextView textView5, TextView textView6) {
        this.rootView = constraintLayout;
        this.btnIssueLoan = textView;
        this.groupDisclaimers = group;
        this.ivBadge = imageView;
        this.ivHeaderLogo = imageView2;
        this.ivPskInfo = imageView3;
        this.llBadge = linearLayout;
        this.llPskContainer = linearLayout2;
        this.mainCard = materialCardView;
        this.rvInfo = recyclerView;
        this.topBorderBottom = barrier;
        this.tvBadge = textView2;
        this.tvBankName = textView3;
        this.tvCardType = textView4;
        this.tvFooterDisclaimer = textView5;
        this.tvPskRate = textView6;
    }

    public static ItemRvLoanPromoApplyBinding bind(View view) {
        int i = R.id.btn_issue_loan;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btn_issue_loan);
        if (textView != null) {
            i = R.id.group_disclaimers;
            Group group = (Group) ViewBindings.findChildViewById(view, R.id.group_disclaimers);
            if (group != null) {
                i = R.id.iv_badge;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_badge);
                if (imageView != null) {
                    i = R.id.iv_header_logo;
                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_header_logo);
                    if (imageView2 != null) {
                        i = R.id.iv_psk_info;
                        ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_psk_info);
                        if (imageView3 != null) {
                            i = R.id.ll_badge;
                            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_badge);
                            if (linearLayout != null) {
                                i = R.id.ll_psk_container;
                                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_psk_container);
                                if (linearLayout2 != null) {
                                    i = R.id.main_card;
                                    MaterialCardView materialCardView = (MaterialCardView) ViewBindings.findChildViewById(view, R.id.main_card);
                                    if (materialCardView != null) {
                                        i = R.id.rv_info;
                                        RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rv_info);
                                        if (recyclerView != null) {
                                            i = R.id.top_border_bottom;
                                            Barrier barrier = (Barrier) ViewBindings.findChildViewById(view, R.id.top_border_bottom);
                                            if (barrier != null) {
                                                i = R.id.tv_badge;
                                                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_badge);
                                                if (textView2 != null) {
                                                    i = R.id.tv_bank_name;
                                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_bank_name);
                                                    if (textView3 != null) {
                                                        i = R.id.tv_card_type;
                                                        TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_card_type);
                                                        if (textView4 != null) {
                                                            i = R.id.tv_footer_disclaimer;
                                                            TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_footer_disclaimer);
                                                            if (textView5 != null) {
                                                                i = R.id.tv_psk_rate;
                                                                TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_psk_rate);
                                                                if (textView6 != null) {
                                                                    return new ItemRvLoanPromoApplyBinding((ConstraintLayout) view, textView, group, imageView, imageView2, imageView3, linearLayout, linearLayout2, materialCardView, recyclerView, barrier, textView2, textView3, textView4, textView5, textView6);
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

    public static ItemRvLoanPromoApplyBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_rv_loan_promo_apply, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static ItemRvLoanPromoApplyBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
