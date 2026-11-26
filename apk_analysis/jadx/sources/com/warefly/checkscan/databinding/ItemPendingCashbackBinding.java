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
public final class ItemPendingCashbackBinding implements ViewBinding {
    public final ImageView image;
    private final ConstraintLayout rootView;
    public final TextView tvDescriptionPending;
    public final TextView tvSum;

    private ItemPendingCashbackBinding(ConstraintLayout constraintLayout, ImageView imageView, TextView textView, TextView textView2) {
        this.rootView = constraintLayout;
        this.image = imageView;
        this.tvDescriptionPending = textView;
        this.tvSum = textView2;
    }

    public static ItemPendingCashbackBinding bind(View view) {
        int i = R.id.image;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.image);
        if (imageView != null) {
            i = R.id.tv_description_pending;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_description_pending);
            if (textView != null) {
                i = R.id.tv_sum;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_sum);
                if (textView2 != null) {
                    return new ItemPendingCashbackBinding((ConstraintLayout) view, imageView, textView, textView2);
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static ItemPendingCashbackBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_pending_cashback, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static ItemPendingCashbackBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
