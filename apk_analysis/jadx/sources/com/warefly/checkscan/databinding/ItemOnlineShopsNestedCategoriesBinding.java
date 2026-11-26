package com.warefly.checkscan.databinding;

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
public final class ItemOnlineShopsNestedCategoriesBinding implements ViewBinding {
    public final ItemOnlineShopsCategoryBinding incldAllProductsCategory;
    private final ConstraintLayout rootView;
    public final RecyclerView rvNestedCategories;

    private ItemOnlineShopsNestedCategoriesBinding(ConstraintLayout constraintLayout, ItemOnlineShopsCategoryBinding itemOnlineShopsCategoryBinding, RecyclerView recyclerView) {
        this.rootView = constraintLayout;
        this.incldAllProductsCategory = itemOnlineShopsCategoryBinding;
        this.rvNestedCategories = recyclerView;
    }

    public static ItemOnlineShopsNestedCategoriesBinding bind(View view) {
        int i = R.id.incld_all_products_category;
        View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.incld_all_products_category);
        if (viewFindChildViewById != null) {
            ItemOnlineShopsCategoryBinding itemOnlineShopsCategoryBindingBind = ItemOnlineShopsCategoryBinding.bind(viewFindChildViewById);
            RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rv_nested_categories);
            if (recyclerView != null) {
                return new ItemOnlineShopsNestedCategoriesBinding((ConstraintLayout) view, itemOnlineShopsCategoryBindingBind, recyclerView);
            }
            i = R.id.rv_nested_categories;
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static ItemOnlineShopsNestedCategoriesBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_online_shops_nested_categories, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static ItemOnlineShopsNestedCategoriesBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
