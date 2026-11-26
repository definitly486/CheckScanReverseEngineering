package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemChipButtonBinding implements ViewBinding {
    private final TextView rootView;
    public final TextView tvChip;

    private ItemChipButtonBinding(TextView textView, TextView textView2) {
        this.rootView = textView;
        this.tvChip = textView2;
    }

    public static ItemChipButtonBinding bind(View view) {
        if (view != null) {
            TextView textView = (TextView) view;
            return new ItemChipButtonBinding(textView, textView);
        }
        o2.d("rootView");
        return null;
    }

    public static ItemChipButtonBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_chip_button, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public TextView getRoot() {
        return this.rootView;
    }

    public static ItemChipButtonBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
