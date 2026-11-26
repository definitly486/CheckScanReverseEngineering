package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemRvBalanceWithdrawAnonBinding implements ViewBinding {
    public final ImageView ivIcon;
    public final ImageView ivTransferArrow;
    private final FrameLayout rootView;
    public final AppCompatTextView tvTitle;

    private ItemRvBalanceWithdrawAnonBinding(FrameLayout frameLayout, ImageView imageView, ImageView imageView2, AppCompatTextView appCompatTextView) {
        this.rootView = frameLayout;
        this.ivIcon = imageView;
        this.ivTransferArrow = imageView2;
        this.tvTitle = appCompatTextView;
    }

    public static ItemRvBalanceWithdrawAnonBinding bind(View view) {
        int i = R.id.iv_icon;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_icon);
        if (imageView != null) {
            i = R.id.iv_transfer_arrow;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_transfer_arrow);
            if (imageView2 != null) {
                i = R.id.tv_title;
                AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                if (appCompatTextView != null) {
                    return new ItemRvBalanceWithdrawAnonBinding((FrameLayout) view, imageView, imageView2, appCompatTextView);
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static ItemRvBalanceWithdrawAnonBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_rv_balance_withdraw_anon, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public FrameLayout getRoot() {
        return this.rootView;
    }

    public static ItemRvBalanceWithdrawAnonBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
