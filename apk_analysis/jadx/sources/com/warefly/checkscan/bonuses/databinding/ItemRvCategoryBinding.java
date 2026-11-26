package com.warefly.checkscan.bonuses.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes.dex */
public final class ItemRvCategoryBinding implements ViewBinding {
    public final ImageView ivPlaceholder;
    private final LinearLayout rootView;
    public final AppCompatTextView tvTitle;

    private ItemRvCategoryBinding(LinearLayout linearLayout, ImageView imageView, AppCompatTextView appCompatTextView) {
        this.rootView = linearLayout;
        this.ivPlaceholder = imageView;
        this.tvTitle = appCompatTextView;
    }

    public static ItemRvCategoryBinding bind(View view) {
        int i = R.id.iv_placeholder;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_placeholder);
        if (imageView != null) {
            i = R.id.tv_title;
            AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, R.id.tv_title);
            if (appCompatTextView != null) {
                return new ItemRvCategoryBinding((LinearLayout) view, imageView, appCompatTextView);
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static ItemRvCategoryBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_rv_category, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static ItemRvCategoryBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
