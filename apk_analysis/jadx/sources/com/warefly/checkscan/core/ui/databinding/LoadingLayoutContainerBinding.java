package com.warefly.checkscan.core.ui.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.progressindicator.CircularProgressIndicator;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class LoadingLayoutContainerBinding implements ViewBinding {
    public final FrameLayout container;
    public final CircularProgressIndicator pbLoading;
    private final ConstraintLayout rootView;

    private LoadingLayoutContainerBinding(ConstraintLayout constraintLayout, FrameLayout frameLayout, CircularProgressIndicator circularProgressIndicator) {
        this.rootView = constraintLayout;
        this.container = frameLayout;
        this.pbLoading = circularProgressIndicator;
    }

    public static LoadingLayoutContainerBinding bind(View view) {
        int i = R.id.container;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.container);
        if (frameLayout != null) {
            i = R.id.pb_loading;
            CircularProgressIndicator circularProgressIndicator = (CircularProgressIndicator) ViewBindings.findChildViewById(view, R.id.pb_loading);
            if (circularProgressIndicator != null) {
                return new LoadingLayoutContainerBinding((ConstraintLayout) view, frameLayout, circularProgressIndicator);
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static LoadingLayoutContainerBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.loading_layout_container, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static LoadingLayoutContainerBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
