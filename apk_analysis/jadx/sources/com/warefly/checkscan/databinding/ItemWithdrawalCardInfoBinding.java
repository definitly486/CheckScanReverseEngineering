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
public final class ItemWithdrawalCardInfoBinding implements ViewBinding {
    public final View divider;
    public final ImageView ivArrow;
    public final ImageView ivLogo;
    private final ConstraintLayout rootView;
    public final TextView tvDescription;
    public final TextView tvTitle;

    private ItemWithdrawalCardInfoBinding(ConstraintLayout constraintLayout, View view, ImageView imageView, ImageView imageView2, TextView textView, TextView textView2) {
        this.rootView = constraintLayout;
        this.divider = view;
        this.ivArrow = imageView;
        this.ivLogo = imageView2;
        this.tvDescription = textView;
        this.tvTitle = textView2;
    }

    public static ItemWithdrawalCardInfoBinding bind(View view) {
        int i = R.id.divider;
        View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.divider);
        if (viewFindChildViewById != null) {
            i = R.id.iv_arrow;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_arrow);
            if (imageView != null) {
                i = R.id.iv_logo;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_logo);
                if (imageView2 != null) {
                    i = R.id.tv_description;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_description);
                    if (textView != null) {
                        i = R.id.tv_title;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                        if (textView2 != null) {
                            return new ItemWithdrawalCardInfoBinding((ConstraintLayout) view, viewFindChildViewById, imageView, imageView2, textView, textView2);
                        }
                    }
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static ItemWithdrawalCardInfoBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_withdrawal_card_info, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static ItemWithdrawalCardInfoBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
