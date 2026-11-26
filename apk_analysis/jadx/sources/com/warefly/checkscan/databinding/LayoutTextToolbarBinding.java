package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.appbar.AppBarLayout;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class LayoutTextToolbarBinding implements ViewBinding {
    public final ImageView btnBack;
    public final ImageView btnFave;
    public final ImageView btnShare;
    private final AppBarLayout rootView;
    public final TextView tvToolbarTitle;

    private LayoutTextToolbarBinding(AppBarLayout appBarLayout, ImageView imageView, ImageView imageView2, ImageView imageView3, TextView textView) {
        this.rootView = appBarLayout;
        this.btnBack = imageView;
        this.btnFave = imageView2;
        this.btnShare = imageView3;
        this.tvToolbarTitle = textView;
    }

    public static LayoutTextToolbarBinding bind(View view) {
        int i = R.id.btn_back;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.btn_back);
        if (imageView != null) {
            i = R.id.btn_fave;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.btn_fave);
            if (imageView2 != null) {
                i = R.id.btn_share;
                ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.btn_share);
                if (imageView3 != null) {
                    i = R.id.tv_toolbar_title;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_toolbar_title);
                    if (textView != null) {
                        return new LayoutTextToolbarBinding((AppBarLayout) view, imageView, imageView2, imageView3, textView);
                    }
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static LayoutTextToolbarBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.layout_text_toolbar, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public AppBarLayout getRoot() {
        return this.rootView;
    }

    public static LayoutTextToolbarBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
