package com.warefly.checkscan.core.ui.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.R;
import defpackage.o2;
import eightbitlab.com.blurview.BlurView;

/* JADX INFO: loaded from: classes5.dex */
public final class LayoutBlurCloseBinding implements ViewBinding {
    public final BlurView blurView;
    private final BlurView rootView;

    private LayoutBlurCloseBinding(BlurView blurView, BlurView blurView2) {
        this.rootView = blurView;
        this.blurView = blurView2;
    }

    public static LayoutBlurCloseBinding bind(View view) {
        if (view != null) {
            BlurView blurView = (BlurView) view;
            return new LayoutBlurCloseBinding(blurView, blurView);
        }
        o2.d("rootView");
        return null;
    }

    public static LayoutBlurCloseBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.layout_blur_close, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public BlurView getRoot() {
        return this.rootView;
    }

    public static LayoutBlurCloseBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
