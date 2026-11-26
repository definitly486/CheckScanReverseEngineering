package com.warefly.checkscan.databinding;

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
public final class ItemRvBankCardBinding implements ViewBinding {
    public final View divider;
    public final ImageView icRight;
    public final ImageView ivBank;
    private final ConstraintLayout rootView;
    public final TextView tvBank;
    public final TextView tvMainCondition;
    public final TextView tvSubCondition;

    private ItemRvBankCardBinding(ConstraintLayout constraintLayout, View view, ImageView imageView, ImageView imageView2, TextView textView, TextView textView2, TextView textView3) {
        this.rootView = constraintLayout;
        this.divider = view;
        this.icRight = imageView;
        this.ivBank = imageView2;
        this.tvBank = textView;
        this.tvMainCondition = textView2;
        this.tvSubCondition = textView3;
    }

    public static ItemRvBankCardBinding bind(View view) {
        int i = R.id.divider;
        View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.divider);
        if (viewFindChildViewById != null) {
            i = R.id.ic_right;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.ic_right);
            if (imageView != null) {
                i = R.id.iv_bank;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_bank);
                if (imageView2 != null) {
                    i = R.id.tv_bank;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_bank);
                    if (textView != null) {
                        i = R.id.tv_main_condition;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_main_condition);
                        if (textView2 != null) {
                            i = R.id.tv_sub_condition;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_sub_condition);
                            if (textView3 != null) {
                                return new ItemRvBankCardBinding((ConstraintLayout) view, viewFindChildViewById, imageView, imageView2, textView, textView2, textView3);
                            }
                        }
                    }
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static ItemRvBankCardBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_rv_bank_card, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static ItemRvBankCardBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
