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
public final class ItemQueueChequeBinding implements ViewBinding {
    public final ImageView dashedBorderline;
    public final ImageView ivBackgroundCheque;
    public final ImageView ivWarning;
    private final ConstraintLayout rootView;
    public final TextView tvDateTime;
    public final TextView tvShopAddress;
    public final TextView tvShopName;
    public final TextView tvSum;

    private ItemQueueChequeBinding(ConstraintLayout constraintLayout, ImageView imageView, ImageView imageView2, ImageView imageView3, TextView textView, TextView textView2, TextView textView3, TextView textView4) {
        this.rootView = constraintLayout;
        this.dashedBorderline = imageView;
        this.ivBackgroundCheque = imageView2;
        this.ivWarning = imageView3;
        this.tvDateTime = textView;
        this.tvShopAddress = textView2;
        this.tvShopName = textView3;
        this.tvSum = textView4;
    }

    public static ItemQueueChequeBinding bind(View view) {
        int i = R.id.dashed_borderline;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.dashed_borderline);
        if (imageView != null) {
            i = R.id.iv_background_cheque;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_background_cheque);
            if (imageView2 != null) {
                i = R.id.iv_warning;
                ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_warning);
                if (imageView3 != null) {
                    i = R.id.tv_date_time;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_date_time);
                    if (textView != null) {
                        i = R.id.tv_shop_address;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_shop_address);
                        if (textView2 != null) {
                            i = R.id.tv_shop_name;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_shop_name);
                            if (textView3 != null) {
                                i = R.id.tv_sum;
                                TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_sum);
                                if (textView4 != null) {
                                    return new ItemQueueChequeBinding((ConstraintLayout) view, imageView, imageView2, imageView3, textView, textView2, textView3, textView4);
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

    public static ItemQueueChequeBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_queue_cheque, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static ItemQueueChequeBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
