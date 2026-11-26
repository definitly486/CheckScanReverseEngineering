package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemRvBalanceNestedDividerBinding implements ViewBinding {
    private final FrameLayout rootView;

    private ItemRvBalanceNestedDividerBinding(FrameLayout frameLayout) {
        this.rootView = frameLayout;
    }

    public static ItemRvBalanceNestedDividerBinding bind(View view) {
        if (view != null) {
            return new ItemRvBalanceNestedDividerBinding((FrameLayout) view);
        }
        o2.d("rootView");
        return null;
    }

    public static ItemRvBalanceNestedDividerBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_rv_balance_nested_divider, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public FrameLayout getRoot() {
        return this.rootView;
    }

    public static ItemRvBalanceNestedDividerBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
