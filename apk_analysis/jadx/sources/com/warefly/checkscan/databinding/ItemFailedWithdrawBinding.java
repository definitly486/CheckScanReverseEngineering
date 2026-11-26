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
public final class ItemFailedWithdrawBinding implements ViewBinding {
    public final TextView btnSendAgainWithdraw;
    public final ImageView image;
    private final ConstraintLayout rootView;
    public final TextView tvDescriptionFailed;
    public final TextView tvSumFailed;

    private ItemFailedWithdrawBinding(ConstraintLayout constraintLayout, TextView textView, ImageView imageView, TextView textView2, TextView textView3) {
        this.rootView = constraintLayout;
        this.btnSendAgainWithdraw = textView;
        this.image = imageView;
        this.tvDescriptionFailed = textView2;
        this.tvSumFailed = textView3;
    }

    public static ItemFailedWithdrawBinding bind(View view) {
        int i = R.id.btn_send_again_withdraw;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btn_send_again_withdraw);
        if (textView != null) {
            i = R.id.image;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.image);
            if (imageView != null) {
                i = R.id.tv_description_failed;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_description_failed);
                if (textView2 != null) {
                    i = R.id.tv_sum_failed;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_sum_failed);
                    if (textView3 != null) {
                        return new ItemFailedWithdrawBinding((ConstraintLayout) view, textView, imageView, textView2, textView3);
                    }
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static ItemFailedWithdrawBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_failed_withdraw, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static ItemFailedWithdrawBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
