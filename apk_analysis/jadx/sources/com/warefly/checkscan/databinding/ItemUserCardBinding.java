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
public final class ItemUserCardBinding implements ViewBinding {
    public final ImageView btnGo;
    public final ImageView ivStatus;
    private final ConstraintLayout rootView;
    public final TextView tvName;
    public final TextView tvStatus;

    private ItemUserCardBinding(ConstraintLayout constraintLayout, ImageView imageView, ImageView imageView2, TextView textView, TextView textView2) {
        this.rootView = constraintLayout;
        this.btnGo = imageView;
        this.ivStatus = imageView2;
        this.tvName = textView;
        this.tvStatus = textView2;
    }

    public static ItemUserCardBinding bind(View view) {
        int i = R.id.btn_go;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.btn_go);
        if (imageView != null) {
            i = R.id.iv_status;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_status);
            if (imageView2 != null) {
                i = R.id.tv_name;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_name);
                if (textView != null) {
                    i = R.id.tv_status;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_status);
                    if (textView2 != null) {
                        return new ItemUserCardBinding((ConstraintLayout) view, imageView, imageView2, textView, textView2);
                    }
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static ItemUserCardBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_user_card, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static ItemUserCardBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
