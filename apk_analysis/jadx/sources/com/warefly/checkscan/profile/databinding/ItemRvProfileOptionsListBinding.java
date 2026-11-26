package com.warefly.checkscan.profile.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.card.MaterialCardView;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemRvProfileOptionsListBinding implements ViewBinding {
    private final MaterialCardView rootView;
    public final RecyclerView rvOptions;

    private ItemRvProfileOptionsListBinding(MaterialCardView materialCardView, RecyclerView recyclerView) {
        this.rootView = materialCardView;
        this.rvOptions = recyclerView;
    }

    public static ItemRvProfileOptionsListBinding bind(View view) {
        RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rv_options);
        if (recyclerView != null) {
            return new ItemRvProfileOptionsListBinding((MaterialCardView) view, recyclerView);
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.rv_options)));
        return null;
    }

    public static ItemRvProfileOptionsListBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_rv_profile_options_list, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public MaterialCardView getRoot() {
        return this.rootView;
    }

    public static ItemRvProfileOptionsListBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
