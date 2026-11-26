package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.R;
import com.warefly.checkscan.shimmer.ShimmerFrameLayout;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class BonusLoadingHugeBinding implements ViewBinding {
    private final ShimmerFrameLayout rootView;

    private BonusLoadingHugeBinding(ShimmerFrameLayout shimmerFrameLayout) {
        this.rootView = shimmerFrameLayout;
    }

    public static BonusLoadingHugeBinding bind(View view) {
        if (view != null) {
            return new BonusLoadingHugeBinding((ShimmerFrameLayout) view);
        }
        o2.d("rootView");
        return null;
    }

    public static BonusLoadingHugeBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.bonus_loading_huge, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ShimmerFrameLayout getRoot() {
        return this.rootView;
    }

    public static BonusLoadingHugeBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
