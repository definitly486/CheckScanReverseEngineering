package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemLandingButtonWithBackgroundBinding implements ViewBinding {
    public final TextView btnRegistration;
    private final FrameLayout rootView;

    private ItemLandingButtonWithBackgroundBinding(FrameLayout frameLayout, TextView textView) {
        this.rootView = frameLayout;
        this.btnRegistration = textView;
    }

    public static ItemLandingButtonWithBackgroundBinding bind(View view) {
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btn_registration);
        if (textView != null) {
            return new ItemLandingButtonWithBackgroundBinding((FrameLayout) view, textView);
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.btn_registration)));
        return null;
    }

    public static ItemLandingButtonWithBackgroundBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_landing_button_with_background, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public FrameLayout getRoot() {
        return this.rootView;
    }

    public static ItemLandingButtonWithBackgroundBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
