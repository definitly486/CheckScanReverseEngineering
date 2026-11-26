package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import com.warefly.checkscan.ui.SearchBar;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class ToolbarSearchBinding implements ViewBinding {
    private final RelativeLayout rootView;
    public final SearchBar searchBar;
    public final ImageView searchLocBtn;

    private ToolbarSearchBinding(RelativeLayout relativeLayout, SearchBar searchBar, ImageView imageView) {
        this.rootView = relativeLayout;
        this.searchBar = searchBar;
        this.searchLocBtn = imageView;
    }

    public static ToolbarSearchBinding bind(View view) {
        int i = R.id.search_bar;
        SearchBar searchBar = (SearchBar) ViewBindings.findChildViewById(view, R.id.search_bar);
        if (searchBar != null) {
            i = R.id.search_loc_btn;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.search_loc_btn);
            if (imageView != null) {
                return new ToolbarSearchBinding((RelativeLayout) view, searchBar, imageView);
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static ToolbarSearchBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.toolbar_search, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    public static ToolbarSearchBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
