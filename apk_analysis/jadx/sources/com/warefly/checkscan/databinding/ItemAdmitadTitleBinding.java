package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.Barrier;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemAdmitadTitleBinding implements ViewBinding {
    public final Barrier barrier;
    public final Barrier barrier2;
    public final TextView btnCheckCashback;
    public final TextView btnGoShopping;
    public final AppCompatTextView btnMoreCashbackDescription;
    public final ImageView icRuIcon;
    public final LayoutPowercodeDescriptionBinding incldLayoutPowercodeHint;
    public final ImageView ivBanner;
    public final ImageView ivShop;
    public final ConstraintLayout layoutPromo;
    public final LinearLayout layoutRedirectHint;
    private final ConstraintLayout rootView;
    public final TextView tvCashbackTitle;
    public final TextView tvCashbackValue;
    public final TextView tvDescription;
    public final TextView tvExpirationDate;
    public final TextView tvFixedCashback;
    public final AppCompatTextView tvOfd;
    public final TextView tvPromo;
    public final TextView tvRedirectHint;
    public final TextView tvTitle;
    public final ItemAdmitadRewardsBinding viewRewards;

    private ItemAdmitadTitleBinding(ConstraintLayout constraintLayout, Barrier barrier, Barrier barrier2, TextView textView, TextView textView2, AppCompatTextView appCompatTextView, ImageView imageView, LayoutPowercodeDescriptionBinding layoutPowercodeDescriptionBinding, ImageView imageView2, ImageView imageView3, ConstraintLayout constraintLayout2, LinearLayout linearLayout, TextView textView3, TextView textView4, TextView textView5, TextView textView6, TextView textView7, AppCompatTextView appCompatTextView2, TextView textView8, TextView textView9, TextView textView10, ItemAdmitadRewardsBinding itemAdmitadRewardsBinding) {
        this.rootView = constraintLayout;
        this.barrier = barrier;
        this.barrier2 = barrier2;
        this.btnCheckCashback = textView;
        this.btnGoShopping = textView2;
        this.btnMoreCashbackDescription = appCompatTextView;
        this.icRuIcon = imageView;
        this.incldLayoutPowercodeHint = layoutPowercodeDescriptionBinding;
        this.ivBanner = imageView2;
        this.ivShop = imageView3;
        this.layoutPromo = constraintLayout2;
        this.layoutRedirectHint = linearLayout;
        this.tvCashbackTitle = textView3;
        this.tvCashbackValue = textView4;
        this.tvDescription = textView5;
        this.tvExpirationDate = textView6;
        this.tvFixedCashback = textView7;
        this.tvOfd = appCompatTextView2;
        this.tvPromo = textView8;
        this.tvRedirectHint = textView9;
        this.tvTitle = textView10;
        this.viewRewards = itemAdmitadRewardsBinding;
    }

    public static ItemAdmitadTitleBinding bind(View view) {
        int i = R.id.barrier;
        Barrier barrier = (Barrier) ViewBindings.findChildViewById(view, R.id.barrier);
        if (barrier != null) {
            i = R.id.barrier2;
            Barrier barrier2 = (Barrier) ViewBindings.findChildViewById(view, R.id.barrier2);
            if (barrier2 != null) {
                i = R.id.btn_check_cashback;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btn_check_cashback);
                if (textView != null) {
                    i = R.id.btn_go_shopping;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.btn_go_shopping);
                    if (textView2 != null) {
                        i = R.id.btn_more_cashback_description;
                        AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, R.id.btn_more_cashback_description);
                        if (appCompatTextView != null) {
                            i = R.id.ic_ru_icon;
                            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.ic_ru_icon);
                            if (imageView != null) {
                                i = R.id.incld_layout_powercode_hint;
                                View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.incld_layout_powercode_hint);
                                if (viewFindChildViewById != null) {
                                    LayoutPowercodeDescriptionBinding layoutPowercodeDescriptionBindingBind = LayoutPowercodeDescriptionBinding.bind(viewFindChildViewById);
                                    i = R.id.iv_banner;
                                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_banner);
                                    if (imageView2 != null) {
                                        i = R.id.iv_shop;
                                        ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_shop);
                                        if (imageView3 != null) {
                                            i = R.id.layout_promo;
                                            ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(view, R.id.layout_promo);
                                            if (constraintLayout != null) {
                                                i = R.id.layout_redirect_hint;
                                                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.layout_redirect_hint);
                                                if (linearLayout != null) {
                                                    i = R.id.tv_cashback_title;
                                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_cashback_title);
                                                    if (textView3 != null) {
                                                        i = R.id.tv_cashback_value;
                                                        TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_cashback_value);
                                                        if (textView4 != null) {
                                                            i = R.id.tv_description;
                                                            TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_description);
                                                            if (textView5 != null) {
                                                                i = R.id.tv_expiration_date;
                                                                TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_expiration_date);
                                                                if (textView6 != null) {
                                                                    i = R.id.tv_fixed_cashback;
                                                                    TextView textView7 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_fixed_cashback);
                                                                    if (textView7 != null) {
                                                                        i = R.id.tv_ofd;
                                                                        AppCompatTextView appCompatTextView2 = (AppCompatTextView) ViewBindings.findChildViewById(view, R.id.tv_ofd);
                                                                        if (appCompatTextView2 != null) {
                                                                            i = R.id.tv_promo;
                                                                            TextView textView8 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_promo);
                                                                            if (textView8 != null) {
                                                                                i = R.id.tv_redirect_hint;
                                                                                TextView textView9 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_redirect_hint);
                                                                                if (textView9 != null) {
                                                                                    i = R.id.tv_title;
                                                                                    TextView textView10 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                                                                                    if (textView10 != null) {
                                                                                        i = R.id.view_rewards;
                                                                                        View viewFindChildViewById2 = ViewBindings.findChildViewById(view, R.id.view_rewards);
                                                                                        if (viewFindChildViewById2 != null) {
                                                                                            return new ItemAdmitadTitleBinding((ConstraintLayout) view, barrier, barrier2, textView, textView2, appCompatTextView, imageView, layoutPowercodeDescriptionBindingBind, imageView2, imageView3, constraintLayout, linearLayout, textView3, textView4, textView5, textView6, textView7, appCompatTextView2, textView8, textView9, textView10, ItemAdmitadRewardsBinding.bind(viewFindChildViewById2));
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
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static ItemAdmitadTitleBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_admitad_title, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static ItemAdmitadTitleBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
