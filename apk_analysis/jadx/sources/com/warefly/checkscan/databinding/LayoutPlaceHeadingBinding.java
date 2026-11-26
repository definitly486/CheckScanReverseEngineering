package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.Barrier;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class LayoutPlaceHeadingBinding implements ViewBinding {
    public final Barrier barrier;
    public final ImageView ivLogo;
    private final ConstraintLayout rootView;
    public final TextView tvTitle;
    public final TextView tvValue;

    private LayoutPlaceHeadingBinding(ConstraintLayout constraintLayout, Barrier barrier, ImageView imageView, TextView textView, TextView textView2) {
        this.rootView = constraintLayout;
        this.barrier = barrier;
        this.ivLogo = imageView;
        this.tvTitle = textView;
        this.tvValue = textView2;
    }

    public static LayoutPlaceHeadingBinding bind(View view) {
        int i = R.id.barrier;
        Barrier barrier = (Barrier) ViewBindings.findChildViewById(view, R.id.barrier);
        if (barrier != null) {
            i = R.id.iv_logo;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_logo);
            if (imageView != null) {
                i = R.id.tv_title;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                if (textView != null) {
                    i = R.id.tv_value;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_value);
                    if (textView2 != null) {
                        return new LayoutPlaceHeadingBinding((ConstraintLayout) view, barrier, imageView, textView, textView2);
                    }
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static LayoutPlaceHeadingBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.layout_place_heading, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static LayoutPlaceHeadingBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
