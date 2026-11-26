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
public final class LayoutNoInternetBinding implements ViewBinding {
    public final ImageView ivNoInternet;
    private final ConstraintLayout rootView;
    public final TextView tvNoInternetButton;
    public final TextView tvNoInternetTip;
    public final TextView tvNoInternetTitle;

    private LayoutNoInternetBinding(ConstraintLayout constraintLayout, ImageView imageView, TextView textView, TextView textView2, TextView textView3) {
        this.rootView = constraintLayout;
        this.ivNoInternet = imageView;
        this.tvNoInternetButton = textView;
        this.tvNoInternetTip = textView2;
        this.tvNoInternetTitle = textView3;
    }

    public static LayoutNoInternetBinding bind(View view) {
        int i = R.id.iv_no_internet;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_no_internet);
        if (imageView != null) {
            i = R.id.tv_no_internet_button;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_no_internet_button);
            if (textView != null) {
                i = R.id.tv_no_internet_tip;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_no_internet_tip);
                if (textView2 != null) {
                    i = R.id.tv_no_internet_title;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_no_internet_title);
                    if (textView3 != null) {
                        return new LayoutNoInternetBinding((ConstraintLayout) view, imageView, textView, textView2, textView3);
                    }
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static LayoutNoInternetBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.layout_no_internet, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static LayoutNoInternetBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
