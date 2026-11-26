package com.warefly.checkscan.bankLanding.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes.dex */
public final class ItemRvBankStepsBinding implements ViewBinding {
    private final LinearLayout rootView;
    public final RecyclerView rvSteps;
    public final TextView tvDescription;
    public final TextView tvTitle;

    private ItemRvBankStepsBinding(LinearLayout linearLayout, RecyclerView recyclerView, TextView textView, TextView textView2) {
        this.rootView = linearLayout;
        this.rvSteps = recyclerView;
        this.tvDescription = textView;
        this.tvTitle = textView2;
    }

    public static ItemRvBankStepsBinding bind(View view) {
        int i = R.id.rv_steps;
        RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rv_steps);
        if (recyclerView != null) {
            i = R.id.tv_description;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_description);
            if (textView != null) {
                i = R.id.tv_title;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                if (textView2 != null) {
                    return new ItemRvBankStepsBinding((LinearLayout) view, recyclerView, textView, textView2);
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static ItemRvBankStepsBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_rv_bank_steps, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static ItemRvBankStepsBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
