package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class PlaceholderProductsOfPlaceBinding implements ViewBinding {
    private final LinearLayout rootView;

    private PlaceholderProductsOfPlaceBinding(LinearLayout linearLayout) {
        this.rootView = linearLayout;
    }

    public static PlaceholderProductsOfPlaceBinding bind(View view) {
        if (view != null) {
            return new PlaceholderProductsOfPlaceBinding((LinearLayout) view);
        }
        o2.d("rootView");
        return null;
    }

    public static PlaceholderProductsOfPlaceBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.placeholder_products_of_place, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static PlaceholderProductsOfPlaceBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
