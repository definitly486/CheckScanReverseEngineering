package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.Group;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.SmartNestedScrollView;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class FragmentFavoriteBinding implements ViewBinding {
    public final TextView btnBackMain;
    public final Group groupNoShops;
    public final ImageView ivNoShops;
    private final CoordinatorLayout rootView;
    public final RecyclerView rvButtons;
    public final RecyclerView rvPromocodes;
    public final RecyclerView rvShops;
    public final SmartNestedScrollView scrollView;
    public final LayoutToolbarSimpleTitleBinding toolbar;
    public final TextView tvNoShops;
    public final TextView tvShopsTitle;

    private FragmentFavoriteBinding(CoordinatorLayout coordinatorLayout, TextView textView, Group group, ImageView imageView, RecyclerView recyclerView, RecyclerView recyclerView2, RecyclerView recyclerView3, SmartNestedScrollView smartNestedScrollView, LayoutToolbarSimpleTitleBinding layoutToolbarSimpleTitleBinding, TextView textView2, TextView textView3) {
        this.rootView = coordinatorLayout;
        this.btnBackMain = textView;
        this.groupNoShops = group;
        this.ivNoShops = imageView;
        this.rvButtons = recyclerView;
        this.rvPromocodes = recyclerView2;
        this.rvShops = recyclerView3;
        this.scrollView = smartNestedScrollView;
        this.toolbar = layoutToolbarSimpleTitleBinding;
        this.tvNoShops = textView2;
        this.tvShopsTitle = textView3;
    }

    public static FragmentFavoriteBinding bind(View view) {
        int i = R.id.btn_back_main;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btn_back_main);
        if (textView != null) {
            i = R.id.group_no_shops;
            Group group = (Group) ViewBindings.findChildViewById(view, R.id.group_no_shops);
            if (group != null) {
                i = R.id.iv_no_shops;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_no_shops);
                if (imageView != null) {
                    i = R.id.rv_buttons;
                    RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rv_buttons);
                    if (recyclerView != null) {
                        i = R.id.rv_promocodes;
                        RecyclerView recyclerView2 = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rv_promocodes);
                        if (recyclerView2 != null) {
                            i = R.id.rv_shops;
                            RecyclerView recyclerView3 = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rv_shops);
                            if (recyclerView3 != null) {
                                i = R.id.scroll_view;
                                SmartNestedScrollView smartNestedScrollView = (SmartNestedScrollView) ViewBindings.findChildViewById(view, R.id.scroll_view);
                                if (smartNestedScrollView != null) {
                                    i = R.id.toolbar;
                                    View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.toolbar);
                                    if (viewFindChildViewById != null) {
                                        LayoutToolbarSimpleTitleBinding layoutToolbarSimpleTitleBindingBind = LayoutToolbarSimpleTitleBinding.bind(viewFindChildViewById);
                                        i = R.id.tv_no_shops;
                                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_no_shops);
                                        if (textView2 != null) {
                                            i = R.id.tv_shops_title;
                                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_shops_title);
                                            if (textView3 != null) {
                                                return new FragmentFavoriteBinding((CoordinatorLayout) view, textView, group, imageView, recyclerView, recyclerView2, recyclerView3, smartNestedScrollView, layoutToolbarSimpleTitleBindingBind, textView2, textView3);
                                            }
                                        }
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

    public static FragmentFavoriteBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_favorite, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public CoordinatorLayout getRoot() {
        return this.rootView;
    }

    public static FragmentFavoriteBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
