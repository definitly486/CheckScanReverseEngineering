package com.warefly.checkscan.offerLanding.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class OfferTryAgainBinding implements ViewBinding {
    public final TextView btnTryAgain;
    private final ConstraintLayout rootView;
    public final TextView tvMessage;

    private OfferTryAgainBinding(ConstraintLayout constraintLayout, TextView textView, TextView textView2) {
        this.rootView = constraintLayout;
        this.btnTryAgain = textView;
        this.tvMessage = textView2;
    }

    public static OfferTryAgainBinding bind(View view) {
        int i = R.id.btn_try_again;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btn_try_again);
        if (textView != null) {
            i = R.id.tv_message;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_message);
            if (textView2 != null) {
                return new OfferTryAgainBinding((ConstraintLayout) view, textView, textView2);
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static OfferTryAgainBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.offer_try_again, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static OfferTryAgainBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
