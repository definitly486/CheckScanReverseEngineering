package com.warefly.checkscan.subscriptionLanding.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemLandingTermBinding implements ViewBinding {
    private final TextView rootView;
    public final TextView tvTerm1;

    private ItemLandingTermBinding(TextView textView, TextView textView2) {
        this.rootView = textView;
        this.tvTerm1 = textView2;
    }

    public static ItemLandingTermBinding bind(View view) {
        if (view != null) {
            TextView textView = (TextView) view;
            return new ItemLandingTermBinding(textView, textView);
        }
        o2.d("rootView");
        return null;
    }

    public static ItemLandingTermBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_landing_term, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public TextView getRoot() {
        return this.rootView;
    }

    public static ItemLandingTermBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
