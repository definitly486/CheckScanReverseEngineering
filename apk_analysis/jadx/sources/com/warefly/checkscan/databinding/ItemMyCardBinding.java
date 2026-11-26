package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.Barrier;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Guideline;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.imageview.ShapeableImageView;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemMyCardBinding implements ViewBinding {
    public final Barrier barrier;
    public final TextView btnBannerUprid;
    public final Guideline guideline33;
    public final Guideline guideline66;
    public final ConstraintLayout hardImage;
    public final LayoutActualCardCashbackBinding incldActualCashback;
    public final LayoutCardClosedBinding incldCardClosed;
    public final ItemStatusFailedBinding itemStatusFailed;
    public final ShapeableImageView ivBanner;
    public final ImageView ivHardBanner;
    public final ImageView ivLogo;
    public final ImageView ivMir;
    public final ImageButton ivPlugMirPay;
    public final ImageView ivRequisites;
    public final ImageView ivTopUp;
    public final ImageView ivVirtual;
    public final ConstraintLayout layoutBanner;
    public final ConstraintLayout layoutCardButtons;
    public final ItemFailedWithdrawBinding layoutFailedWithdraw;
    public final ItemPendingButtonWithdrawBinding layoutPendingButtonWithdraw;
    public final ItemPendingCashbackBinding layoutPendingCashback;
    public final FrameLayout layoutStatus;
    public final ItemStatusFormPendingBinding layoutStatusPending;
    public final ItemStatusFormSuccessBinding layoutStatusSuccess;
    private final ConstraintLayout rootView;
    public final RecyclerView rvBanner;
    public final TextView tvAboutAccrual;
    public final TextView tvBannerTitle;
    public final TextView tvCardBalance;
    public final TextView tvCardLastNumber;
    public final TextView tvCardTitle;
    public final TextView tvLimitCard;
    public final TextView tvMyBalanceTitle;
    public final TextView tvPlugMirPay;
    public final TextView tvReplenishmentLabel;

    private ItemMyCardBinding(ConstraintLayout constraintLayout, Barrier barrier, TextView textView, Guideline guideline, Guideline guideline2, ConstraintLayout constraintLayout2, LayoutActualCardCashbackBinding layoutActualCardCashbackBinding, LayoutCardClosedBinding layoutCardClosedBinding, ItemStatusFailedBinding itemStatusFailedBinding, ShapeableImageView shapeableImageView, ImageView imageView, ImageView imageView2, ImageView imageView3, ImageButton imageButton, ImageView imageView4, ImageView imageView5, ImageView imageView6, ConstraintLayout constraintLayout3, ConstraintLayout constraintLayout4, ItemFailedWithdrawBinding itemFailedWithdrawBinding, ItemPendingButtonWithdrawBinding itemPendingButtonWithdrawBinding, ItemPendingCashbackBinding itemPendingCashbackBinding, FrameLayout frameLayout, ItemStatusFormPendingBinding itemStatusFormPendingBinding, ItemStatusFormSuccessBinding itemStatusFormSuccessBinding, RecyclerView recyclerView, TextView textView2, TextView textView3, TextView textView4, TextView textView5, TextView textView6, TextView textView7, TextView textView8, TextView textView9, TextView textView10) {
        this.rootView = constraintLayout;
        this.barrier = barrier;
        this.btnBannerUprid = textView;
        this.guideline33 = guideline;
        this.guideline66 = guideline2;
        this.hardImage = constraintLayout2;
        this.incldActualCashback = layoutActualCardCashbackBinding;
        this.incldCardClosed = layoutCardClosedBinding;
        this.itemStatusFailed = itemStatusFailedBinding;
        this.ivBanner = shapeableImageView;
        this.ivHardBanner = imageView;
        this.ivLogo = imageView2;
        this.ivMir = imageView3;
        this.ivPlugMirPay = imageButton;
        this.ivRequisites = imageView4;
        this.ivTopUp = imageView5;
        this.ivVirtual = imageView6;
        this.layoutBanner = constraintLayout3;
        this.layoutCardButtons = constraintLayout4;
        this.layoutFailedWithdraw = itemFailedWithdrawBinding;
        this.layoutPendingButtonWithdraw = itemPendingButtonWithdrawBinding;
        this.layoutPendingCashback = itemPendingCashbackBinding;
        this.layoutStatus = frameLayout;
        this.layoutStatusPending = itemStatusFormPendingBinding;
        this.layoutStatusSuccess = itemStatusFormSuccessBinding;
        this.rvBanner = recyclerView;
        this.tvAboutAccrual = textView2;
        this.tvBannerTitle = textView3;
        this.tvCardBalance = textView4;
        this.tvCardLastNumber = textView5;
        this.tvCardTitle = textView6;
        this.tvLimitCard = textView7;
        this.tvMyBalanceTitle = textView8;
        this.tvPlugMirPay = textView9;
        this.tvReplenishmentLabel = textView10;
    }

    public static ItemMyCardBinding bind(View view) {
        int i = R.id.barrier;
        Barrier barrier = (Barrier) ViewBindings.findChildViewById(view, R.id.barrier);
        if (barrier != null) {
            i = R.id.btn_banner_uprid;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btn_banner_uprid);
            if (textView != null) {
                i = R.id.guideline_33;
                Guideline guideline = (Guideline) ViewBindings.findChildViewById(view, R.id.guideline_33);
                if (guideline != null) {
                    i = R.id.guideline_66;
                    Guideline guideline2 = (Guideline) ViewBindings.findChildViewById(view, R.id.guideline_66);
                    if (guideline2 != null) {
                        i = R.id.hard_image;
                        ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(view, R.id.hard_image);
                        if (constraintLayout != null) {
                            i = R.id.incld_actual_cashback;
                            View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.incld_actual_cashback);
                            if (viewFindChildViewById != null) {
                                LayoutActualCardCashbackBinding layoutActualCardCashbackBindingBind = LayoutActualCardCashbackBinding.bind(viewFindChildViewById);
                                i = R.id.incld_card_closed;
                                View viewFindChildViewById2 = ViewBindings.findChildViewById(view, R.id.incld_card_closed);
                                if (viewFindChildViewById2 != null) {
                                    LayoutCardClosedBinding layoutCardClosedBindingBind = LayoutCardClosedBinding.bind(viewFindChildViewById2);
                                    i = R.id.item_status_failed;
                                    View viewFindChildViewById3 = ViewBindings.findChildViewById(view, R.id.item_status_failed);
                                    if (viewFindChildViewById3 != null) {
                                        ItemStatusFailedBinding itemStatusFailedBindingBind = ItemStatusFailedBinding.bind(viewFindChildViewById3);
                                        i = R.id.iv_banner;
                                        ShapeableImageView shapeableImageView = (ShapeableImageView) ViewBindings.findChildViewById(view, R.id.iv_banner);
                                        if (shapeableImageView != null) {
                                            i = R.id.iv_hard_banner;
                                            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_hard_banner);
                                            if (imageView != null) {
                                                i = R.id.iv_logo;
                                                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_logo);
                                                if (imageView2 != null) {
                                                    i = R.id.iv_mir;
                                                    ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_mir);
                                                    if (imageView3 != null) {
                                                        i = R.id.iv_plug_mir_pay;
                                                        ImageButton imageButton = (ImageButton) ViewBindings.findChildViewById(view, R.id.iv_plug_mir_pay);
                                                        if (imageButton != null) {
                                                            i = R.id.iv_requisites;
                                                            ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_requisites);
                                                            if (imageView4 != null) {
                                                                i = R.id.iv_top_up;
                                                                ImageView imageView5 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_top_up);
                                                                if (imageView5 != null) {
                                                                    i = R.id.iv_virtual;
                                                                    ImageView imageView6 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_virtual);
                                                                    if (imageView6 != null) {
                                                                        i = R.id.layout_banner;
                                                                        ConstraintLayout constraintLayout2 = (ConstraintLayout) ViewBindings.findChildViewById(view, R.id.layout_banner);
                                                                        if (constraintLayout2 != null) {
                                                                            i = R.id.layout_card_buttons;
                                                                            ConstraintLayout constraintLayout3 = (ConstraintLayout) ViewBindings.findChildViewById(view, R.id.layout_card_buttons);
                                                                            if (constraintLayout3 != null) {
                                                                                i = R.id.layout_failed_withdraw;
                                                                                View viewFindChildViewById4 = ViewBindings.findChildViewById(view, R.id.layout_failed_withdraw);
                                                                                if (viewFindChildViewById4 != null) {
                                                                                    ItemFailedWithdrawBinding itemFailedWithdrawBindingBind = ItemFailedWithdrawBinding.bind(viewFindChildViewById4);
                                                                                    i = R.id.layout_pending_button_withdraw;
                                                                                    View viewFindChildViewById5 = ViewBindings.findChildViewById(view, R.id.layout_pending_button_withdraw);
                                                                                    if (viewFindChildViewById5 != null) {
                                                                                        ItemPendingButtonWithdrawBinding itemPendingButtonWithdrawBindingBind = ItemPendingButtonWithdrawBinding.bind(viewFindChildViewById5);
                                                                                        i = R.id.layout_pending_cashback;
                                                                                        View viewFindChildViewById6 = ViewBindings.findChildViewById(view, R.id.layout_pending_cashback);
                                                                                        if (viewFindChildViewById6 != null) {
                                                                                            ItemPendingCashbackBinding itemPendingCashbackBindingBind = ItemPendingCashbackBinding.bind(viewFindChildViewById6);
                                                                                            i = R.id.layout_status;
                                                                                            FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.layout_status);
                                                                                            if (frameLayout != null) {
                                                                                                i = R.id.layout_status_pending;
                                                                                                View viewFindChildViewById7 = ViewBindings.findChildViewById(view, R.id.layout_status_pending);
                                                                                                if (viewFindChildViewById7 != null) {
                                                                                                    ItemStatusFormPendingBinding itemStatusFormPendingBindingBind = ItemStatusFormPendingBinding.bind(viewFindChildViewById7);
                                                                                                    i = R.id.layout_status_success;
                                                                                                    View viewFindChildViewById8 = ViewBindings.findChildViewById(view, R.id.layout_status_success);
                                                                                                    if (viewFindChildViewById8 != null) {
                                                                                                        ItemStatusFormSuccessBinding itemStatusFormSuccessBindingBind = ItemStatusFormSuccessBinding.bind(viewFindChildViewById8);
                                                                                                        i = R.id.rv_banner;
                                                                                                        RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rv_banner);
                                                                                                        if (recyclerView != null) {
                                                                                                            i = R.id.tv_about_accrual;
                                                                                                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_about_accrual);
                                                                                                            if (textView2 != null) {
                                                                                                                i = R.id.tv_banner_title;
                                                                                                                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_banner_title);
                                                                                                                if (textView3 != null) {
                                                                                                                    i = R.id.tv_card_balance;
                                                                                                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_card_balance);
                                                                                                                    if (textView4 != null) {
                                                                                                                        i = R.id.tv_card_last_number;
                                                                                                                        TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_card_last_number);
                                                                                                                        if (textView5 != null) {
                                                                                                                            i = R.id.tv_card_title;
                                                                                                                            TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_card_title);
                                                                                                                            if (textView6 != null) {
                                                                                                                                i = R.id.tv_limit_card;
                                                                                                                                TextView textView7 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_limit_card);
                                                                                                                                if (textView7 != null) {
                                                                                                                                    i = R.id.tv_my_balance_title;
                                                                                                                                    TextView textView8 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_my_balance_title);
                                                                                                                                    if (textView8 != null) {
                                                                                                                                        i = R.id.tv_plug_mir_pay;
                                                                                                                                        TextView textView9 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_plug_mir_pay);
                                                                                                                                        if (textView9 != null) {
                                                                                                                                            i = R.id.tv_replenishment_label;
                                                                                                                                            TextView textView10 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_replenishment_label);
                                                                                                                                            if (textView10 != null) {
                                                                                                                                                return new ItemMyCardBinding((ConstraintLayout) view, barrier, textView, guideline, guideline2, constraintLayout, layoutActualCardCashbackBindingBind, layoutCardClosedBindingBind, itemStatusFailedBindingBind, shapeableImageView, imageView, imageView2, imageView3, imageButton, imageView4, imageView5, imageView6, constraintLayout2, constraintLayout3, itemFailedWithdrawBindingBind, itemPendingButtonWithdrawBindingBind, itemPendingCashbackBindingBind, frameLayout, itemStatusFormPendingBindingBind, itemStatusFormSuccessBindingBind, recyclerView, textView2, textView3, textView4, textView5, textView6, textView7, textView8, textView9, textView10);
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

    public static ItemMyCardBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_my_card, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static ItemMyCardBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
