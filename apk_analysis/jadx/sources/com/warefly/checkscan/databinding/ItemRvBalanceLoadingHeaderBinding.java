package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemRvBalanceLoadingHeaderBinding implements ViewBinding {
    private final LinearLayout rootView;

    private ItemRvBalanceLoadingHeaderBinding(LinearLayout linearLayout) {
        this.rootView = linearLayout;
    }

    public static ItemRvBalanceLoadingHeaderBinding bind(View view) {
        if (view != null) {
            return new ItemRvBalanceLoadingHeaderBinding((LinearLayout) view);
        }
        o2.d("rootView");
        return null;
    }

    public static ItemRvBalanceLoadingHeaderBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_rv_balance_loading_header, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static ItemRvBalanceLoadingHeaderBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
