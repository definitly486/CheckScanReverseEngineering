package com.warefly.checkscan.scannerml.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.databinding.LayoutToolbarBackIconBinding;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class FragmentScannerInfoBinding implements ViewBinding {
    private final LinearLayout rootView;
    public final RecyclerView rvContent;
    public final LayoutToolbarBackIconBinding toolbar;

    private FragmentScannerInfoBinding(LinearLayout linearLayout, RecyclerView recyclerView, LayoutToolbarBackIconBinding layoutToolbarBackIconBinding) {
        this.rootView = linearLayout;
        this.rvContent = recyclerView;
        this.toolbar = layoutToolbarBackIconBinding;
    }

    public static FragmentScannerInfoBinding bind(View view) {
        int i = R.id.rv_content;
        RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rv_content);
        if (recyclerView != null) {
            i = R.id.toolbar;
            View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.toolbar);
            if (viewFindChildViewById != null) {
                return new FragmentScannerInfoBinding((LinearLayout) view, recyclerView, LayoutToolbarBackIconBinding.bind(viewFindChildViewById));
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static FragmentScannerInfoBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_scanner_info, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static FragmentScannerInfoBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
