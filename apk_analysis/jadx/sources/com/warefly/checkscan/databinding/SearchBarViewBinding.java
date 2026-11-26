package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.appcompat.widget.SearchView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class SearchBarViewBinding implements ViewBinding {
    public final View btnSearch;
    public final ImageView ivSearch;
    private final ConstraintLayout rootView;
    public final SearchView searchView;

    private SearchBarViewBinding(ConstraintLayout constraintLayout, View view, ImageView imageView, SearchView searchView) {
        this.rootView = constraintLayout;
        this.btnSearch = view;
        this.ivSearch = imageView;
        this.searchView = searchView;
    }

    public static SearchBarViewBinding bind(View view) {
        int i = R.id.btn_search;
        View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.btn_search);
        if (viewFindChildViewById != null) {
            i = R.id.iv_search;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_search);
            if (imageView != null) {
                i = R.id.search_view;
                SearchView searchView = (SearchView) ViewBindings.findChildViewById(view, R.id.search_view);
                if (searchView != null) {
                    return new SearchBarViewBinding((ConstraintLayout) view, viewFindChildViewById, imageView, searchView);
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static SearchBarViewBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.search_bar_view, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static SearchBarViewBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
