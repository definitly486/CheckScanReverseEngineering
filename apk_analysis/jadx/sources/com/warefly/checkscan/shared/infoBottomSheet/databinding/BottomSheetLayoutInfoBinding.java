package com.warefly.checkscan.shared.infoBottomSheet.databinding;

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
public final class BottomSheetLayoutInfoBinding implements ViewBinding {
    public final ImageView btnClose;
    public final ImageView ivIndicator;
    private final ConstraintLayout rootView;
    public final RecyclerView rvBody;
    public final TextView tvTitle;

    private BottomSheetLayoutInfoBinding(ConstraintLayout constraintLayout, ImageView imageView, ImageView imageView2, RecyclerView recyclerView, TextView textView) {
        this.rootView = constraintLayout;
        this.btnClose = imageView;
        this.ivIndicator = imageView2;
        this.rvBody = recyclerView;
        this.tvTitle = textView;
    }

    public static BottomSheetLayoutInfoBinding bind(View view) {
        int i = R.id.btn_close;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.btn_close);
        if (imageView != null) {
            i = R.id.iv_indicator;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_indicator);
            if (imageView2 != null) {
                i = R.id.rv_body;
                RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rv_body);
                if (recyclerView != null) {
                    i = R.id.tv_title;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                    if (textView != null) {
                        return new BottomSheetLayoutInfoBinding((ConstraintLayout) view, imageView, imageView2, recyclerView, textView);
                    }
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static BottomSheetLayoutInfoBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.bottom_sheet_layout_info, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static BottomSheetLayoutInfoBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
