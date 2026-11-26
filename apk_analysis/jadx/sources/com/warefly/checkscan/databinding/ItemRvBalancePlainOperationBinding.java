package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemRvBalancePlainOperationBinding implements ViewBinding {
    public final ImageView ivPlaceholder;
    private final ConstraintLayout rootView;
    public final AppCompatTextView tvDescription;
    public final AppCompatTextView tvStatus;
    public final AppCompatTextView tvSum;
    public final AppCompatTextView tvTitle;

    private ItemRvBalancePlainOperationBinding(ConstraintLayout constraintLayout, ImageView imageView, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3, AppCompatTextView appCompatTextView4) {
        this.rootView = constraintLayout;
        this.ivPlaceholder = imageView;
        this.tvDescription = appCompatTextView;
        this.tvStatus = appCompatTextView2;
        this.tvSum = appCompatTextView3;
        this.tvTitle = appCompatTextView4;
    }

    public static ItemRvBalancePlainOperationBinding bind(View view) {
        int i = R.id.iv_placeholder;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_placeholder);
        if (imageView != null) {
            i = R.id.tv_description;
            AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, R.id.tv_description);
            if (appCompatTextView != null) {
                i = R.id.tv_status;
                AppCompatTextView appCompatTextView2 = (AppCompatTextView) ViewBindings.findChildViewById(view, R.id.tv_status);
                if (appCompatTextView2 != null) {
                    i = R.id.tv_sum;
                    AppCompatTextView appCompatTextView3 = (AppCompatTextView) ViewBindings.findChildViewById(view, R.id.tv_sum);
                    if (appCompatTextView3 != null) {
                        i = R.id.tv_title;
                        AppCompatTextView appCompatTextView4 = (AppCompatTextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                        if (appCompatTextView4 != null) {
                            return new ItemRvBalancePlainOperationBinding((ConstraintLayout) view, imageView, appCompatTextView, appCompatTextView2, appCompatTextView3, appCompatTextView4);
                        }
                    }
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static ItemRvBalancePlainOperationBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_rv_balance_plain_operation, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static ItemRvBalancePlainOperationBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
