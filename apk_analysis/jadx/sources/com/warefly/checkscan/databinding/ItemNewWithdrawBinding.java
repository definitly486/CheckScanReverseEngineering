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
public final class ItemNewWithdrawBinding implements ViewBinding {
    public final Group groupApplyForMethod;
    public final Group groupWithdraw;
    public final ImageView ivIcon;
    public final ImageView ivTransferArrow;
    private final ConstraintLayout rootView;
    public final TextView tvMethod;
    public final TextView tvSubtitle;
    public final TextView tvTitle;

    private ItemNewWithdrawBinding(ConstraintLayout constraintLayout, Group group, Group group2, ImageView imageView, ImageView imageView2, TextView textView, TextView textView2, TextView textView3) {
        this.rootView = constraintLayout;
        this.groupApplyForMethod = group;
        this.groupWithdraw = group2;
        this.ivIcon = imageView;
        this.ivTransferArrow = imageView2;
        this.tvMethod = textView;
        this.tvSubtitle = textView2;
        this.tvTitle = textView3;
    }

    public static ItemNewWithdrawBinding bind(View view) {
        int i = R.id.group_apply_for_method;
        Group group = (Group) ViewBindings.findChildViewById(view, R.id.group_apply_for_method);
        if (group != null) {
            i = R.id.group_withdraw;
            Group group2 = (Group) ViewBindings.findChildViewById(view, R.id.group_withdraw);
            if (group2 != null) {
                i = R.id.iv_icon;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_icon);
                if (imageView != null) {
                    i = R.id.iv_transfer_arrow;
                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_transfer_arrow);
                    if (imageView2 != null) {
                        i = R.id.tv_method;
                        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_method);
                        if (textView != null) {
                            i = R.id.tv_subtitle;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_subtitle);
                            if (textView2 != null) {
                                i = R.id.tv_title;
                                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                                if (textView3 != null) {
                                    return new ItemNewWithdrawBinding((ConstraintLayout) view, group, group2, imageView, imageView2, textView, textView2, textView3);
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

    public static ItemNewWithdrawBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_new_withdraw, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static ItemNewWithdrawBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
