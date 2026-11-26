package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import com.warefly.checkscan.shimmer.ShimmerFrameLayout;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemRvBalanceLoadingManagmentCardBinding implements ViewBinding {
    private final ConstraintLayout rootView;
    public final ShimmerFrameLayout shimmerFirst;
    public final ShimmerFrameLayout shimmerHeader;
    public final ShimmerFrameLayout shimmerSecond;
    public final ShimmerFrameLayout shimmerThird;

    private ItemRvBalanceLoadingManagmentCardBinding(ConstraintLayout constraintLayout, ShimmerFrameLayout shimmerFrameLayout, ShimmerFrameLayout shimmerFrameLayout2, ShimmerFrameLayout shimmerFrameLayout3, ShimmerFrameLayout shimmerFrameLayout4) {
        this.rootView = constraintLayout;
        this.shimmerFirst = shimmerFrameLayout;
        this.shimmerHeader = shimmerFrameLayout2;
        this.shimmerSecond = shimmerFrameLayout3;
        this.shimmerThird = shimmerFrameLayout4;
    }

    public static ItemRvBalanceLoadingManagmentCardBinding bind(View view) {
        int i = R.id.shimmer_first;
        ShimmerFrameLayout shimmerFrameLayout = (ShimmerFrameLayout) ViewBindings.findChildViewById(view, R.id.shimmer_first);
        if (shimmerFrameLayout != null) {
            i = R.id.shimmer_header;
            ShimmerFrameLayout shimmerFrameLayout2 = (ShimmerFrameLayout) ViewBindings.findChildViewById(view, R.id.shimmer_header);
            if (shimmerFrameLayout2 != null) {
                i = R.id.shimmer_second;
                ShimmerFrameLayout shimmerFrameLayout3 = (ShimmerFrameLayout) ViewBindings.findChildViewById(view, R.id.shimmer_second);
                if (shimmerFrameLayout3 != null) {
                    i = R.id.shimmer_third;
                    ShimmerFrameLayout shimmerFrameLayout4 = (ShimmerFrameLayout) ViewBindings.findChildViewById(view, R.id.shimmer_third);
                    if (shimmerFrameLayout4 != null) {
                        return new ItemRvBalanceLoadingManagmentCardBinding((ConstraintLayout) view, shimmerFrameLayout, shimmerFrameLayout2, shimmerFrameLayout3, shimmerFrameLayout4);
                    }
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static ItemRvBalanceLoadingManagmentCardBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_rv_balance_loading_managment_card, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static ItemRvBalanceLoadingManagmentCardBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
