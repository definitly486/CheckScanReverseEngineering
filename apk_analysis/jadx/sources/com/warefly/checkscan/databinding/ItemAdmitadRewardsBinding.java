package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemAdmitadRewardsBinding implements ViewBinding {
    public final ImageView btnMoreTerms;
    public final View overlapShadow;
    private final ConstraintLayout rootView;
    public final RecyclerView rvTerms;

    private ItemAdmitadRewardsBinding(ConstraintLayout constraintLayout, ImageView imageView, View view, RecyclerView recyclerView) {
        this.rootView = constraintLayout;
        this.btnMoreTerms = imageView;
        this.overlapShadow = view;
        this.rvTerms = recyclerView;
    }

    public static ItemAdmitadRewardsBinding bind(View view) {
        int i = R.id.btn_more_terms;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.btn_more_terms);
        if (imageView != null) {
            i = R.id.overlap_shadow;
            View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.overlap_shadow);
            if (viewFindChildViewById != null) {
                i = R.id.rv_terms;
                RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rv_terms);
                if (recyclerView != null) {
                    return new ItemAdmitadRewardsBinding((ConstraintLayout) view, imageView, viewFindChildViewById, recyclerView);
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static ItemAdmitadRewardsBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_admitad_rewards, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static ItemAdmitadRewardsBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
