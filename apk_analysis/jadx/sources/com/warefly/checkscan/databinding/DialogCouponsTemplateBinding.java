package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class DialogCouponsTemplateBinding implements ViewBinding {
    public final LayoutCouponTransferBinding incldCouponTransferView;
    public final LayoutTransferCongratulationsBinding incldTransferCongratulationView;
    private final ConstraintLayout rootView;
    public final View view;

    private DialogCouponsTemplateBinding(ConstraintLayout constraintLayout, LayoutCouponTransferBinding layoutCouponTransferBinding, LayoutTransferCongratulationsBinding layoutTransferCongratulationsBinding, View view) {
        this.rootView = constraintLayout;
        this.incldCouponTransferView = layoutCouponTransferBinding;
        this.incldTransferCongratulationView = layoutTransferCongratulationsBinding;
        this.view = view;
    }

    public static DialogCouponsTemplateBinding bind(View view) {
        int i = R.id.incld_coupon_transfer_view;
        View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.incld_coupon_transfer_view);
        if (viewFindChildViewById != null) {
            LayoutCouponTransferBinding layoutCouponTransferBindingBind = LayoutCouponTransferBinding.bind(viewFindChildViewById);
            View viewFindChildViewById2 = ViewBindings.findChildViewById(view, R.id.incld_transfer_congratulation_view);
            if (viewFindChildViewById2 != null) {
                LayoutTransferCongratulationsBinding layoutTransferCongratulationsBindingBind = LayoutTransferCongratulationsBinding.bind(viewFindChildViewById2);
                View viewFindChildViewById3 = ViewBindings.findChildViewById(view, R.id.view);
                if (viewFindChildViewById3 != null) {
                    return new DialogCouponsTemplateBinding((ConstraintLayout) view, layoutCouponTransferBindingBind, layoutTransferCongratulationsBindingBind, viewFindChildViewById3);
                }
                i = R.id.view;
            } else {
                i = R.id.incld_transfer_congratulation_view;
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static DialogCouponsTemplateBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_coupons_template, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static DialogCouponsTemplateBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
