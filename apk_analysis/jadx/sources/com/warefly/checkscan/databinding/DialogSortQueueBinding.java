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
public final class DialogSortQueueBinding implements ViewBinding {
    public final ImageView btnClose;
    public final View divider;
    private final ConstraintLayout rootView;
    public final RecyclerView rvDateFilters;
    public final TextView tvDialogHeader;
    public final View viewHeader;

    private DialogSortQueueBinding(ConstraintLayout constraintLayout, ImageView imageView, View view, RecyclerView recyclerView, TextView textView, View view2) {
        this.rootView = constraintLayout;
        this.btnClose = imageView;
        this.divider = view;
        this.rvDateFilters = recyclerView;
        this.tvDialogHeader = textView;
        this.viewHeader = view2;
    }

    public static DialogSortQueueBinding bind(View view) {
        int i = R.id.btn_close;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.btn_close);
        if (imageView != null) {
            i = R.id.divider;
            View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.divider);
            if (viewFindChildViewById != null) {
                i = R.id.rv_date_filters;
                RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rv_date_filters);
                if (recyclerView != null) {
                    i = R.id.tv_dialog_header;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_dialog_header);
                    if (textView != null) {
                        i = R.id.view_header;
                        View viewFindChildViewById2 = ViewBindings.findChildViewById(view, R.id.view_header);
                        if (viewFindChildViewById2 != null) {
                            return new DialogSortQueueBinding((ConstraintLayout) view, imageView, viewFindChildViewById, recyclerView, textView, viewFindChildViewById2);
                        }
                    }
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static DialogSortQueueBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_sort_queue, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static DialogSortQueueBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
