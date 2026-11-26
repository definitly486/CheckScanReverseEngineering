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
public final class ItemWithdrawalHeaderLogoBannerBinding implements ViewBinding {
    public final Space bottomSpace;
    public final ImageView ivClick;
    public final ImageView ivLogo;
    private final ConstraintLayout rootView;
    public final TextView tvDescription;
    public final TextView tvValue;
    public final View viewBackground;

    private ItemWithdrawalHeaderLogoBannerBinding(ConstraintLayout constraintLayout, Space space, ImageView imageView, ImageView imageView2, TextView textView, TextView textView2, View view) {
        this.rootView = constraintLayout;
        this.bottomSpace = space;
        this.ivClick = imageView;
        this.ivLogo = imageView2;
        this.tvDescription = textView;
        this.tvValue = textView2;
        this.viewBackground = view;
    }

    public static ItemWithdrawalHeaderLogoBannerBinding bind(View view) {
        int i = R.id.bottom_space;
        Space space = (Space) ViewBindings.findChildViewById(view, R.id.bottom_space);
        if (space != null) {
            i = R.id.iv_click;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_click);
            if (imageView != null) {
                i = R.id.iv_logo;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_logo);
                if (imageView2 != null) {
                    i = R.id.tv_description;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_description);
                    if (textView != null) {
                        i = R.id.tv_value;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_value);
                        if (textView2 != null) {
                            i = R.id.view_background;
                            View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.view_background);
                            if (viewFindChildViewById != null) {
                                return new ItemWithdrawalHeaderLogoBannerBinding((ConstraintLayout) view, space, imageView, imageView2, textView, textView2, viewFindChildViewById);
                            }
                        }
                    }
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static ItemWithdrawalHeaderLogoBannerBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_withdrawal_header_logo_banner, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static ItemWithdrawalHeaderLogoBannerBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
