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
import com.warefly.checkscan.core.ui.databinding.LayoutSpinnerLoadingBinding;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class DialogSbpTransferBinding implements ViewBinding {
    public final ImageView btnClose;
    public final LayoutSpinnerLoadingBinding incldLoading;
    private final ConstraintLayout rootView;
    public final RecyclerView rvContent;
    public final View topBackground;
    public final TextView tvTitle;

    private DialogSbpTransferBinding(ConstraintLayout constraintLayout, ImageView imageView, LayoutSpinnerLoadingBinding layoutSpinnerLoadingBinding, RecyclerView recyclerView, View view, TextView textView) {
        this.rootView = constraintLayout;
        this.btnClose = imageView;
        this.incldLoading = layoutSpinnerLoadingBinding;
        this.rvContent = recyclerView;
        this.topBackground = view;
        this.tvTitle = textView;
    }

    public static DialogSbpTransferBinding bind(View view) {
        int i = R.id.btn_close;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.btn_close);
        if (imageView != null) {
            i = R.id.incld_loading;
            View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.incld_loading);
            if (viewFindChildViewById != null) {
                LayoutSpinnerLoadingBinding layoutSpinnerLoadingBindingBind = LayoutSpinnerLoadingBinding.bind(viewFindChildViewById);
                i = R.id.rv_content;
                RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rv_content);
                if (recyclerView != null) {
                    i = R.id.top_background;
                    View viewFindChildViewById2 = ViewBindings.findChildViewById(view, R.id.top_background);
                    if (viewFindChildViewById2 != null) {
                        i = R.id.tv_title;
                        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                        if (textView != null) {
                            return new DialogSbpTransferBinding((ConstraintLayout) view, imageView, layoutSpinnerLoadingBindingBind, recyclerView, viewFindChildViewById2, textView);
                        }
                    }
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static DialogSbpTransferBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_sbp_transfer, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static DialogSbpTransferBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
