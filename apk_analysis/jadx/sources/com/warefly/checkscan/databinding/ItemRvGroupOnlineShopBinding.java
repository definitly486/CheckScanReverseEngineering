package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Guideline;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemRvGroupOnlineShopBinding implements ViewBinding {
    public final TextView btnCheckMore;
    public final Guideline glText;
    public final ImageView ivLogo;
    private final ConstraintLayout rootView;
    public final LinearLayout table;
    public final TextView tvTitle;
    public final View viewTitleBackground;

    private ItemRvGroupOnlineShopBinding(ConstraintLayout constraintLayout, TextView textView, Guideline guideline, ImageView imageView, LinearLayout linearLayout, TextView textView2, View view) {
        this.rootView = constraintLayout;
        this.btnCheckMore = textView;
        this.glText = guideline;
        this.ivLogo = imageView;
        this.table = linearLayout;
        this.tvTitle = textView2;
        this.viewTitleBackground = view;
    }

    public static ItemRvGroupOnlineShopBinding bind(View view) {
        int i = R.id.btn_check_more;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btn_check_more);
        if (textView != null) {
            i = R.id.gl_text;
            Guideline guideline = (Guideline) ViewBindings.findChildViewById(view, R.id.gl_text);
            if (guideline != null) {
                i = R.id.iv_logo;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_logo);
                if (imageView != null) {
                    i = R.id.table;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.table);
                    if (linearLayout != null) {
                        i = R.id.tv_title;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                        if (textView2 != null) {
                            i = R.id.view_title_background;
                            View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.view_title_background);
                            if (viewFindChildViewById != null) {
                                return new ItemRvGroupOnlineShopBinding((ConstraintLayout) view, textView, guideline, imageView, linearLayout, textView2, viewFindChildViewById);
                            }
                        }
                    }
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static ItemRvGroupOnlineShopBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_rv_group_online_shop, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static ItemRvGroupOnlineShopBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
