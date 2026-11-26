package com.warefly.checkscan.bonuses.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.infinityScrolling.HorizontalCarouselRecyclerViewNew;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemRvSpecialsBinding implements ViewBinding {
    private final HorizontalCarouselRecyclerViewNew rootView;
    public final HorizontalCarouselRecyclerViewNew rvSpecials;

    private ItemRvSpecialsBinding(HorizontalCarouselRecyclerViewNew horizontalCarouselRecyclerViewNew, HorizontalCarouselRecyclerViewNew horizontalCarouselRecyclerViewNew2) {
        this.rootView = horizontalCarouselRecyclerViewNew;
        this.rvSpecials = horizontalCarouselRecyclerViewNew2;
    }

    public static ItemRvSpecialsBinding bind(View view) {
        if (view != null) {
            HorizontalCarouselRecyclerViewNew horizontalCarouselRecyclerViewNew = (HorizontalCarouselRecyclerViewNew) view;
            return new ItemRvSpecialsBinding(horizontalCarouselRecyclerViewNew, horizontalCarouselRecyclerViewNew);
        }
        o2.d("rootView");
        return null;
    }

    public static ItemRvSpecialsBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_rv_specials, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public HorizontalCarouselRecyclerViewNew getRoot() {
        return this.rootView;
    }

    public static ItemRvSpecialsBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
