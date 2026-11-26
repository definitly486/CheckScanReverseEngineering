package com.warefly.checkscan.subscriptionLanding.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemLandingButtonBinding implements ViewBinding {
    public final TextView btnAction;
    private final TextView rootView;

    private ItemLandingButtonBinding(TextView textView, TextView textView2) {
        this.rootView = textView;
        this.btnAction = textView2;
    }

    public static ItemLandingButtonBinding bind(View view) {
        if (view != null) {
            TextView textView = (TextView) view;
            return new ItemLandingButtonBinding(textView, textView);
        }
        o2.d("rootView");
        return null;
    }

    public static ItemLandingButtonBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_landing_button, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public TextView getRoot() {
        return this.rootView;
    }

    public static ItemLandingButtonBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
