package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemWithdrawalTitleBinding implements ViewBinding {
    private final TextView rootView;
    public final TextView tvTitle;

    private ItemWithdrawalTitleBinding(TextView textView, TextView textView2) {
        this.rootView = textView;
        this.tvTitle = textView2;
    }

    public static ItemWithdrawalTitleBinding bind(View view) {
        if (view != null) {
            TextView textView = (TextView) view;
            return new ItemWithdrawalTitleBinding(textView, textView);
        }
        o2.d("rootView");
        return null;
    }

    public static ItemWithdrawalTitleBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_withdrawal_title, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public TextView getRoot() {
        return this.rootView;
    }

    public static ItemWithdrawalTitleBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
