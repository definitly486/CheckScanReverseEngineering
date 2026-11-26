package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemRvBalanceFooterBinding implements ViewBinding {
    private final View rootView;

    private ItemRvBalanceFooterBinding(View view) {
        this.rootView = view;
    }

    public static ItemRvBalanceFooterBinding bind(View view) {
        if (view != null) {
            return new ItemRvBalanceFooterBinding(view);
        }
        o2.d("rootView");
        return null;
    }

    public static ItemRvBalanceFooterBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_rv_balance_footer, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public View getRoot() {
        return this.rootView;
    }

    public static ItemRvBalanceFooterBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
