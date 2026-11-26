package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.widget.NestedScrollView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class CategoriesDialogBinding implements ViewBinding {
    public final TextView btnCheck;
    public final ItemOnlineShopsCategoryBinding incldAllProductsCategory;
    private final ConstraintLayout rootView;
    public final RecyclerView rvCategories;
    public final NestedScrollView scrollLayout;
    public final View viewDialogHeader;

    private CategoriesDialogBinding(ConstraintLayout constraintLayout, TextView textView, ItemOnlineShopsCategoryBinding itemOnlineShopsCategoryBinding, RecyclerView recyclerView, NestedScrollView nestedScrollView, View view) {
        this.rootView = constraintLayout;
        this.btnCheck = textView;
        this.incldAllProductsCategory = itemOnlineShopsCategoryBinding;
        this.rvCategories = recyclerView;
        this.scrollLayout = nestedScrollView;
        this.viewDialogHeader = view;
    }

    public static CategoriesDialogBinding bind(View view) {
        int i = R.id.btn_check;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btn_check);
        if (textView != null) {
            i = R.id.incld_all_products_category;
            View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.incld_all_products_category);
            if (viewFindChildViewById != null) {
                ItemOnlineShopsCategoryBinding itemOnlineShopsCategoryBindingBind = ItemOnlineShopsCategoryBinding.bind(viewFindChildViewById);
                i = R.id.rv_categories;
                RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rv_categories);
                if (recyclerView != null) {
                    i = R.id.scroll_layout;
                    NestedScrollView nestedScrollView = (NestedScrollView) ViewBindings.findChildViewById(view, R.id.scroll_layout);
                    if (nestedScrollView != null) {
                        i = R.id.view_dialog_header;
                        View viewFindChildViewById2 = ViewBindings.findChildViewById(view, R.id.view_dialog_header);
                        if (viewFindChildViewById2 != null) {
                            return new CategoriesDialogBinding((ConstraintLayout) view, textView, itemOnlineShopsCategoryBindingBind, recyclerView, nestedScrollView, viewFindChildViewById2);
                        }
                    }
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static CategoriesDialogBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.categories_dialog, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static CategoriesDialogBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
