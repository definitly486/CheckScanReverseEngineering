package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class FragmentSearchProductBinding implements ViewBinding {
    public final NoPlacesNearbyLayoutBinding noPlacesNearbyView;
    public final NoProductsNearFoundLayoutBinding noProductsNearView;
    public final ProgressBar pbLoading;
    private final LinearLayout rootView;
    public final RecyclerView rvPlaces;
    public final RecyclerView rvProducts;
    public final LinearLayout searchProductPlacesNearbyView;
    public final ToolbarSearchBinding toolbarSearch;

    private FragmentSearchProductBinding(LinearLayout linearLayout, NoPlacesNearbyLayoutBinding noPlacesNearbyLayoutBinding, NoProductsNearFoundLayoutBinding noProductsNearFoundLayoutBinding, ProgressBar progressBar, RecyclerView recyclerView, RecyclerView recyclerView2, LinearLayout linearLayout2, ToolbarSearchBinding toolbarSearchBinding) {
        this.rootView = linearLayout;
        this.noPlacesNearbyView = noPlacesNearbyLayoutBinding;
        this.noProductsNearView = noProductsNearFoundLayoutBinding;
        this.pbLoading = progressBar;
        this.rvPlaces = recyclerView;
        this.rvProducts = recyclerView2;
        this.searchProductPlacesNearbyView = linearLayout2;
        this.toolbarSearch = toolbarSearchBinding;
    }

    public static FragmentSearchProductBinding bind(View view) {
        int i = R.id.no_places_nearby_view;
        View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.no_places_nearby_view);
        if (viewFindChildViewById != null) {
            NoPlacesNearbyLayoutBinding noPlacesNearbyLayoutBindingBind = NoPlacesNearbyLayoutBinding.bind(viewFindChildViewById);
            i = R.id.no_products_near_view;
            View viewFindChildViewById2 = ViewBindings.findChildViewById(view, R.id.no_products_near_view);
            if (viewFindChildViewById2 != null) {
                NoProductsNearFoundLayoutBinding noProductsNearFoundLayoutBindingBind = NoProductsNearFoundLayoutBinding.bind(viewFindChildViewById2);
                i = R.id.pb_loading;
                ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, R.id.pb_loading);
                if (progressBar != null) {
                    i = R.id.rv_places;
                    RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rv_places);
                    if (recyclerView != null) {
                        i = R.id.rv_products;
                        RecyclerView recyclerView2 = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rv_products);
                        if (recyclerView2 != null) {
                            i = R.id.search_product_places_nearby_view;
                            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.search_product_places_nearby_view);
                            if (linearLayout != null) {
                                i = R.id.toolbar_search;
                                View viewFindChildViewById3 = ViewBindings.findChildViewById(view, R.id.toolbar_search);
                                if (viewFindChildViewById3 != null) {
                                    return new FragmentSearchProductBinding((LinearLayout) view, noPlacesNearbyLayoutBindingBind, noProductsNearFoundLayoutBindingBind, progressBar, recyclerView, recyclerView2, linearLayout, ToolbarSearchBinding.bind(viewFindChildViewById3));
                                }
                            }
                        }
                    }
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static FragmentSearchProductBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_search_product, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static FragmentSearchProductBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
