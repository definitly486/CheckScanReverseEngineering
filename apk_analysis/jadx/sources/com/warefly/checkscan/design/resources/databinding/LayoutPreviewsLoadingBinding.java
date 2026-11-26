package com.warefly.checkscan.design.resources.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class LayoutPreviewsLoadingBinding implements ViewBinding {
    private final FrameLayout rootView;

    private LayoutPreviewsLoadingBinding(FrameLayout frameLayout) {
        this.rootView = frameLayout;
    }

    public static LayoutPreviewsLoadingBinding bind(View view) {
        if (view != null) {
            return new LayoutPreviewsLoadingBinding((FrameLayout) view);
        }
        o2.d("rootView");
        return null;
    }

    public static LayoutPreviewsLoadingBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.layout_previews_loading, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public FrameLayout getRoot() {
        return this.rootView;
    }

    public static LayoutPreviewsLoadingBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
