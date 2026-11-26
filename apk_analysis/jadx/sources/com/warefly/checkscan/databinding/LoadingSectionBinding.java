package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.R;
import com.warefly.checkscan.shimmer.ShimmerFrameLayout;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class LoadingSectionBinding implements ViewBinding {
    private final ShimmerFrameLayout rootView;

    private LoadingSectionBinding(ShimmerFrameLayout shimmerFrameLayout) {
        this.rootView = shimmerFrameLayout;
    }

    public static LoadingSectionBinding bind(View view) {
        if (view != null) {
            return new LoadingSectionBinding((ShimmerFrameLayout) view);
        }
        o2.d("rootView");
        return null;
    }

    public static LoadingSectionBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.loading_section, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ShimmerFrameLayout getRoot() {
        return this.rootView;
    }

    public static LoadingSectionBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
