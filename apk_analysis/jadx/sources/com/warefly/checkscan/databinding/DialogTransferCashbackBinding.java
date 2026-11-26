package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.textfield.TextInputEditText;
import com.google.android.material.textfield.TextInputLayout;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.LoadingButton;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class DialogTransferCashbackBinding implements ViewBinding {
    public final ImageView btnClose;
    public final LoadingButton btnTransfer;
    public final LayoutCouponPromocodesBinding couponMetroView;
    public final TextInputEditText etPhone;
    public final TextInputEditText etSum;
    public final TextInputEditText etTransferDestination;
    public final LinearLayout layoutHint;
    private final ConstraintLayout rootView;
    public final RecyclerView rvPromocodes;
    public final TextInputLayout tilPhone;
    public final TextInputLayout tilSum;
    public final TextInputLayout tilTransferDestination;
    public final TextView tvDescription;
    public final TextView tvHintPhone;
    public final TextView tvHintTransferPhone;
    public final TextView tvRules;
    public final TextView tvTitle;
    public final View view;
    public final View view2;
    public final View view3;

    private DialogTransferCashbackBinding(ConstraintLayout constraintLayout, ImageView imageView, LoadingButton loadingButton, LayoutCouponPromocodesBinding layoutCouponPromocodesBinding, TextInputEditText textInputEditText, TextInputEditText textInputEditText2, TextInputEditText textInputEditText3, LinearLayout linearLayout, RecyclerView recyclerView, TextInputLayout textInputLayout, TextInputLayout textInputLayout2, TextInputLayout textInputLayout3, TextView textView, TextView textView2, TextView textView3, TextView textView4, TextView textView5, View view, View view2, View view3) {
        this.rootView = constraintLayout;
        this.btnClose = imageView;
        this.btnTransfer = loadingButton;
        this.couponMetroView = layoutCouponPromocodesBinding;
        this.etPhone = textInputEditText;
        this.etSum = textInputEditText2;
        this.etTransferDestination = textInputEditText3;
        this.layoutHint = linearLayout;
        this.rvPromocodes = recyclerView;
        this.tilPhone = textInputLayout;
        this.tilSum = textInputLayout2;
        this.tilTransferDestination = textInputLayout3;
        this.tvDescription = textView;
        this.tvHintPhone = textView2;
        this.tvHintTransferPhone = textView3;
        this.tvRules = textView4;
        this.tvTitle = textView5;
        this.view = view;
        this.view2 = view2;
        this.view3 = view3;
    }

    public static DialogTransferCashbackBinding bind(View view) {
        int i = R.id.btn_close;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.btn_close);
        if (imageView != null) {
            i = R.id.btn_transfer;
            LoadingButton loadingButton = (LoadingButton) ViewBindings.findChildViewById(view, R.id.btn_transfer);
            if (loadingButton != null) {
                i = R.id.coupon_metro_view;
                View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.coupon_metro_view);
                if (viewFindChildViewById != null) {
                    LayoutCouponPromocodesBinding layoutCouponPromocodesBindingBind = LayoutCouponPromocodesBinding.bind(viewFindChildViewById);
                    i = R.id.et_phone;
                    TextInputEditText textInputEditText = (TextInputEditText) ViewBindings.findChildViewById(view, R.id.et_phone);
                    if (textInputEditText != null) {
                        i = R.id.et_sum;
                        TextInputEditText textInputEditText2 = (TextInputEditText) ViewBindings.findChildViewById(view, R.id.et_sum);
                        if (textInputEditText2 != null) {
                            i = R.id.et_transfer_destination;
                            TextInputEditText textInputEditText3 = (TextInputEditText) ViewBindings.findChildViewById(view, R.id.et_transfer_destination);
                            if (textInputEditText3 != null) {
                                i = R.id.layout_hint;
                                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.layout_hint);
                                if (linearLayout != null) {
                                    i = R.id.rv_promocodes;
                                    RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rv_promocodes);
                                    if (recyclerView != null) {
                                        i = R.id.til_phone;
                                        TextInputLayout textInputLayout = (TextInputLayout) ViewBindings.findChildViewById(view, R.id.til_phone);
                                        if (textInputLayout != null) {
                                            i = R.id.til_sum;
                                            TextInputLayout textInputLayout2 = (TextInputLayout) ViewBindings.findChildViewById(view, R.id.til_sum);
                                            if (textInputLayout2 != null) {
                                                i = R.id.til_transfer_destination;
                                                TextInputLayout textInputLayout3 = (TextInputLayout) ViewBindings.findChildViewById(view, R.id.til_transfer_destination);
                                                if (textInputLayout3 != null) {
                                                    i = R.id.tv_description;
                                                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_description);
                                                    if (textView != null) {
                                                        i = R.id.tv_hint_phone;
                                                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_hint_phone);
                                                        if (textView2 != null) {
                                                            i = R.id.tv_hint_transfer_phone;
                                                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_hint_transfer_phone);
                                                            if (textView3 != null) {
                                                                i = R.id.tv_rules;
                                                                TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_rules);
                                                                if (textView4 != null) {
                                                                    i = R.id.tv_title;
                                                                    TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                                                                    if (textView5 != null) {
                                                                        i = R.id.view;
                                                                        View viewFindChildViewById2 = ViewBindings.findChildViewById(view, R.id.view);
                                                                        if (viewFindChildViewById2 != null) {
                                                                            i = R.id.view2;
                                                                            View viewFindChildViewById3 = ViewBindings.findChildViewById(view, R.id.view2);
                                                                            if (viewFindChildViewById3 != null) {
                                                                                i = R.id.view3;
                                                                                View viewFindChildViewById4 = ViewBindings.findChildViewById(view, R.id.view3);
                                                                                if (viewFindChildViewById4 != null) {
                                                                                    return new DialogTransferCashbackBinding((ConstraintLayout) view, imageView, loadingButton, layoutCouponPromocodesBindingBind, textInputEditText, textInputEditText2, textInputEditText3, linearLayout, recyclerView, textInputLayout, textInputLayout2, textInputLayout3, textView, textView2, textView3, textView4, textView5, viewFindChildViewById2, viewFindChildViewById3, viewFindChildViewById4);
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

    public static DialogTransferCashbackBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_transfer_cashback, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static DialogTransferCashbackBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
