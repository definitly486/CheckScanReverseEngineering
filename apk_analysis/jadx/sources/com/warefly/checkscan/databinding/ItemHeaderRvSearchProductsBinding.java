package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemHeaderRvSearchProductsBinding implements ViewBinding {
    private final TextView rootView;
    public final TextView tvHeader;

    private ItemHeaderRvSearchProductsBinding(TextView textView, TextView textView2) {
        this.rootView = textView;
        this.tvHeader = textView2;
    }

    public static ItemHeaderRvSearchProductsBinding bind(View view) {
        if (view != null) {
            TextView textView = (TextView) view;
            return new ItemHeaderRvSearchProductsBinding(textView, textView);
        }
        o2.d("rootView");
        return null;
    }

    public static ItemHeaderRvSearchProductsBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_header_rv_search_products, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public TextView getRoot() {
        return this.rootView;
    }

    public static ItemHeaderRvSearchProductsBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
