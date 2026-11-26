package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.constraintlayout.widget.Group;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.widget.NestedScrollView;
import androidx.fragment.app.FragmentContainerView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class FragmentProductPageBinding implements ViewBinding {
    public final ImageView btnAddToShoppingNote;
    public final ImageView btnBack;
    public final FragmentContainerView fragmentContainerMap;
    public final Group mapRow;
    public final NestedScrollView pageScrollview;
    public final ProductInfoLayoutBinding productInfoView;
    public final RecyclerView productsNearbyRecyclerView;
    private final CoordinatorLayout rootView;
    public final View transparentImage;

    private FragmentProductPageBinding(CoordinatorLayout coordinatorLayout, ImageView imageView, ImageView imageView2, FragmentContainerView fragmentContainerView, Group group, NestedScrollView nestedScrollView, ProductInfoLayoutBinding productInfoLayoutBinding, RecyclerView recyclerView, View view) {
        this.rootView = coordinatorLayout;
        this.btnAddToShoppingNote = imageView;
        this.btnBack = imageView2;
        this.fragmentContainerMap = fragmentContainerView;
        this.mapRow = group;
        this.pageScrollview = nestedScrollView;
        this.productInfoView = productInfoLayoutBinding;
        this.productsNearbyRecyclerView = recyclerView;
        this.transparentImage = view;
    }

    public static FragmentProductPageBinding bind(View view) {
        int i = R.id.btn_add_to_shopping_note;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.btn_add_to_shopping_note);
        if (imageView != null) {
            i = R.id.btn_back;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.btn_back);
            if (imageView2 != null) {
                i = R.id.fragment_container_map;
                FragmentContainerView fragmentContainerView = (FragmentContainerView) ViewBindings.findChildViewById(view, R.id.fragment_container_map);
                if (fragmentContainerView != null) {
                    i = R.id.map_row;
                    Group group = (Group) ViewBindings.findChildViewById(view, R.id.map_row);
                    if (group != null) {
                        i = R.id.page_scrollview;
                        NestedScrollView nestedScrollView = (NestedScrollView) ViewBindings.findChildViewById(view, R.id.page_scrollview);
                        if (nestedScrollView != null) {
                            i = R.id.product_info_view;
                            View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.product_info_view);
                            if (viewFindChildViewById != null) {
                                ProductInfoLayoutBinding productInfoLayoutBindingBind = ProductInfoLayoutBinding.bind(viewFindChildViewById);
                                i = R.id.products_nearby_recycler_view;
                                RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.products_nearby_recycler_view);
                                if (recyclerView != null) {
                                    i = R.id.transparent_image;
                                    View viewFindChildViewById2 = ViewBindings.findChildViewById(view, R.id.transparent_image);
                                    if (viewFindChildViewById2 != null) {
                                        return new FragmentProductPageBinding((CoordinatorLayout) view, imageView, imageView2, fragmentContainerView, group, nestedScrollView, productInfoLayoutBindingBind, recyclerView, viewFindChildViewById2);
                                    }
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

    public static FragmentProductPageBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_product_page, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public CoordinatorLayout getRoot() {
        return this.rootView;
    }

    public static FragmentProductPageBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
