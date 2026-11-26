package com.warefly.checkscan.databinding;

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
public final class ItemInstructionBinding implements ViewBinding {
    public final ImageView ivIcon;
    private final ConstraintLayout rootView;
    public final TextView tvDescription;
    public final TextView tvTitle;
    public final View viewDivider;

    private ItemInstructionBinding(ConstraintLayout constraintLayout, ImageView imageView, TextView textView, TextView textView2, View view) {
        this.rootView = constraintLayout;
        this.ivIcon = imageView;
        this.tvDescription = textView;
        this.tvTitle = textView2;
        this.viewDivider = view;
    }

    public static ItemInstructionBinding bind(View view) {
        int i = R.id.iv_icon;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_icon);
        if (imageView != null) {
            i = R.id.tv_description;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_description);
            if (textView != null) {
                i = R.id.tv_title;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                if (textView2 != null) {
                    i = R.id.view_divider;
                    View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.view_divider);
                    if (viewFindChildViewById != null) {
                        return new ItemInstructionBinding((ConstraintLayout) view, imageView, textView, textView2, viewFindChildViewById);
                    }
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static ItemInstructionBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_instruction, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static ItemInstructionBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
