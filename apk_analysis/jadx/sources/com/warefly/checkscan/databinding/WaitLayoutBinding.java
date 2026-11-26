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
public final class WaitLayoutBinding implements ViewBinding {
    public final ImageView ivWaitPlaceholder;
    private final ConstraintLayout rootView;
    public final TextView tvSubtitle;
    public final TextView tvTitle;

    private WaitLayoutBinding(ConstraintLayout constraintLayout, ImageView imageView, TextView textView, TextView textView2) {
        this.rootView = constraintLayout;
        this.ivWaitPlaceholder = imageView;
        this.tvSubtitle = textView;
        this.tvTitle = textView2;
    }

    public static WaitLayoutBinding bind(View view) {
        int i = R.id.iv_wait_placeholder;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_wait_placeholder);
        if (imageView != null) {
            i = R.id.tv_subtitle;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_subtitle);
            if (textView != null) {
                i = R.id.tv_title;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                if (textView2 != null) {
                    return new WaitLayoutBinding((ConstraintLayout) view, imageView, textView, textView2);
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static WaitLayoutBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.wait_layout, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static WaitLayoutBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
