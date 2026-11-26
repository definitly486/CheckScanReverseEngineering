package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemRvPromoSelectCardTagsBinding implements ViewBinding {
    private final RecyclerView rootView;
    public final RecyclerView rvTags;

    private ItemRvPromoSelectCardTagsBinding(RecyclerView recyclerView, RecyclerView recyclerView2) {
        this.rootView = recyclerView;
        this.rvTags = recyclerView2;
    }

    public static ItemRvPromoSelectCardTagsBinding bind(View view) {
        if (view != null) {
            RecyclerView recyclerView = (RecyclerView) view;
            return new ItemRvPromoSelectCardTagsBinding(recyclerView, recyclerView);
        }
        o2.d("rootView");
        return null;
    }

    public static ItemRvPromoSelectCardTagsBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_rv_promo_select_card_tags, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public RecyclerView getRoot() {
        return this.rootView;
    }

    public static ItemRvPromoSelectCardTagsBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
