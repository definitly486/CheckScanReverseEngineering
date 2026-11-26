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
public final class ItemRvBankTextsBinding implements ViewBinding {
    private final LinearLayout rootView;
    public final RecyclerView rvTexts;
    public final TextView tvTitle;

    private ItemRvBankTextsBinding(LinearLayout linearLayout, RecyclerView recyclerView, TextView textView) {
        this.rootView = linearLayout;
        this.rvTexts = recyclerView;
        this.tvTitle = textView;
    }

    public static ItemRvBankTextsBinding bind(View view) {
        int i = R.id.rv_texts;
        RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rv_texts);
        if (recyclerView != null) {
            i = R.id.tv_title;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
            if (textView != null) {
                return new ItemRvBankTextsBinding((LinearLayout) view, recyclerView, textView);
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static ItemRvBankTextsBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_rv_bank_texts, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static ItemRvBankTextsBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
