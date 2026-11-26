package com.warefly.checkscan.scannerml.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemChequeWithCountBinding implements ViewBinding {
    private final FrameLayout rootView;
    public final TextView tvCount;
    public final AppCompatTextView tvTitle;

    private ItemChequeWithCountBinding(FrameLayout frameLayout, TextView textView, AppCompatTextView appCompatTextView) {
        this.rootView = frameLayout;
        this.tvCount = textView;
        this.tvTitle = appCompatTextView;
    }

    public static ItemChequeWithCountBinding bind(View view) {
        int i = R.id.tv_count;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_count);
        if (textView != null) {
            i = R.id.tv_title;
            AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, R.id.tv_title);
            if (appCompatTextView != null) {
                return new ItemChequeWithCountBinding((FrameLayout) view, textView, appCompatTextView);
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static ItemChequeWithCountBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_cheque_with_count, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public FrameLayout getRoot() {
        return this.rootView;
    }

    public static ItemChequeWithCountBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
