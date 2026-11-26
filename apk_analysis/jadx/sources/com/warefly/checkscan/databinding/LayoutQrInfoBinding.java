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
public final class LayoutQrInfoBinding implements ViewBinding {
    public final ImageView imageView2;
    public final LayoutQrInfoInternetBinding layoutInn;
    private final ConstraintLayout rootView;
    public final TextView tvFd;
    public final TextView tvFn;
    public final TextView tvFpd;
    public final TextView tvTitleFd;
    public final TextView tvTitleFn;
    public final TextView tvTitleFpd;

    private LayoutQrInfoBinding(ConstraintLayout constraintLayout, ImageView imageView, LayoutQrInfoInternetBinding layoutQrInfoInternetBinding, TextView textView, TextView textView2, TextView textView3, TextView textView4, TextView textView5, TextView textView6) {
        this.rootView = constraintLayout;
        this.imageView2 = imageView;
        this.layoutInn = layoutQrInfoInternetBinding;
        this.tvFd = textView;
        this.tvFn = textView2;
        this.tvFpd = textView3;
        this.tvTitleFd = textView4;
        this.tvTitleFn = textView5;
        this.tvTitleFpd = textView6;
    }

    public static LayoutQrInfoBinding bind(View view) {
        int i = R.id.imageView2;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.imageView2);
        if (imageView != null) {
            i = R.id.layout_inn;
            View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.layout_inn);
            if (viewFindChildViewById != null) {
                LayoutQrInfoInternetBinding layoutQrInfoInternetBindingBind = LayoutQrInfoInternetBinding.bind(viewFindChildViewById);
                i = R.id.tv_fd;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_fd);
                if (textView != null) {
                    i = R.id.tv_fn;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_fn);
                    if (textView2 != null) {
                        i = R.id.tv_fpd;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_fpd);
                        if (textView3 != null) {
                            i = R.id.tv_title_fd;
                            TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title_fd);
                            if (textView4 != null) {
                                i = R.id.tv_title_fn;
                                TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title_fn);
                                if (textView5 != null) {
                                    i = R.id.tv_title_fpd;
                                    TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title_fpd);
                                    if (textView6 != null) {
                                        return new LayoutQrInfoBinding((ConstraintLayout) view, imageView, layoutQrInfoInternetBindingBind, textView, textView2, textView3, textView4, textView5, textView6);
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static LayoutQrInfoBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.layout_qr_info, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static LayoutQrInfoBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
