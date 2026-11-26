package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.Barrier;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemInfoRejectCashbackBinding implements ViewBinding {
    public final Barrier barrier;
    public final ImageView ivIcon;
    private final ConstraintLayout rootView;
    public final AppCompatTextView tvInfo;
    public final AppCompatTextView tvSumHint;
    public final AppCompatTextView tvTitle;

    private ItemInfoRejectCashbackBinding(ConstraintLayout constraintLayout, Barrier barrier, ImageView imageView, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3) {
        this.rootView = constraintLayout;
        this.barrier = barrier;
        this.ivIcon = imageView;
        this.tvInfo = appCompatTextView;
        this.tvSumHint = appCompatTextView2;
        this.tvTitle = appCompatTextView3;
    }

    public static ItemInfoRejectCashbackBinding bind(View view) {
        int i = R.id.barrier;
        Barrier barrier = (Barrier) ViewBindings.findChildViewById(view, R.id.barrier);
        if (barrier != null) {
            i = R.id.iv_icon;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_icon);
            if (imageView != null) {
                i = R.id.tv_info;
                AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, R.id.tv_info);
                if (appCompatTextView != null) {
                    i = R.id.tv_sum_hint;
                    AppCompatTextView appCompatTextView2 = (AppCompatTextView) ViewBindings.findChildViewById(view, R.id.tv_sum_hint);
                    if (appCompatTextView2 != null) {
                        i = R.id.tv_title;
                        AppCompatTextView appCompatTextView3 = (AppCompatTextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                        if (appCompatTextView3 != null) {
                            return new ItemInfoRejectCashbackBinding((ConstraintLayout) view, barrier, imageView, appCompatTextView, appCompatTextView2, appCompatTextView3);
                        }
                    }
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static ItemInfoRejectCashbackBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_info_reject_cashback, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static ItemInfoRejectCashbackBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
