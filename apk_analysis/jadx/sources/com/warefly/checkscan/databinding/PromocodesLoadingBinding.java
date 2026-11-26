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
public final class PromocodesLoadingBinding implements ViewBinding {
    private final ShimmerFrameLayout rootView;
    public final View viewFifthPromocode;
    public final View viewFirstPromocode;
    public final View viewForthPromocode;
    public final View viewSecondPromocode;
    public final View viewSixthPromocode;
    public final View viewThirdPromocode;

    private PromocodesLoadingBinding(ShimmerFrameLayout shimmerFrameLayout, View view, View view2, View view3, View view4, View view5, View view6) {
        this.rootView = shimmerFrameLayout;
        this.viewFifthPromocode = view;
        this.viewFirstPromocode = view2;
        this.viewForthPromocode = view3;
        this.viewSecondPromocode = view4;
        this.viewSixthPromocode = view5;
        this.viewThirdPromocode = view6;
    }

    public static PromocodesLoadingBinding bind(View view) {
        int i = R.id.view_fifth_promocode;
        View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.view_fifth_promocode);
        if (viewFindChildViewById != null) {
            i = R.id.view_first_promocode;
            View viewFindChildViewById2 = ViewBindings.findChildViewById(view, R.id.view_first_promocode);
            if (viewFindChildViewById2 != null) {
                i = R.id.view_forth_promocode;
                View viewFindChildViewById3 = ViewBindings.findChildViewById(view, R.id.view_forth_promocode);
                if (viewFindChildViewById3 != null) {
                    i = R.id.view_second_promocode;
                    View viewFindChildViewById4 = ViewBindings.findChildViewById(view, R.id.view_second_promocode);
                    if (viewFindChildViewById4 != null) {
                        i = R.id.view_sixth_promocode;
                        View viewFindChildViewById5 = ViewBindings.findChildViewById(view, R.id.view_sixth_promocode);
                        if (viewFindChildViewById5 != null) {
                            i = R.id.view_third_promocode;
                            View viewFindChildViewById6 = ViewBindings.findChildViewById(view, R.id.view_third_promocode);
                            if (viewFindChildViewById6 != null) {
                                return new PromocodesLoadingBinding((ShimmerFrameLayout) view, viewFindChildViewById, viewFindChildViewById2, viewFindChildViewById3, viewFindChildViewById4, viewFindChildViewById5, viewFindChildViewById6);
                            }
                        }
                    }
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static PromocodesLoadingBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.promocodes_loading, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ShimmerFrameLayout getRoot() {
        return this.rootView;
    }

    public static PromocodesLoadingBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
