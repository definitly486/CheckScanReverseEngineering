package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.progressindicator.CircularProgressIndicator;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class LoadingSpinnerBinding implements ViewBinding {
    public final CircularProgressIndicator pbLoading;
    private final ConstraintLayout rootView;

    private LoadingSpinnerBinding(ConstraintLayout constraintLayout, CircularProgressIndicator circularProgressIndicator) {
        this.rootView = constraintLayout;
        this.pbLoading = circularProgressIndicator;
    }

    public static LoadingSpinnerBinding bind(View view) {
        CircularProgressIndicator circularProgressIndicator = (CircularProgressIndicator) ViewBindings.findChildViewById(view, R.id.pb_loading);
        if (circularProgressIndicator != null) {
            return new LoadingSpinnerBinding((ConstraintLayout) view, circularProgressIndicator);
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.pb_loading)));
        return null;
    }

    public static LoadingSpinnerBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.loading_spinner, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static LoadingSpinnerBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
