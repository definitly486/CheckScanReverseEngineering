package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemRvBalanceWithdrawMethodBinding implements ViewBinding {
    public final ImageView ivIcon;
    public final ImageView ivTransferArrow;
    private final LinearLayout rootView;
    public final AppCompatTextView tvDescription;
    public final AppCompatTextView tvTitle;

    private ItemRvBalanceWithdrawMethodBinding(LinearLayout linearLayout, ImageView imageView, ImageView imageView2, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2) {
        this.rootView = linearLayout;
        this.ivIcon = imageView;
        this.ivTransferArrow = imageView2;
        this.tvDescription = appCompatTextView;
        this.tvTitle = appCompatTextView2;
    }

    public static ItemRvBalanceWithdrawMethodBinding bind(View view) {
        int i = R.id.iv_icon;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_icon);
        if (imageView != null) {
            i = R.id.iv_transfer_arrow;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_transfer_arrow);
            if (imageView2 != null) {
                i = R.id.tv_description;
                AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, R.id.tv_description);
                if (appCompatTextView != null) {
                    i = R.id.tv_title;
                    AppCompatTextView appCompatTextView2 = (AppCompatTextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                    if (appCompatTextView2 != null) {
                        return new ItemRvBalanceWithdrawMethodBinding((LinearLayout) view, imageView, imageView2, appCompatTextView, appCompatTextView2);
                    }
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static ItemRvBalanceWithdrawMethodBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_rv_balance_withdraw_method, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static ItemRvBalanceWithdrawMethodBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
