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
public final class ItemWithdrawalTitleMoreMethodsBinding implements ViewBinding {
    public final TextView btnMoreMethods;
    public final Group groupBtnMoreMethods;
    public final ImageView ivMoreMethods;
    private final ConstraintLayout rootView;
    public final TextView tvTitle;

    private ItemWithdrawalTitleMoreMethodsBinding(ConstraintLayout constraintLayout, TextView textView, Group group, ImageView imageView, TextView textView2) {
        this.rootView = constraintLayout;
        this.btnMoreMethods = textView;
        this.groupBtnMoreMethods = group;
        this.ivMoreMethods = imageView;
        this.tvTitle = textView2;
    }

    public static ItemWithdrawalTitleMoreMethodsBinding bind(View view) {
        int i = R.id.btn_more_methods;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btn_more_methods);
        if (textView != null) {
            i = R.id.group_btn_more_methods;
            Group group = (Group) ViewBindings.findChildViewById(view, R.id.group_btn_more_methods);
            if (group != null) {
                i = R.id.iv_more_methods;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_more_methods);
                if (imageView != null) {
                    i = R.id.tv_title;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                    if (textView2 != null) {
                        return new ItemWithdrawalTitleMoreMethodsBinding((ConstraintLayout) view, textView, group, imageView, textView2);
                    }
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static ItemWithdrawalTitleMoreMethodsBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_withdrawal_title_more_methods, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static ItemWithdrawalTitleMoreMethodsBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
