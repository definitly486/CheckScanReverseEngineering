package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class FragmentChooseRegionBinding implements ViewBinding {
    public final ConstraintLayout barrierSearch;
    public final ImageView btnRemoveSearch;
    public final AppCompatEditText etSearch;
    public final ImageView ivSearch;
    public final ImageView ivSelected;
    public final ProgressBar pbLoading;
    private final ConstraintLayout rootView;
    public final RecyclerView rvRegions;
    public final LayoutToolbarSimpleTitleBinding toolbar;
    public final TextView tvSelectedRegion;

    private FragmentChooseRegionBinding(ConstraintLayout constraintLayout, ConstraintLayout constraintLayout2, ImageView imageView, AppCompatEditText appCompatEditText, ImageView imageView2, ImageView imageView3, ProgressBar progressBar, RecyclerView recyclerView, LayoutToolbarSimpleTitleBinding layoutToolbarSimpleTitleBinding, TextView textView) {
        this.rootView = constraintLayout;
        this.barrierSearch = constraintLayout2;
        this.btnRemoveSearch = imageView;
        this.etSearch = appCompatEditText;
        this.ivSearch = imageView2;
        this.ivSelected = imageView3;
        this.pbLoading = progressBar;
        this.rvRegions = recyclerView;
        this.toolbar = layoutToolbarSimpleTitleBinding;
        this.tvSelectedRegion = textView;
    }

    public static FragmentChooseRegionBinding bind(View view) {
        int i = R.id.barrier_search;
        ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(view, R.id.barrier_search);
        if (constraintLayout != null) {
            i = R.id.btn_remove_search;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.btn_remove_search);
            if (imageView != null) {
                i = R.id.et_search;
                AppCompatEditText appCompatEditText = (AppCompatEditText) ViewBindings.findChildViewById(view, R.id.et_search);
                if (appCompatEditText != null) {
                    i = R.id.iv_search;
                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_search);
                    if (imageView2 != null) {
                        i = R.id.iv_selected;
                        ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_selected);
                        if (imageView3 != null) {
                            i = R.id.pb_loading;
                            ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, R.id.pb_loading);
                            if (progressBar != null) {
                                i = R.id.rv_regions;
                                RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rv_regions);
                                if (recyclerView != null) {
                                    i = R.id.toolbar;
                                    View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.toolbar);
                                    if (viewFindChildViewById != null) {
                                        LayoutToolbarSimpleTitleBinding layoutToolbarSimpleTitleBindingBind = LayoutToolbarSimpleTitleBinding.bind(viewFindChildViewById);
                                        i = R.id.tv_selected_region;
                                        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_selected_region);
                                        if (textView != null) {
                                            return new FragmentChooseRegionBinding((ConstraintLayout) view, constraintLayout, imageView, appCompatEditText, imageView2, imageView3, progressBar, recyclerView, layoutToolbarSimpleTitleBindingBind, textView);
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

    public static FragmentChooseRegionBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_choose_region, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static FragmentChooseRegionBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
