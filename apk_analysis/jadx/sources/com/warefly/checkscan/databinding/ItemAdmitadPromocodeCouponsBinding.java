package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemAdmitadPromocodeCouponsBinding implements ViewBinding {
    public final TextView btnSeeAll;
    private final ConstraintLayout rootView;
    public final RecyclerView rvAdmitadPromocodes;
    public final TextView tvPromocodesTitle;

    private ItemAdmitadPromocodeCouponsBinding(ConstraintLayout constraintLayout, TextView textView, RecyclerView recyclerView, TextView textView2) {
        this.rootView = constraintLayout;
        this.btnSeeAll = textView;
        this.rvAdmitadPromocodes = recyclerView;
        this.tvPromocodesTitle = textView2;
    }

    public static ItemAdmitadPromocodeCouponsBinding bind(View view) {
        int i = R.id.btn_see_all;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btn_see_all);
        if (textView != null) {
            i = R.id.rv_admitad_promocodes;
            RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rv_admitad_promocodes);
            if (recyclerView != null) {
                i = R.id.tv_promocodes_title;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_promocodes_title);
                if (textView2 != null) {
                    return new ItemAdmitadPromocodeCouponsBinding((ConstraintLayout) view, textView, recyclerView, textView2);
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static ItemAdmitadPromocodeCouponsBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_admitad_promocode_coupons, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static ItemAdmitadPromocodeCouponsBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
