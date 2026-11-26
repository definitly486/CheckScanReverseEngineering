package com.warefly.checkscan.tasks.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemBonusesPointsBinding implements ViewBinding {
    private final ConstraintLayout rootView;
    public final RecyclerView rvBonuses;

    private ItemBonusesPointsBinding(ConstraintLayout constraintLayout, RecyclerView recyclerView) {
        this.rootView = constraintLayout;
        this.rvBonuses = recyclerView;
    }

    public static ItemBonusesPointsBinding bind(View view) {
        RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rv_bonuses);
        if (recyclerView != null) {
            return new ItemBonusesPointsBinding((ConstraintLayout) view, recyclerView);
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.rv_bonuses)));
        return null;
    }

    public static ItemBonusesPointsBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_bonuses_points, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static ItemBonusesPointsBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
