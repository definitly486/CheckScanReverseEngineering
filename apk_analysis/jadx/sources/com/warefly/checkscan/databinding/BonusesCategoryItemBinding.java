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
public final class BonusesCategoryItemBinding implements ViewBinding {
    public final ImageView ivCategory;
    private final ConstraintLayout rootView;
    public final TextView tvTitle;
    public final ImageView viewCategoryBackground;

    private BonusesCategoryItemBinding(ConstraintLayout constraintLayout, ImageView imageView, TextView textView, ImageView imageView2) {
        this.rootView = constraintLayout;
        this.ivCategory = imageView;
        this.tvTitle = textView;
        this.viewCategoryBackground = imageView2;
    }

    public static BonusesCategoryItemBinding bind(View view) {
        int i = R.id.iv_category;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_category);
        if (imageView != null) {
            i = R.id.tv_title;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
            if (textView != null) {
                i = R.id.view_category_background;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.view_category_background);
                if (imageView2 != null) {
                    return new BonusesCategoryItemBinding((ConstraintLayout) view, imageView, textView, imageView2);
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static BonusesCategoryItemBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.bonuses_category_item, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static BonusesCategoryItemBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
