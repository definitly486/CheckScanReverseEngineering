package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemAdmitadGetCashbackDescriptionBinding implements ViewBinding {
    private final ConstraintLayout rootView;
    public final RecyclerView rvSteps;
    public final TextView tvAdmitadGetCashbackTitle;

    private ItemAdmitadGetCashbackDescriptionBinding(ConstraintLayout constraintLayout, RecyclerView recyclerView, TextView textView) {
        this.rootView = constraintLayout;
        this.rvSteps = recyclerView;
        this.tvAdmitadGetCashbackTitle = textView;
    }

    public static ItemAdmitadGetCashbackDescriptionBinding bind(View view) {
        int i = R.id.rv_steps;
        RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rv_steps);
        if (recyclerView != null) {
            i = R.id.tv_admitad_get_cashback_title;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_admitad_get_cashback_title);
            if (textView != null) {
                return new ItemAdmitadGetCashbackDescriptionBinding((ConstraintLayout) view, recyclerView, textView);
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static ItemAdmitadGetCashbackDescriptionBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_admitad_get_cashback_description, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static ItemAdmitadGetCashbackDescriptionBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
