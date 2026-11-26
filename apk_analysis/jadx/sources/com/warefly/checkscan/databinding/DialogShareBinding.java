package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class DialogShareBinding implements ViewBinding {
    public final ProgressBar pbLoading;
    private final ConstraintLayout rootView;
    public final RecyclerView rvOptions;
    public final TextView tvTitle;

    private DialogShareBinding(ConstraintLayout constraintLayout, ProgressBar progressBar, RecyclerView recyclerView, TextView textView) {
        this.rootView = constraintLayout;
        this.pbLoading = progressBar;
        this.rvOptions = recyclerView;
        this.tvTitle = textView;
    }

    public static DialogShareBinding bind(View view) {
        int i = R.id.pb_loading;
        ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, R.id.pb_loading);
        if (progressBar != null) {
            i = R.id.rv_options;
            RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rv_options);
            if (recyclerView != null) {
                i = R.id.tv_title;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                if (textView != null) {
                    return new DialogShareBinding((ConstraintLayout) view, progressBar, recyclerView, textView);
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static DialogShareBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_share, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static DialogShareBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
