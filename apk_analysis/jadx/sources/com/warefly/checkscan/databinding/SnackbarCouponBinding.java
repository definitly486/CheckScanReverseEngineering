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
public final class SnackbarCouponBinding implements ViewBinding {
    private final FrameLayout rootView;
    public final TextView tvMessage;

    private SnackbarCouponBinding(FrameLayout frameLayout, TextView textView) {
        this.rootView = frameLayout;
        this.tvMessage = textView;
    }

    public static SnackbarCouponBinding bind(View view) {
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_message);
        if (textView != null) {
            return new SnackbarCouponBinding((FrameLayout) view, textView);
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.tv_message)));
        return null;
    }

    public static SnackbarCouponBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.snackbar_coupon, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public FrameLayout getRoot() {
        return this.rootView;
    }

    public static SnackbarCouponBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
