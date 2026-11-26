package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import com.warefly.checkscan.shimmer.ShimmerFrameLayout;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class LoadingBonusesSectionBinding implements ViewBinding {
    private final ShimmerFrameLayout rootView;
    public final ShimmerFrameLayout skeletonLayout;
    public final View viewSkeleton;

    private LoadingBonusesSectionBinding(ShimmerFrameLayout shimmerFrameLayout, ShimmerFrameLayout shimmerFrameLayout2, View view) {
        this.rootView = shimmerFrameLayout;
        this.skeletonLayout = shimmerFrameLayout2;
        this.viewSkeleton = view;
    }

    public static LoadingBonusesSectionBinding bind(View view) {
        ShimmerFrameLayout shimmerFrameLayout = (ShimmerFrameLayout) view;
        View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.view_skeleton);
        if (viewFindChildViewById != null) {
            return new LoadingBonusesSectionBinding(shimmerFrameLayout, shimmerFrameLayout, viewFindChildViewById);
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.view_skeleton)));
        return null;
    }

    public static LoadingBonusesSectionBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.loading_bonuses_section, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ShimmerFrameLayout getRoot() {
        return this.rootView;
    }

    public static LoadingBonusesSectionBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
