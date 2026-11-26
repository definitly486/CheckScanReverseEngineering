package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.constraintlayout.helper.widget.Flow;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemWithdrawalBalanceBlockBinding implements ViewBinding {
    public final TextView btnTransferCard;
    public final Flow flowHelper;
    private final ConstraintLayout rootView;
    public final TextView tvBalance;
    public final TextView tvPendingSum;

    private ItemWithdrawalBalanceBlockBinding(ConstraintLayout constraintLayout, TextView textView, Flow flow, TextView textView2, TextView textView3) {
        this.rootView = constraintLayout;
        this.btnTransferCard = textView;
        this.flowHelper = flow;
        this.tvBalance = textView2;
        this.tvPendingSum = textView3;
    }

    public static ItemWithdrawalBalanceBlockBinding bind(View view) {
        int i = R.id.btn_transfer_card;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btn_transfer_card);
        if (textView != null) {
            i = R.id.flow_helper;
            Flow flow = (Flow) ViewBindings.findChildViewById(view, R.id.flow_helper);
            if (flow != null) {
                i = R.id.tv_balance;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_balance);
                if (textView2 != null) {
                    i = R.id.tv_pending_sum;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_pending_sum);
                    if (textView3 != null) {
                        return new ItemWithdrawalBalanceBlockBinding((ConstraintLayout) view, textView, flow, textView2, textView3);
                    }
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static ItemWithdrawalBalanceBlockBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_withdrawal_balance_block, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static ItemWithdrawalBalanceBlockBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
