package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemRvBalanceGetCashButtonBinding implements ViewBinding {
    private final FrameLayout rootView;
    public final AppCompatTextView tvTitle;

    private ItemRvBalanceGetCashButtonBinding(FrameLayout frameLayout, AppCompatTextView appCompatTextView) {
        this.rootView = frameLayout;
        this.tvTitle = appCompatTextView;
    }

    public static ItemRvBalanceGetCashButtonBinding bind(View view) {
        AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, R.id.tv_title);
        if (appCompatTextView != null) {
            return new ItemRvBalanceGetCashButtonBinding((FrameLayout) view, appCompatTextView);
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.tv_title)));
        return null;
    }

    public static ItemRvBalanceGetCashButtonBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_rv_balance_get_cash_button, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public FrameLayout getRoot() {
        return this.rootView;
    }

    public static ItemRvBalanceGetCashButtonBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
