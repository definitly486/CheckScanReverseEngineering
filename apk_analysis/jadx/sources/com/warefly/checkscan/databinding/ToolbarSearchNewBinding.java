package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import com.warefly.checkscan.ui.SearchBar;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class ToolbarSearchNewBinding implements ViewBinding {
    public final TextView btnCancel;
    private final ConstraintLayout rootView;
    public final SearchBar searchBar;

    private ToolbarSearchNewBinding(ConstraintLayout constraintLayout, TextView textView, SearchBar searchBar) {
        this.rootView = constraintLayout;
        this.btnCancel = textView;
        this.searchBar = searchBar;
    }

    public static ToolbarSearchNewBinding bind(View view) {
        int i = R.id.btn_cancel;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btn_cancel);
        if (textView != null) {
            i = R.id.search_bar;
            SearchBar searchBar = (SearchBar) ViewBindings.findChildViewById(view, R.id.search_bar);
            if (searchBar != null) {
                return new ToolbarSearchNewBinding((ConstraintLayout) view, textView, searchBar);
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static ToolbarSearchNewBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.toolbar_search_new, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static ToolbarSearchNewBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
