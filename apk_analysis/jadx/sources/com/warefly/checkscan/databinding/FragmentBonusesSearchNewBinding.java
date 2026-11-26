package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.SearchView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class FragmentBonusesSearchNewBinding implements ViewBinding {
    public final TextView btnCancel;
    private final LinearLayout rootView;
    public final RecyclerView rvContent;
    public final SearchView searchView;

    private FragmentBonusesSearchNewBinding(LinearLayout linearLayout, TextView textView, RecyclerView recyclerView, SearchView searchView) {
        this.rootView = linearLayout;
        this.btnCancel = textView;
        this.rvContent = recyclerView;
        this.searchView = searchView;
    }

    public static FragmentBonusesSearchNewBinding bind(View view) {
        int i = R.id.btn_cancel;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btn_cancel);
        if (textView != null) {
            i = R.id.rv_content;
            RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rv_content);
            if (recyclerView != null) {
                i = R.id.search_view;
                SearchView searchView = (SearchView) ViewBindings.findChildViewById(view, R.id.search_view);
                if (searchView != null) {
                    return new FragmentBonusesSearchNewBinding((LinearLayout) view, textView, recyclerView, searchView);
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static FragmentBonusesSearchNewBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_bonuses_search_new, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static FragmentBonusesSearchNewBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
