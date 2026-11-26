package com.warefly.checkscan.bonuses.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemRvNoLoaderBinding implements ViewBinding {
    private final View rootView;

    private ItemRvNoLoaderBinding(View view) {
        this.rootView = view;
    }

    public static ItemRvNoLoaderBinding bind(View view) {
        if (view != null) {
            return new ItemRvNoLoaderBinding(view);
        }
        o2.d("rootView");
        return null;
    }

    public static ItemRvNoLoaderBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_rv_no_loader, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public View getRoot() {
        return this.rootView;
    }

    public static ItemRvNoLoaderBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
