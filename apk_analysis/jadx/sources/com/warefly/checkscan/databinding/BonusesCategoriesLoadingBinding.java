package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class BonusesCategoriesLoadingBinding implements ViewBinding {
    private final FrameLayout rootView;

    private BonusesCategoriesLoadingBinding(FrameLayout frameLayout) {
        this.rootView = frameLayout;
    }

    public static BonusesCategoriesLoadingBinding bind(View view) {
        if (view != null) {
            return new BonusesCategoriesLoadingBinding((FrameLayout) view);
        }
        o2.d("rootView");
        return null;
    }

    public static BonusesCategoriesLoadingBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.bonuses_categories_loading, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public FrameLayout getRoot() {
        return this.rootView;
    }

    public static BonusesCategoriesLoadingBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
