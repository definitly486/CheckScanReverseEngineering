package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.cardview.widget.CardView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class LayoutWithdrawalLimitIncreaseMethodBinding implements ViewBinding {
    private final CardView rootView;
    public final TextView tvMethodDescription;
    public final TextView tvMethodMake;
    public final TextView tvMethodTitle;

    private LayoutWithdrawalLimitIncreaseMethodBinding(CardView cardView, TextView textView, TextView textView2, TextView textView3) {
        this.rootView = cardView;
        this.tvMethodDescription = textView;
        this.tvMethodMake = textView2;
        this.tvMethodTitle = textView3;
    }

    public static LayoutWithdrawalLimitIncreaseMethodBinding bind(View view) {
        int i = R.id.tv_method_description;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_method_description);
        if (textView != null) {
            i = R.id.tv_method_make;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_method_make);
            if (textView2 != null) {
                i = R.id.tv_method_title;
                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_method_title);
                if (textView3 != null) {
                    return new LayoutWithdrawalLimitIncreaseMethodBinding((CardView) view, textView, textView2, textView3);
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static LayoutWithdrawalLimitIncreaseMethodBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.layout_withdrawal_limit_increase_method, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public CardView getRoot() {
        return this.rootView;
    }

    public static LayoutWithdrawalLimitIncreaseMethodBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
