package com.warefly.checkscan.tasks.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.R;
import com.warefly.checkscan.shimmer.ShimmerFrameLayout;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemRvTaskBannerLoadingBinding implements ViewBinding {
    private final ShimmerFrameLayout rootView;

    private ItemRvTaskBannerLoadingBinding(ShimmerFrameLayout shimmerFrameLayout) {
        this.rootView = shimmerFrameLayout;
    }

    public static ItemRvTaskBannerLoadingBinding bind(View view) {
        if (view != null) {
            return new ItemRvTaskBannerLoadingBinding((ShimmerFrameLayout) view);
        }
        o2.d("rootView");
        return null;
    }

    public static ItemRvTaskBannerLoadingBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_rv_task_banner_loading, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ShimmerFrameLayout getRoot() {
        return this.rootView;
    }

    public static ItemRvTaskBannerLoadingBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
