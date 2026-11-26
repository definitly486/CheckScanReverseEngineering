package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class LayoutBrandlinkNotAuthBinding implements ViewBinding {
    public final TextView btnSignUp;
    public final Group groupNotAuth;
    public final ImageView ivBrandNotAuth;
    private final ConstraintLayout rootView;
    public final TextView tvSubtitle;
    public final TextView tvTitle;

    private LayoutBrandlinkNotAuthBinding(ConstraintLayout constraintLayout, TextView textView, Group group, ImageView imageView, TextView textView2, TextView textView3) {
        this.rootView = constraintLayout;
        this.btnSignUp = textView;
        this.groupNotAuth = group;
        this.ivBrandNotAuth = imageView;
        this.tvSubtitle = textView2;
        this.tvTitle = textView3;
    }

    public static LayoutBrandlinkNotAuthBinding bind(View view) {
        int i = R.id.btn_sign_up;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btn_sign_up);
        if (textView != null) {
            i = R.id.group_not_auth;
            Group group = (Group) ViewBindings.findChildViewById(view, R.id.group_not_auth);
            if (group != null) {
                i = R.id.iv_brand_not_auth;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_brand_not_auth);
                if (imageView != null) {
                    i = R.id.tv_subtitle;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_subtitle);
                    if (textView2 != null) {
                        i = R.id.tv_title;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                        if (textView3 != null) {
                            return new LayoutBrandlinkNotAuthBinding((ConstraintLayout) view, textView, group, imageView, textView2, textView3);
                        }
                    }
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static LayoutBrandlinkNotAuthBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.layout_brandlink_not_auth, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static LayoutBrandlinkNotAuthBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
