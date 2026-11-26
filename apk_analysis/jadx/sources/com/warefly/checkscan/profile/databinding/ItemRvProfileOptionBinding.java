package com.warefly.checkscan.profile.databinding;

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
public final class ItemRvProfileOptionBinding implements ViewBinding {
    public final LayoutProfileDelimiterArrowBinding includeDelimiterArrow;
    public final ImageView ivBadge;
    private final ConstraintLayout rootView;
    public final TextView tvItemSettingsTitle;

    private ItemRvProfileOptionBinding(ConstraintLayout constraintLayout, LayoutProfileDelimiterArrowBinding layoutProfileDelimiterArrowBinding, ImageView imageView, TextView textView) {
        this.rootView = constraintLayout;
        this.includeDelimiterArrow = layoutProfileDelimiterArrowBinding;
        this.ivBadge = imageView;
        this.tvItemSettingsTitle = textView;
    }

    public static ItemRvProfileOptionBinding bind(View view) {
        int i = R.id.include_delimiter_Arrow;
        View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.include_delimiter_Arrow);
        if (viewFindChildViewById != null) {
            LayoutProfileDelimiterArrowBinding layoutProfileDelimiterArrowBindingBind = LayoutProfileDelimiterArrowBinding.bind(viewFindChildViewById);
            int i2 = R.id.iv_badge;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_badge);
            if (imageView != null) {
                i2 = R.id.tv_item_settings_title;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_item_settings_title);
                if (textView != null) {
                    return new ItemRvProfileOptionBinding((ConstraintLayout) view, layoutProfileDelimiterArrowBindingBind, imageView, textView);
                }
            }
            i = i2;
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static ItemRvProfileOptionBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_rv_profile_option, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static ItemRvProfileOptionBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
