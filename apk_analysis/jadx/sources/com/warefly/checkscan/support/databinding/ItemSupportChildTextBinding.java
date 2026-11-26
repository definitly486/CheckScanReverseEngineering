package com.warefly.checkscan.support.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemSupportChildTextBinding implements ViewBinding {
    private final TextView rootView;
    public final TextView tvText;

    private ItemSupportChildTextBinding(TextView textView, TextView textView2) {
        this.rootView = textView;
        this.tvText = textView2;
    }

    public static ItemSupportChildTextBinding bind(View view) {
        if (view != null) {
            TextView textView = (TextView) view;
            return new ItemSupportChildTextBinding(textView, textView);
        }
        o2.d("rootView");
        return null;
    }

    public static ItemSupportChildTextBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_support_child_text, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public TextView getRoot() {
        return this.rootView;
    }

    public static ItemSupportChildTextBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
