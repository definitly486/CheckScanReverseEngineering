package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.Barrier;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class LayoutActualCardCashbackBinding implements ViewBinding {
    public final Barrier barrier;
    public final TextView btnWithdrawActualCashback;
    public final ImageView ivCardActualCashback;
    private final ConstraintLayout rootView;
    public final TextView tvCardActualCashbackDescription;
    public final TextView tvCardActualCashbackTitle;

    private LayoutActualCardCashbackBinding(ConstraintLayout constraintLayout, Barrier barrier, TextView textView, ImageView imageView, TextView textView2, TextView textView3) {
        this.rootView = constraintLayout;
        this.barrier = barrier;
        this.btnWithdrawActualCashback = textView;
        this.ivCardActualCashback = imageView;
        this.tvCardActualCashbackDescription = textView2;
        this.tvCardActualCashbackTitle = textView3;
    }

    public static LayoutActualCardCashbackBinding bind(View view) {
        int i = R.id.barrier;
        Barrier barrier = (Barrier) ViewBindings.findChildViewById(view, R.id.barrier);
        if (barrier != null) {
            i = R.id.btn_withdraw_actual_cashback;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btn_withdraw_actual_cashback);
            if (textView != null) {
                i = R.id.iv_card_actual_cashback;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_card_actual_cashback);
                if (imageView != null) {
                    i = R.id.tv_card_actual_cashback_description;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_card_actual_cashback_description);
                    if (textView2 != null) {
                        i = R.id.tv_card_actual_cashback_title;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_card_actual_cashback_title);
                        if (textView3 != null) {
                            return new LayoutActualCardCashbackBinding((ConstraintLayout) view, barrier, textView, imageView, textView2, textView3);
                        }
                    }
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static LayoutActualCardCashbackBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.layout_actual_card_cashback, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static LayoutActualCardCashbackBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
