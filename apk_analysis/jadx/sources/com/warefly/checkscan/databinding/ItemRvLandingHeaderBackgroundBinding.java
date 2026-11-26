package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemRvLandingHeaderBackgroundBinding implements ViewBinding {
    private final View rootView;
    public final View vBackground;

    private ItemRvLandingHeaderBackgroundBinding(View view, View view2) {
        this.rootView = view;
        this.vBackground = view2;
    }

    public static ItemRvLandingHeaderBackgroundBinding bind(View view) {
        if (view != null) {
            return new ItemRvLandingHeaderBackgroundBinding(view, view);
        }
        o2.d("rootView");
        return null;
    }

    public static ItemRvLandingHeaderBackgroundBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_rv_landing_header_background, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public View getRoot() {
        return this.rootView;
    }

    public static ItemRvLandingHeaderBackgroundBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
