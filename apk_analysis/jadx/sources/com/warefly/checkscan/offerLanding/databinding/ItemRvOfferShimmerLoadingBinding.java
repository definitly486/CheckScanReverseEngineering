package com.warefly.checkscan.offerLanding.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.R;
import com.warefly.checkscan.shimmer.ShimmerFrameLayout;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemRvOfferShimmerLoadingBinding implements ViewBinding {
    private final ShimmerFrameLayout rootView;

    private ItemRvOfferShimmerLoadingBinding(ShimmerFrameLayout shimmerFrameLayout) {
        this.rootView = shimmerFrameLayout;
    }

    public static ItemRvOfferShimmerLoadingBinding bind(View view) {
        if (view != null) {
            return new ItemRvOfferShimmerLoadingBinding((ShimmerFrameLayout) view);
        }
        o2.d("rootView");
        return null;
    }

    public static ItemRvOfferShimmerLoadingBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_rv_offer_shimmer_loading, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ShimmerFrameLayout getRoot() {
        return this.rootView;
    }

    public static ItemRvOfferShimmerLoadingBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
