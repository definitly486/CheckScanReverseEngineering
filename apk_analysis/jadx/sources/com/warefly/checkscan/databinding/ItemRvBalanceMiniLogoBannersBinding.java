package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.Space;
import android.widget.TextView;
import androidx.constraintlayout.widget.Barrier;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.card.MaterialCardView;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemRvBalanceMiniLogoBannersBinding implements ViewBinding {
    public final Barrier barrierInfo;
    public final TextView btnAction;
    public final TextView btnSecondary;
    public final ImageView ivLogo;
    private final MaterialCardView rootView;
    public final Space spaceButtons;
    public final TextView tvDescription;
    public final TextView tvTitle;

    private ItemRvBalanceMiniLogoBannersBinding(MaterialCardView materialCardView, Barrier barrier, TextView textView, TextView textView2, ImageView imageView, Space space, TextView textView3, TextView textView4) {
        this.rootView = materialCardView;
        this.barrierInfo = barrier;
        this.btnAction = textView;
        this.btnSecondary = textView2;
        this.ivLogo = imageView;
        this.spaceButtons = space;
        this.tvDescription = textView3;
        this.tvTitle = textView4;
    }

    public static ItemRvBalanceMiniLogoBannersBinding bind(View view) {
        int i = R.id.barrier_info;
        Barrier barrier = (Barrier) ViewBindings.findChildViewById(view, R.id.barrier_info);
        if (barrier != null) {
            i = R.id.btn_action;
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
                                    return new ItemRvBalanceMiniLogoBannersBinding((MaterialCardView) view, barrier, textView, textView2, imageView, space, textView3, textView4);
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

    public static ItemRvBalanceMiniLogoBannersBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_rv_balance_mini_logo_banners, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public MaterialCardView getRoot() {
        return this.rootView;
    }

    public static ItemRvBalanceMiniLogoBannersBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
