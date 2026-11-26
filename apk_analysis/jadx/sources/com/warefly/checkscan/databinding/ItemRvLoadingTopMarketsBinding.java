package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.R;
import com.warefly.checkscan.shimmer.ShimmerFrameLayout;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemRvLoadingTopMarketsBinding implements ViewBinding {
    private final ShimmerFrameLayout rootView;

    private ItemRvLoadingTopMarketsBinding(ShimmerFrameLayout shimmerFrameLayout) {
        this.rootView = shimmerFrameLayout;
    }

    public static ItemRvLoadingTopMarketsBinding bind(View view) {
        if (view != null) {
            return new ItemRvLoadingTopMarketsBinding((ShimmerFrameLayout) view);
        }
        o2.d("rootView");
        return null;
    }

    public static ItemRvLoadingTopMarketsBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_rv_loading_top_markets, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ShimmerFrameLayout getRoot() {
        return this.rootView;
    }

    public static ItemRvLoadingTopMarketsBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
