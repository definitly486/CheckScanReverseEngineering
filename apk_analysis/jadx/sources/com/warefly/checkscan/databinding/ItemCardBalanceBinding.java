package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemCardBalanceBinding implements ViewBinding {
    public final ItemStatusFailedBinding layoutStatusFailed;
    private final LinearLayout rootView;
    public final TextView tvAboutAccrualCashbackBalance;
    public final TextView tvBalanceUser;

    private ItemCardBalanceBinding(LinearLayout linearLayout, ItemStatusFailedBinding itemStatusFailedBinding, TextView textView, TextView textView2) {
        this.rootView = linearLayout;
        this.layoutStatusFailed = itemStatusFailedBinding;
        this.tvAboutAccrualCashbackBalance = textView;
        this.tvBalanceUser = textView2;
    }

    public static ItemCardBalanceBinding bind(View view) {
        int i = R.id.layout_status_failed;
        View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.layout_status_failed);
        if (viewFindChildViewById != null) {
            ItemStatusFailedBinding itemStatusFailedBindingBind = ItemStatusFailedBinding.bind(viewFindChildViewById);
            int i2 = R.id.tv_about_accrual_cashback_balance;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_about_accrual_cashback_balance);
            if (textView != null) {
                i2 = R.id.tv_balance_user;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_balance_user);
                if (textView2 != null) {
                    return new ItemCardBalanceBinding((LinearLayout) view, itemStatusFailedBindingBind, textView, textView2);
                }
            }
            i = i2;
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static ItemCardBalanceBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_card_balance, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static ItemCardBalanceBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
