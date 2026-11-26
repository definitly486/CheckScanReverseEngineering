package com.warefly.checkscan.bonuses.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.card.MaterialCardView;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes.dex */
public final class ItemRvGroupShopsVerticalBinding implements ViewBinding {
    public final TextView btnCheckMore;
    public final ItemRvShopsPreviewRectangleBinding first;
    public final ImageView ivLogo;
    private final MaterialCardView rootView;
    public final ItemRvShopsPreviewRectangleBinding second;
    public final LinearLayout table;
    public final ItemRvShopsPreviewRectangleBinding third;
    public final TextView tvTitle;
    public final View viewTitleBackground;

    private ItemRvGroupShopsVerticalBinding(MaterialCardView materialCardView, TextView textView, ItemRvShopsPreviewRectangleBinding itemRvShopsPreviewRectangleBinding, ImageView imageView, ItemRvShopsPreviewRectangleBinding itemRvShopsPreviewRectangleBinding2, LinearLayout linearLayout, ItemRvShopsPreviewRectangleBinding itemRvShopsPreviewRectangleBinding3, TextView textView2, View view) {
        this.rootView = materialCardView;
        this.btnCheckMore = textView;
        this.first = itemRvShopsPreviewRectangleBinding;
        this.ivLogo = imageView;
        this.second = itemRvShopsPreviewRectangleBinding2;
        this.table = linearLayout;
        this.third = itemRvShopsPreviewRectangleBinding3;
        this.tvTitle = textView2;
        this.viewTitleBackground = view;
    }

    public static ItemRvGroupShopsVerticalBinding bind(View view) {
        int i = R.id.btn_check_more;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btn_check_more);
        if (textView != null) {
            i = R.id.first;
            View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.first);
            if (viewFindChildViewById != null) {
                ItemRvShopsPreviewRectangleBinding itemRvShopsPreviewRectangleBindingBind = ItemRvShopsPreviewRectangleBinding.bind(viewFindChildViewById);
                i = R.id.iv_logo;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_logo);
                if (imageView != null) {
                    i = R.id.second;
                    View viewFindChildViewById2 = ViewBindings.findChildViewById(view, R.id.second);
                    if (viewFindChildViewById2 != null) {
                        ItemRvShopsPreviewRectangleBinding itemRvShopsPreviewRectangleBindingBind2 = ItemRvShopsPreviewRectangleBinding.bind(viewFindChildViewById2);
                        i = R.id.table;
                        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.table);
                        if (linearLayout != null) {
                            i = R.id.third;
                            View viewFindChildViewById3 = ViewBindings.findChildViewById(view, R.id.third);
                            if (viewFindChildViewById3 != null) {
                                ItemRvShopsPreviewRectangleBinding itemRvShopsPreviewRectangleBindingBind3 = ItemRvShopsPreviewRectangleBinding.bind(viewFindChildViewById3);
                                i = R.id.tv_title;
                                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                                if (textView2 != null) {
                                    i = R.id.view_title_background;
                                    View viewFindChildViewById4 = ViewBindings.findChildViewById(view, R.id.view_title_background);
                                    if (viewFindChildViewById4 != null) {
                                        return new ItemRvGroupShopsVerticalBinding((MaterialCardView) view, textView, itemRvShopsPreviewRectangleBindingBind, imageView, itemRvShopsPreviewRectangleBindingBind2, linearLayout, itemRvShopsPreviewRectangleBindingBind3, textView2, viewFindChildViewById4);
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

    public static ItemRvGroupShopsVerticalBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_rv_group_shops_vertical, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public MaterialCardView getRoot() {
        return this.rootView;
    }

    public static ItemRvGroupShopsVerticalBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
