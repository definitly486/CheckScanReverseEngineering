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
public final class RequisitesLoadingPlaceholderBinding implements ViewBinding {
    public final View placeholderCardNumber;
    public final View placeholderCvv;
    public final View placeholderDate;
    private final ShimmerFrameLayout rootView;

    private RequisitesLoadingPlaceholderBinding(ShimmerFrameLayout shimmerFrameLayout, View view, View view2, View view3) {
        this.rootView = shimmerFrameLayout;
        this.placeholderCardNumber = view;
        this.placeholderCvv = view2;
        this.placeholderDate = view3;
    }

    public static RequisitesLoadingPlaceholderBinding bind(View view) {
        int i = R.id.placeholder_card_number;
        View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.placeholder_card_number);
        if (viewFindChildViewById != null) {
            i = R.id.placeholder_cvv;
            View viewFindChildViewById2 = ViewBindings.findChildViewById(view, R.id.placeholder_cvv);
            if (viewFindChildViewById2 != null) {
                i = R.id.placeholder_date;
                View viewFindChildViewById3 = ViewBindings.findChildViewById(view, R.id.placeholder_date);
                if (viewFindChildViewById3 != null) {
                    return new RequisitesLoadingPlaceholderBinding((ShimmerFrameLayout) view, viewFindChildViewById, viewFindChildViewById2, viewFindChildViewById3);
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static RequisitesLoadingPlaceholderBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.requisites_loading_placeholder, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ShimmerFrameLayout getRoot() {
        return this.rootView;
    }

    public static RequisitesLoadingPlaceholderBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
