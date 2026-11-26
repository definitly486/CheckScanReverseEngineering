package com.warefly.checkscan.core.ui.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import com.warefly.checkscan.shimmer.ShimmerFrameLayout;
import defpackage.o2;

/* JADX INFO: loaded from: classes.dex */
public final class ItemRvPlaceholderDelegateBinding implements ViewBinding {
    public final FrameLayout placeholder;
    private final ShimmerFrameLayout rootView;

    private ItemRvPlaceholderDelegateBinding(ShimmerFrameLayout shimmerFrameLayout, FrameLayout frameLayout) {
        this.rootView = shimmerFrameLayout;
        this.placeholder = frameLayout;
    }

    public static ItemRvPlaceholderDelegateBinding bind(View view) {
        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.placeholder);
        if (frameLayout != null) {
            return new ItemRvPlaceholderDelegateBinding((ShimmerFrameLayout) view, frameLayout);
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.placeholder)));
        return null;
    }

    public static ItemRvPlaceholderDelegateBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_rv_placeholder_delegate, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ShimmerFrameLayout getRoot() {
        return this.rootView;
    }

    public static ItemRvPlaceholderDelegateBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
