package com.warefly.checkscan.databinding;

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

/* JADX INFO: loaded from: classes5.dex */
public final class ItemRvHowGetCashbackBinding implements ViewBinding {
    public final ImageView ivPlaceholder;
    private final LinearLayout rootView;
    public final AppCompatTextView tvDescription;
    public final AppCompatTextView tvTitle;

    private ItemRvHowGetCashbackBinding(LinearLayout linearLayout, ImageView imageView, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2) {
        this.rootView = linearLayout;
        this.ivPlaceholder = imageView;
        this.tvDescription = appCompatTextView;
        this.tvTitle = appCompatTextView2;
    }

    public static ItemRvHowGetCashbackBinding bind(View view) {
        int i = R.id.iv_placeholder;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_placeholder);
        if (imageView != null) {
            i = R.id.tv_description;
            AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, R.id.tv_description);
            if (appCompatTextView != null) {
                i = R.id.tv_title;
                AppCompatTextView appCompatTextView2 = (AppCompatTextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                if (appCompatTextView2 != null) {
                    return new ItemRvHowGetCashbackBinding((LinearLayout) view, imageView, appCompatTextView, appCompatTextView2);
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static ItemRvHowGetCashbackBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_rv_how_get_cashback, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static ItemRvHowGetCashbackBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
