package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemRvSbpTransferPrivacyPolicyBinding implements ViewBinding {
    private final TextView rootView;
    public final TextView tvPrivacyPolicy;

    private ItemRvSbpTransferPrivacyPolicyBinding(TextView textView, TextView textView2) {
        this.rootView = textView;
        this.tvPrivacyPolicy = textView2;
    }

    public static ItemRvSbpTransferPrivacyPolicyBinding bind(View view) {
        if (view != null) {
            TextView textView = (TextView) view;
            return new ItemRvSbpTransferPrivacyPolicyBinding(textView, textView);
        }
        o2.d("rootView");
        return null;
    }

    public static ItemRvSbpTransferPrivacyPolicyBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_rv_sbp_transfer_privacy_policy, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public TextView getRoot() {
        return this.rootView;
    }

    public static ItemRvSbpTransferPrivacyPolicyBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
