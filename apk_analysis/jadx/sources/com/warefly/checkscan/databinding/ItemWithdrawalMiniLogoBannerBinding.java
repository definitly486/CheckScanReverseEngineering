package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.Space;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemWithdrawalMiniLogoBannerBinding implements ViewBinding {
    public final TextView btnAction;
    public final TextView btnSecondary;
    public final ImageView ivLogo;
    private final ConstraintLayout rootView;
    public final Space spaceButtons;
    public final TextView tvDescription;
    public final TextView tvTitle;
    public final View viewBackground;

    private ItemWithdrawalMiniLogoBannerBinding(ConstraintLayout constraintLayout, TextView textView, TextView textView2, ImageView imageView, Space space, TextView textView3, TextView textView4, View view) {
        this.rootView = constraintLayout;
        this.btnAction = textView;
        this.btnSecondary = textView2;
        this.ivLogo = imageView;
        this.spaceButtons = space;
        this.tvDescription = textView3;
        this.tvTitle = textView4;
        this.viewBackground = view;
    }

    public static ItemWithdrawalMiniLogoBannerBinding bind(View view) {
        int i = R.id.btn_action;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btn_action);
        if (textView != null) {
            i = R.id.btn_secondary;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.btn_secondary);
            if (textView2 != null) {
                i = R.id.iv_logo;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_logo);
                if (imageView != null) {
                    i = R.id.space_buttons;
                    Space space = (Space) ViewBindings.findChildViewById(view, R.id.space_buttons);
                    if (space != null) {
                        i = R.id.tv_description;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_description);
                        if (textView3 != null) {
                            i = R.id.tv_title;
                            TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                            if (textView4 != null) {
                                i = R.id.view_background;
                                View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.view_background);
                                if (viewFindChildViewById != null) {
                                    return new ItemWithdrawalMiniLogoBannerBinding((ConstraintLayout) view, textView, textView2, imageView, space, textView3, textView4, viewFindChildViewById);
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

    public static ItemWithdrawalMiniLogoBannerBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_withdrawal_mini_logo_banner, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static ItemWithdrawalMiniLogoBannerBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
