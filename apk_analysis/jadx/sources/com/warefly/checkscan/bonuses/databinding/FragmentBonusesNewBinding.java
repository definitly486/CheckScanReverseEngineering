package com.warefly.checkscan.bonuses.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class FragmentBonusesNewBinding implements ViewBinding {
    public final ItemRvSearchButtonBinding includeSearch;
    public final LayoutBonusesToolbarBinding includeSearchWithBadges;
    private final FrameLayout rootView;
    public final RecyclerView rvContent;

    private FragmentBonusesNewBinding(FrameLayout frameLayout, ItemRvSearchButtonBinding itemRvSearchButtonBinding, LayoutBonusesToolbarBinding layoutBonusesToolbarBinding, RecyclerView recyclerView) {
        this.rootView = frameLayout;
        this.includeSearch = itemRvSearchButtonBinding;
        this.includeSearchWithBadges = layoutBonusesToolbarBinding;
        this.rvContent = recyclerView;
    }

    public static FragmentBonusesNewBinding bind(View view) {
        int i = R.id.include_search;
        View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.include_search);
        if (viewFindChildViewById != null) {
            ItemRvSearchButtonBinding itemRvSearchButtonBindingBind = ItemRvSearchButtonBinding.bind(viewFindChildViewById);
            View viewFindChildViewById2 = ViewBindings.findChildViewById(view, R.id.include_search_with_badges);
            if (viewFindChildViewById2 != null) {
                LayoutBonusesToolbarBinding layoutBonusesToolbarBindingBind = LayoutBonusesToolbarBinding.bind(viewFindChildViewById2);
                RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rv_content);
                if (recyclerView != null) {
                    return new FragmentBonusesNewBinding((FrameLayout) view, itemRvSearchButtonBindingBind, layoutBonusesToolbarBindingBind, recyclerView);
                }
                i = R.id.rv_content;
            } else {
                i = R.id.include_search_with_badges;
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static FragmentBonusesNewBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_bonuses_new, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public FrameLayout getRoot() {
        return this.rootView;
    }

    public static FragmentBonusesNewBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
