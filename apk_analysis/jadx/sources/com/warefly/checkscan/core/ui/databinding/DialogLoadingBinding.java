package com.warefly.checkscan.core.ui.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes.dex */
public final class DialogLoadingBinding implements ViewBinding {
    public final FrameLayout container;
    private final FrameLayout rootView;
    public final TextView tvLoading;

    private DialogLoadingBinding(FrameLayout frameLayout, FrameLayout frameLayout2, TextView textView) {
        this.rootView = frameLayout;
        this.container = frameLayout2;
        this.tvLoading = textView;
    }

    public static DialogLoadingBinding bind(View view) {
        FrameLayout frameLayout = (FrameLayout) view;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_loading);
        if (textView != null) {
            return new DialogLoadingBinding(frameLayout, frameLayout, textView);
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.tv_loading)));
        return null;
    }

    public static DialogLoadingBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_loading, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public FrameLayout getRoot() {
        return this.rootView;
    }

    public static DialogLoadingBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
