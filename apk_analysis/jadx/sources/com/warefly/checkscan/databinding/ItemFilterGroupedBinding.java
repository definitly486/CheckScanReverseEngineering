package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemFilterGroupedBinding implements ViewBinding {
    public final View btnShowSubcats;
    public final ImageView ivShowSubcats;
    private final ConstraintLayout rootView;
    public final RecyclerView rvSubcategories;
    public final TextView tvGroupName;

    private ItemFilterGroupedBinding(ConstraintLayout constraintLayout, View view, ImageView imageView, RecyclerView recyclerView, TextView textView) {
        this.rootView = constraintLayout;
        this.btnShowSubcats = view;
        this.ivShowSubcats = imageView;
        this.rvSubcategories = recyclerView;
        this.tvGroupName = textView;
    }

    public static ItemFilterGroupedBinding bind(View view) {
        int i = R.id.btn_show_subcats;
        View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.btn_show_subcats);
        if (viewFindChildViewById != null) {
            i = R.id.iv_show_subcats;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_show_subcats);
            if (imageView != null) {
                i = R.id.rv_subcategories;
                RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rv_subcategories);
                if (recyclerView != null) {
                    i = R.id.tv_group_name;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_group_name);
                    if (textView != null) {
                        return new ItemFilterGroupedBinding((ConstraintLayout) view, viewFindChildViewById, imageView, recyclerView, textView);
                    }
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static ItemFilterGroupedBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_filter_grouped, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static ItemFilterGroupedBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
