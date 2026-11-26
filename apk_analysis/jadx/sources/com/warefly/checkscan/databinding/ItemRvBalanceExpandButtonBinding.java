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
public final class ItemRvBalanceExpandButtonBinding implements ViewBinding {
    public final AppCompatTextView btnExpand;
    private final FrameLayout rootView;

    private ItemRvBalanceExpandButtonBinding(FrameLayout frameLayout, AppCompatTextView appCompatTextView) {
        this.rootView = frameLayout;
        this.btnExpand = appCompatTextView;
    }

    public static ItemRvBalanceExpandButtonBinding bind(View view) {
        AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, R.id.btn_expand);
        if (appCompatTextView != null) {
            return new ItemRvBalanceExpandButtonBinding((FrameLayout) view, appCompatTextView);
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.btn_expand)));
        return null;
    }

    public static ItemRvBalanceExpandButtonBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_rv_balance_expand_button, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public FrameLayout getRoot() {
        return this.rootView;
    }

    public static ItemRvBalanceExpandButtonBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
