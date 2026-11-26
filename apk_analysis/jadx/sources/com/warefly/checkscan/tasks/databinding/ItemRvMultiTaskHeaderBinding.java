package com.warefly.checkscan.tasks.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemRvMultiTaskHeaderBinding implements ViewBinding {
    public final ImageView ivLogo;
    private final ConstraintLayout rootView;
    public final TextView tvTitle;

    private ItemRvMultiTaskHeaderBinding(ConstraintLayout constraintLayout, ImageView imageView, TextView textView) {
        this.rootView = constraintLayout;
        this.ivLogo = imageView;
        this.tvTitle = textView;
    }

    public static ItemRvMultiTaskHeaderBinding bind(View view) {
        int i = R.id.iv_logo;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_logo);
        if (imageView != null) {
            i = R.id.tv_title;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
            if (textView != null) {
                return new ItemRvMultiTaskHeaderBinding((ConstraintLayout) view, imageView, textView);
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static ItemRvMultiTaskHeaderBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_rv_multi_task_header, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static ItemRvMultiTaskHeaderBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
